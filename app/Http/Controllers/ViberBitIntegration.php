<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use App\Models\PsiViberCommand;
use App\Models\PsiViberStory;
use App\Models\Employee;

class ViberBitIntegration extends Controller
{

    private $sender_name;

    public function handleViberRequest()
    {
        $message_to_reply = 'wrong command';
        $access_token = env('VIBER_ACCESS_TOKEN', false);
        $request = file_get_contents("php://input");
        $input = json_decode($request, true);

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

            // $this->store_story();
            $lastest_call = $this->get_latest_story();

            if ($lastest_call == null || $lastest_call->ask == $text_received) {
                $commands = PsiViberCommand::where('command', $text_received)->first();
                if ($commands) {
                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => $text_received
                    ]);
                    $message_to_reply = $commands->execute_en;
                }
            } elseif (is_int($text_received) && strlen($text_received) == 10 && $lastest_call->ask == 'register') {

                // check number to db
                $employee_data = $this->get_employee_verify($text_received, 'cell_no');
                if ($employee_data->count() > 0) {
                    $commands = PsiViberCommand::where('command', 'mobile_number')->first();
                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => 'mobile_number'
                    ]);
                    $message_to_reply = $commands->execute_en;
                }
            } elseif (is_int($text_received) && strlen($text_received) == 8 && $lastest_call->ask == 'mobile_number') {
                $employee_data = $this->get_employee_verify($text_received, 'birthdate');
                if ($employee_data->count() > 0) {
                    $commands = PsiViberCommand::where('command', 'registration_complete')->first();
                    $this->store_story([
                        'sender_id' => $sender_id,
                        'text_received' => 'registration_complete'
                    ]);
                    $message_to_reply = $commands->execute_en;
                    $message_to_reply .= ' username=pramod and password=2323';
                }
            }
            if ($text_received == 'hi') {
                $message_to_reply = 'hello ' . $sender_name;
            } elseif ($text_received == 'menu') {
                $message_to_reply = 'select one of the options below';
                $data['keyboard'] = $this->keyboardTemplate()['keyboard'];
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
        $story_obj->save();
    }

    private function get_latest_story($sender_id)
    {
        return PsiViberStory::where('sender_id', $sender_id)->latest()->first();
    }

    private function get_employee_verify($mobile, $field)
    {
        return Employee::where($field, $mobile);
    }
}
