<?php
namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use GuzzleHttp\Client;
use App\Models\Employee;
use App\Models\PsiViewCustimizeModel;

class SyncLanguageController extends Controller
{

    const EXPLODE_VALUE = '*:::*';

    public function __construct(Client $httpClient)
    {
        $this->httpClient = $httpClient;
    }

    public function translate(Request $request)
    {
        $data_transalted = [];
        $client = new Client();
        $string_to_transalte = $this->sum_string();

        $results = $client->request('GET', 'https://translate.googleapis.com/translate_a/single', [
            'headers' => [
                'Cache-Control' => 'no-cache',
                'Content-Type' => 'application/json'
            ],
            'curl' => [
                CURLOPT_RETURNTRANSFER => true
            ],
            'query' => [
                'client' => 'gtx',
                'sl' => 'en',
                'tl' => 'ja',
                'dt' => 't',
                'q' => "$string_to_transalte"
            ]

        ]);
        $response = json_decode($results->getBody(), true);
        foreach ($response[0] as $row_main) {
            $translated_lang = explode(self::EXPLODE_VALUE, str_replace([
                '* ::: *',
                '* :: '
            ], [
                '*:::*',
                ''
            ], $row_main[0]));
            $translation = explode(self::EXPLODE_VALUE, $row_main[1]);

            foreach ($translation as $key => $row) {

                $data_transalted[] = [

                    str_replace('*::', '', $row) => isset($translated_lang[$key]) ? $translated_lang[$key] : ''
                ];
            }
        }

        \Storage::disk('local')->put('test.log', json_encode($data_transalted));
        return $data_transalted;
    }

    public function sync_col()
    {
        PsiViewCustimizeModel::where([
            'type' => 'employee'
        ])->delete();
        $columns = Employee::all()->first()->columns([
            'id',
            // 'company_id',
            'created_at',
            'updated_at'
        ]);
        $insert_data = [];
        foreach ($columns as $row) {
            $insert_data[] = [
                'type' => 'employee',
                'field_name' => $row,
                'status' => 'y',
                'created_by' => 4

            ];
        }
        PsiViewCustimizeModel::insert($insert_data);
        return 'Done';
    }

    private function sum_string()
    {
        $lng_pck = $this->get_all_language();
        return implode($lng_pck, self::EXPLODE_VALUE);
    }

    private function get_all_language()
    {
        return Config('localLanguage');
    }
}
