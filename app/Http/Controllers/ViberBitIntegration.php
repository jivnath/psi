<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use App\Models\PsiViberCommand;
use App\Models\PsiViberStory;
use App\Models\Employee;
use DB;
use Illuminate\Support\Facades\Hash;
use App\Models\EmployeeLogin;


class ViberBitIntegration extends Controller
{

    private $sender_name;

    public function handleViberRequest(Request $request)
    {
        $data=[];
        $message_to_reply = 'Wrong command';
        $access_token = env('VIBER_ACCESS_TOKEN', false);
        $request_data = $request->getContent();
        $input = json_decode($request_data, true);
        if ($input['event'] == 'webhooks') {
            $webhook_response = [
                'status' => 0,
                'status_message' => 'ok',
                'event_types' => 'delivered'
            ];
            echo json_encode($webhook_response);
            exit();
        } elseif ($input['event'] == 'message') {
            $text_received = $input['message']['text'];
            $sender_id = $input['sender']['id'];
            $sender_name = $input['sender']['name'];
            $sender_img = $input['sender']['avatar'];

            // $this->store_story();

            $lastest_call = $this->get_latest_story($sender_id);


            if ($lastest_call == null || (isset($lastest_call->ask) && $lastest_call->ask == $text_received)) {
                $commands = PsiViberCommand::where('command', $text_received)->first();
                if ($commands->count()>0) {
                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => $text_received,
                        'ans'=>$text_received
                    ]);
                    $message_to_reply = $commands->execute_en;
                }
            } elseif (strlen($text_received) == 11 && $lastest_call->ask == 'register') {

                // check number to db
                $employee_data = $this->get_employee_verify($text_received, 'cell_no');

                if ($employee_data->count() > 0) {
                    $commands = PsiViberCommand::where('command', 'mobile_number')->first();
                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => 'mobile_number',
                        'ans'=>$text_received
                    ]);
                    $message_to_reply = $commands->execute_en;
                }
                else{
                    $message_to_reply='invalid data entered';
                }
            } elseif (strlen($text_received) == 8 && $lastest_call->ask == 'mobile_number') {
                $last_sender_details=$this->get_latest_story($sender_id);

                $next_ans=($last_sender_details->ans)??$last_sender_details->ans;
                $employee_data = $this->get_employee_verify($text_received, 'birthdate',$next_ans);


                if ($employee_data->count() > 0) {
                    $employee_data_ref=$employee_data->first();
                    $commands = PsiViberCommand::where('command', 'registration_complete')->first();
                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => 'registration_complete',
                        'ans'=>$text_received
                    ]);
                    $message_to_reply = $commands->execute_en;
                    list($normal_password,$hash_pass)=explode('~~',$this->generatePassword());
                    $this->store_logins($next_ans,$hash_pass);
                    $message_to_reply .= "username={$next_ans} and password={$normal_password}";
                }
                else{
                    $message_to_reply='invalid data entered';
                }
            }
            elseif($lastest_call->ask=='registration_complete' && $text_received=='register'){
                $message_to_reply ='already registered';
            }
            elseif($lastest_call->ask=='mobile_number' && $text_received=='register'){
                $commands = PsiViberStory::where('ask', 'register')->latest()->count();

                if($commands>0){
                    $commands = PsiViberCommand::where('command', 'mobile_number')->first();

                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => 'mobile_number',
                        'ans'=>$text_received
                    ]);
                    $message_to_reply = $commands->execute_en;
                }


            }
            if ($text_received == 'hi') {
                $message_to_reply = 'hello ' . $sender_name;
            }
            elseif($text_received=='show my pic'){
                $message_to_reply =$sender_img;
            }
            elseif ($text_received == 'menu') {
                $message_to_reply = 'select one of the options below';
                $data['keyboard'] = '';
            }
            $data['auth_token'] = $access_token;
            $data['receiver'] = $sender_id;
            $data['type'] = "text";
            $data['text'] = $message_to_reply;

            $this->postToViberServer($data);
        }
    }

    function keyboardTemplate()
    {
        $keyboard_array = [
            'Type' => 'keyboard',
            'DefaultHeight' => true,
            'BgColor' => '#FFFF'
        ];
        $keyboard['keyboard'] = $keyboard_array;

        $temp = [
            'ActionType' => "reply",
            'ActionBody' => 'reply to me',
            'reply to me' => 'Key text',
            'TextSize' => "regular"
        ];
        $keyboard['keyboard']['Buttons'][] = $temp;
        return $keyboard;
    }

    private function postToViberServer($data)
    {
        $jsonData = json_encode($data);
        $client = new Client([
            'headers' => [
                'Content-Type' => 'application/json'
            ]
        ]);

        $response = $client->post('https://chatapi.viber.com/pa/send_message', [
            'body' => $jsonData
        ]);
        echo '<pre>' . var_export($response->getStatusCode(), true) . '</pre>';
        echo '<pre>' . var_export($response->getBody()->getContents(), true) . '</pre>';
    }

    private function store_story($data)
    {

        $story_obj = new PsiViberStory();
        $story_obj->sender_id = $data['sender_id'];
        $story_obj->ask = $data['text_received'];
        $story_obj->ans = $data['ans'];
        $story_obj->save();
    }

    private function get_latest_story($sender_id)
    {
        return PsiViberStory::where('sender_id', $sender_id)->latest()->first();
    }
    private function get_employee_verify($mobile, $field,$extra=false)
    {
        $ref= Employee::where(DB::raw("replace($field,'-','')"),'=',$mobile);
        if(!empty($extra)){
            $ref=$ref->where(DB::raw("replace(cell_no,'-','')"),'=',$extra);
        }
        return $ref;
    }
    private function generatePassword(){
        $password=str_random(8);
        $hashed_random_password = Hash::make($password);
        return $password.'~~'.$hashed_random_password;

    }
    private function store_logins($username,$password){
        $obj_add=new EmployeeLogin();
        $obj_add->psi_number=$username;
        $obj_add->password=$password;
        $obj_add->save();
    }
}
