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
Use App\Models\Raw;

class ViberBitIntegration extends Controller
{

    private $sender_name;

    public function handleViberRequest(Request $request)
    {
        $data = [];
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
                if ($commands->count() > 0) {
                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => $text_received,
                        'ans' => $text_received
                    ]);
                    $message_to_reply = $commands->execute_en . '(' . $commands->execute_ja . ')';
                    ;
                }
            } elseif (strlen($text_received) == 11 && $lastest_call->ask == 'register') {

                // check number to db
                $employee_data = $this->get_employee_verify($text_received, 'cell_no');

                if ($employee_data->count() > 0) {
                    $commands = PsiViberCommand::where('command', 'mobile_number')->first();
                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => 'mobile_number',
                        'ans' => $text_received
                    ]);
                    $message_to_reply = $commands->execute_en . '(' . $commands->execute_ja . ')';
                    ;
                } else {
                    $message_to_reply = 'invalid data entered';
                }
            } elseif (strlen($text_received) == 8 && $lastest_call->ask == 'mobile_number') {
                $last_sender_details = $this->get_latest_story($sender_id);

                $next_ans = ($last_sender_details->ans) ?? $last_sender_details->ans;
                $employee_data = $this->get_employee_verify($text_received, 'birthdate', $next_ans);

                if ($employee_data->count() > 0) {
                    $employee_data_ref = $employee_data->first();
                    $commands = PsiViberCommand::where('command', 'registration_complete')->first();
                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => 'registration_complete',
                        'ans' => $text_received
                    ]);
                    $message_to_reply = $commands->execute_en . '(' . $commands->execute_ja . ')';
                    list ($normal_password, $hash_pass) = explode('~~', $this->generatePassword());
                    $store_log = $this->store_logins($next_ans, $hash_pass, $sender_id);

                    if (! $store_log)
                        $message_to_reply = 'Username and password has already been sent(ユーザー名とパスワードは既に送信されています)';
                    else
                        $message_to_reply .= "username={$next_ans} and password={$normal_password}";
                } else {
                    $message_to_reply = 'invalid data entered';
                }
            } elseif ($lastest_call->ask == 'registration_complete' && $text_received == 'register') {
                $message_to_reply = 'already registered';
            } elseif ($lastest_call->ask == 'mobile_number' && $text_received == 'register') {
                $commands = PsiViberStory::where('ask', 'register')->latest()->count();

                if ($commands > 0) {
                    $commands = PsiViberCommand::where('command', 'mobile_number')->first();

                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => 'mobile_number',
                        'ans' => $text_received
                    ]);
                    $message_to_reply = $commands->execute_en;
                }
            }
            if ($text_received == 'hi') {
                $message_to_reply = 'hello ' . $sender_name;
            } elseif ($text_received == 'history') {
                $message_to_reply = $this->get_employee_info($sender_id);
            } elseif ($text_received == 'show my pic') {
                $message_to_reply = $sender_img;
            } elseif ($text_received == 'menu') {
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

    function send_viber(Request $request)
    {
        $data = [];
        $access_token = env('VIBER_ACCESS_TOKEN', false);
        $data['auth_token'] = $access_token;
        $data['receiver'] = $request->sender_id;
        $data['type'] = "text";
        $data['text'] = $request->message;

        return $this->postToViberServer($data);
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
        return $response->getBody()->getContents();
    }

    private function store_story($data)
    {
        $story_obj = new PsiViberStory();
        $story_obj->sender_id = $data['sender_id'];
        $story_obj->ask = $data['text_received'];
        $story_obj->ans = $data['ans'];
        $story_obj->save();
    }

    public function send_to_viber(Request $request){
        $sender_type = $request->sender_type;
        $sender_id = $request->sender_identity;
        $sender_message = $request->sender_message;
        $viber_details = PsiViberStory::where('ans', $sender_id)->first();

        if ($viber_details) {
            $sender_id = $viber_details->sender_id;

            if (! empty($sender_id)) {
                $request->request->add([
                    'sender_id' => $sender_id,
                    'message' => $sender_message
                ]);
                $response = $this->send_viber($request);
                return response()->json(json_decode($response, true));
            }
        } else
            return response()->json([
                'status' => 500,
                'msg' => 'error sending msg'
            ]);
    }

    private function get_latest_story($sender_id)
    {
        return PsiViberStory::where('sender_id', $sender_id)->latest()->first();
    }

    private function get_employee_verify($mobile, $field, $extra = false)
    {
        $ref = Employee::where(DB::raw("replace($field,'-','')"), '=', $mobile);
        if (! empty($extra)) {
            $ref = $ref->where(DB::raw("replace(cell_no,'-','')"), '=', $extra);
        }
        return $ref;
    }

    private function get_employee_info($sender_id)
    {
        $response = '';
        $results = Raw::get_user_info($sender_id);
        foreach ($results as $key => $row) {
            $response .= $key . '=' . $row . PHP_EOL;
        }
        return $response;
    }

    private function generatePassword()
    {
        $password = str_random(8);
        $hashed_random_password = Hash::make($password);
        return $password . '~~' . $hashed_random_password;
    }

    private function store_logins($username, $password, $sender_id)
    {
        file_put_contents('test1.log', $username . ':' . $password . ':' . $sender_id);
        try {
            $obj_add = EmployeeLogin::updateOrCreate([
                'psi_number' => $username,
                'password' => $password,
                'viber_id' => $sender_id
            ]);
            return $obj_add;
        } catch (\Exception $e) {
            return false; // $e->getMessage();
        }
    }
}
