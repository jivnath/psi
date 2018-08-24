<?php
$access_token = '4859ccb5eda7d3b0-e99fd83f2a4a3e0a-f6bc177a7a4f3be7';
$request = file_get_contents("php://input");
$input = json_decode($request, true);

if ($input['event'] == 'webhooks') {
    $webhook_response['status'] = 0;
    $webhook_response['status_message'] = "ok";
    $webhook_response['event_types'] = "delivered";
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
        $data['keboard'] = keyboardTemplate()['keboard'];
    }
    $data['auth_token'] = $access_token;
    $data['receiver'] = $sender_id;
    $data['type'] = "text";
    $data['text'] = $message_to_reply;
    sendMessage($data);
}

function keyboardTemplate()
{
    $keyboard_array['Type'] = 'keyboard';
    $keyboard_array['DefaultHeight'] = false;
    $keyboard_array['BgColor'] = '#FFFF';
    $keyboard['keyboard'] = $keyboard_array;
    $temp['ActionType'] = "reply";
    $temp['ActionBody'] = "reply to me";
    $temp['reply to me'] = "Key text";
    $temp['TextSize'] = "regular";
    $keyboard['keboard']['Buttons'][] = $temp;
    return $keyboard;
}

function sendMessage($data)
{
    $url = "https://chatapi.viber.com/pa/send_message";
    $jsonData = json_encode($data);
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $jsonData);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json'
    ));
    $result = curl_exec($ch);
    return $result;
}