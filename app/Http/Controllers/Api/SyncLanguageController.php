<?php
namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use GuzzleHttp\Client;

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
        $translated_lang = explode(self::EXPLODE_VALUE, str_replace('* ::: *', '*:::*', $response[0][0][0]));
        $translation = explode(self::EXPLODE_VALUE, $response[0][0][1]);
        foreach ($translation as $key => $row) {
            $data_transalted[] = [
                $row => $translated_lang[$key]
            ];
        }
        return $data_transalted;
    }

    private function sum_string()
    {
        $lng_pck = $this->get_all_language();
        return implode($lng_pck, self::EXPLODE_VALUE);
    }

    private function get_all_language()
    {
        return [
            'test',
            'test',
            'best',
            'my'
        ];
    }
}
