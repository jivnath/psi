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
    file_put_contents('message.log',print_r($input,true),FILE_APPEND);
    $text_received = $input['message']['text'];
    $sender_id = $input['sender']['id'];
    $sender_name = $input['sender']['name'];
    if ($text_received == 'hi') {
        $message_to_reply = 'Welcome ' . $sender_name;

    } elseif($text_received=='smile'){
        $message_to_reply = 'hehehe ' . $sender_name;
    }
    elseif($text_receiveed=='help'){
        $message_to_reply = 'Need help?' . $sender_name;
    }
    elseif ($text_received == 'menu') {
        $message_to_reply = 'select one of the options below';
        $data['keyboard'] = getMainMenu();

    }
    $data['auth_token'] = $access_token;
    $data['receiver'] = $sender_id;
    $data['type'] = "text";
    $data['text'] = $message_to_reply;

    $return=sendMessage($data);
    file_put_contents('test.log',print_r($return,true),FILE_APPEND);
}
elseif($input['event']=='conversation_started'){
    file_put_contents('test.log',print_r($input,true),FILE_APPEND);
    $sender_id = $input['user']['id'];
    $sender_name = $input['user']['name'];
    $message_to_reply='(どんな御用でしょうか)Can I help You?';

    $data['auth_token'] = $access_token;
    $data['receiver'] = $sender_id;
    $data['type'] = "text";
    $data['text'] = $message_to_reply;

    $return=sendMessage($data);
}
function getMainMenu(){


    $data['BgColor']="#ffffff";
    $data['text']="Please select one of the options below:";

    $keyboard_array['Type']='keyboard';
    $keyboard_array['DefaultHeight']=false;
    $keyboard_array['BgColor']="#FFFFFF";
    $keyboard['keyboard']=$keyboard_array;

    $news['Columns']=3;
    $news['Rows']=2;
    $news["Text"]= "<font color=\"#494E67\">Registration</font><br><br>";
    $news["TextSize"]= "medium";
    $news["TextHAlign"]= "center";
    $news["TextVAlign"]= "bottom";
    $news["ActionType"]= "reply";
    $news["BgColor"]= "#f7bb3f";
    $news['ActionBody']="Smiling";
    //   $news['Image']="http://www.qygjxz.com/data/out/208/4243957-smile-image.png";
    $keyboard['keyboard']['Buttons'][]=$news;


    $articles['Columns']=3;
    $articles['Rows']=2;
    $articles['TextVAlign']="bottom";
    $articles['TextHAlign']="center";
    $articles['TextOpacity']="100";
    $articles["Text"]= "<font color=\"#494E67\">Help</font><br><br>";
    $articles['TextSize']="regular";
    $articles['ActionType']="reply";
    $articles['ActionBody']="Crying";
    $articles["BgColor"]= "#f6f7f9";
    //   $articles['Image']="http://www.kebuena.com.mx/wp-content/uploads/2017/06/calor-.jpg";
    $keyboard['keyboard']['Buttons'][]=$articles;
    return $keyboard['keyboard'];
}

function keyboardTemplate()
{

    /*$keyboard_array['Type'] = 'keyboard';
     $keyboard_array['DefaultHeight'] = false;
     $keyboard_array['BgColor'] = '#FFFF';
     $keyboard['keyboard'] = $keyboard_array;
     $temp['ActionType'] = "reply";
     $temp['ActionBody'] = "reply to me";
     $temp['reply to me'] = "Key text";
     $temp['TextSize'] = "regular";
     $keyboard['keyboard']['Buttons'][] = $temp;
     return $keyboard;*/
    $key='{
    	"Type": "keyboard",
    	"Buttons": [{
    		"Columns": 3,
    		"Rows": 2,
    		"Text": "<font color=\"#494E67\">Smoking</font><br><br>",
    		"TextSize": "medium",
    		"TextHAlign": "center",
    		"TextVAlign": "bottom",
    		"ActionType": "reply",
    		"ActionBody": "Smoking",
    		"BgColor": "#f7bb3f",
    		"Image": "https: //s12.postimg.org/ti4alty19/smoke.png"
    	}, {
    		"Columns": 3,
    		"Rows": 2,
    		"Text": "<font color=\"#494E67\">Non Smoking</font><br><br>",
    		"TextSize": "medium",
    		"TextHAlign": "center",
    		"TextVAlign": "bottom",
    		"ActionType": "reply",
    		"ActionBody": "Non smoking",
    		"BgColor": "# f6f7f9",
    		"Image": "https: //s14.postimg.org/us7t38az5/Nonsmoke.png"
    	}]
    }';
    return json_decode($key,true);

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