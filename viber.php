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
    elseif($text_received=='back'){
        $message_to_reply = $sender_name .' welcome to main menu';
        $data['keyboard'] = getMainMenu();
    }
    elseif($text_received=='Help'){
        $message_to_reply = 'Need help?' . $sender_name;
        $data['keyboard'] = getHelpMenu();
    }
    elseif($text_received=='registration'){
        $message_to_reply = 'Provide your mobile No ' . $sender_name;
        $data['keyboard'] = getBackMenu('->main_menu');

    }
    elseif($text_received=='11'){
        $message_to_reply = 'Provide your PSIS No ' . $sender_name;
        $data['keyboard'] = getBackMenu('->main_menu->registration');


    }
    elseif($text_received=='71203'){
        $message_to_reply = 'Congratulation '.$sender_name." your username and password has been created.\nusername:71203 \npassword:xxxxx";
        $data['keyboard'] = getBackMenu('back');


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
function getBackMenu($text){


    $data['BgColor']="#ffffff";

    $keyboard_array['Type']='keyboard';
    $keyboard_array['DefaultHeight']=false;
    $keyboard_array['BgColor']="#FFFFFF";
    $keyboard['keyboard']=$keyboard_array;

    $news['Columns']=6;
    $news['Rows']=1;
    $news["Text"]= "<font color=\"#494E67\">$text</font><br><br>";
    $news["TextSize"]= "medium";
    $news["TextHAlign"]= "center";
    $news["TextVAlign"]= "bottom";
    $news["ActionType"]= "reply";
    $news["BgColor"]= "#f7bb3f";
    $news['ActionBody']="back";
    $keyboard['keyboard']['Buttons'][]=$news;
    return $keyboard['keyboard'];
}
function getHelpMenu(){


    $data['BgColor']="#ffffff";
    $data['text']="Please select one of the options below:";

    $keyboard_array['Type']='keyboard';
    $keyboard_array['DefaultHeight']=false;
    $keyboard_array['BgColor']="#FFFFFF";
    $keyboard['keyboard']=$keyboard_array;

    $news['Columns']=6;
    $news['Rows']=1;
    $news["Text"]= "<font color=\"#494E67\">Back ..</font><br><br>";
    $news["TextSize"]= "medium";
    $news["TextHAlign"]= "center";
    $news["TextVAlign"]= "bottom";
    $news["ActionType"]= "reply";
    $news["BgColor"]= "#f7bb3f";
    $news['ActionBody']="back";
    $keyboard['keyboard']['Buttons'][]=$news;

    $articles['Columns']=6;
    $articles['Rows']=1;
    $articles['TextVAlign']="bottom";
    $articles['TextHAlign']="center";
    $articles['TextOpacity']="100";
    $articles["Text"]= "<font color=\"#494E67\">Voli garaula :P </font><br><br>";
    $articles['TextSize']="regular";
    $articles['ActionType']="reply";
    $articles['ActionBody']="done";
    $articles["BgColor"]= "#f6f7f9";

    //   $articles['Image']="http://www.kebuena.com.mx/wp-content/uploads/2017/06/calor-.jpg";
    $keyboard['keyboard']['Buttons'][]=$articles;
    return $keyboard['keyboard'];
}
function getMainMenu(){


    $data['BgColor']="#ffffff";
    $data['text']="Please select one of the options below:";

    $keyboard_array['Type']='keyboard';
    $keyboard_array['DefaultHeight']=false;
    $keyboard_array['BgColor']="#FFFFFF";
    $keyboard['keyboard']=$keyboard_array;

    $news['Columns']=6;
    $news['Rows']=1;
    $news["Text"]= "<font color=\"#494E67\">Registration</font><br><br>";
    $news["TextSize"]= "medium";
    $news["TextHAlign"]= "center";
    $news["TextVAlign"]= "bottom";
    $news["ActionType"]= "reply";
    $news["BgColor"]= "#f7bb3f";
    $news['ActionBody']="registration";
    //   $news['Image']="http://www.qygjxz.com/data/out/208/4243957-smile-image.png";
    $keyboard['keyboard']['Buttons'][]=$news;




    $login['Columns']=6;
    $login['Rows']=1;
    $login['TextVAlign']="bottom";
    $login['TextHAlign']="center";
    $login['TextOpacity']="100";
    $login["Text"]= "<font color=\"#494E67\">Login Portal</font><br><br>";
    $login['TextSize']="regular";
    $login["ActionType"]="open-url";
    $login["OpenURLType"]="internal";
    $login["InternalBrowser"]=[
        "Mode"=>"fullscreen",
        "CustomTitle"=>"Hello World - Custom Title"
    ];
    $login["ActionBody"]= "http://127.0.0.1:8000/employee/login";
    $login["BgColor"]= "#2db9b9";

    //   $articles['Image']="http://www.kebuena.com.mx/wp-content/uploads/2017/06/calor-.jpg";
    $keyboard['keyboard']['Buttons'][]=$login;

    $articles['Columns']=6;
    $articles['Rows']=1;
    $articles['TextVAlign']="bottom";
    $articles['TextHAlign']="center";
    $articles['TextOpacity']="100";
    $articles["Text"]= "<font color=\"#494E67\">Help</font><br><br>";
    $articles['TextSize']="regular";
    $articles['ActionType']="reply";
    $articles['ActionBody']="Help";
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