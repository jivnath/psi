<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ViberMessageDetailModel;

class ViberMessageController extends Controller
{

    public function store_message(Request $request)
    {
        $viber_obj = new ViberMessageDetailModel();
        $viber_obj->setype = $request->setype;
        $viber_obj->related_to = $request->related_to;
        $viber_obj->messages = $request->messages;
        $viber_obj->message_state = $request->message_state;
        $viber_obj->sender_id = $request->sender_id;
        $viber_obj->operator = Auth::user()->username;
        $viber_obj->response = '';
        $viber_obj->save();
        return response()->json($viber_obj);
    }
}
