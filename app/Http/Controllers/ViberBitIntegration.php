<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;

class ViberBitIntegration extends Controller
{

    private $sender_name;

    public function handleViberRequest()
    {
        $access_token = \Config::get('constant.VIBER_ACCESS_TOKEN');
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

            if ($text_received == 'hi') {
                $message_to_reply = 'hello ' . $sender_name;
            } elseif ($text_received == 'menu') {
                $message_to_reply = 'select one of the options below';
                $data['keboard'] = $this->keyboardTemplate()['keboard'];
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
        $keyboard['keboard']['Buttons'][] = $temp;
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
}
