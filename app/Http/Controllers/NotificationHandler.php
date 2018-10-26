<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PsiInbox;

class NotificationHandler extends Controller
{

    public function get_current_message()
    {
        $messages = [];
        $results = PsiInbox::where('roleid', \Session::get('user_id'))->where('status', '<>', 'view')->orderBy('message_date','desc');
        $messages['count'] = $results->count();
        foreach ($results->get() as $row) {
            $messages['data'][] = $row->employeeid . ' sent ' . $row->message_type . ' request';
        }
        return response()->json($messages);
    }
}
