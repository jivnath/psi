<?php

namespace App\Http\Controllers;

use App\Models\PsiInbox;
use Illuminate\Http\Request;
use App\Models\Role;
use Illuminate\Http\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use Session;


//use DB;
//use Session;
use Carbon\Carbon;

class PsiInboxController extends Controller
{
    public function store(Request $request)
    {
        // dd($request->all());
       
        $request->validate([
          'type' => 'required',
          'message' => 'required|string',
          'cfile' => 'mimes:jpg,jpeg,png',
        ]);
        
        $inbox = new PsiInbox();
       
        $id = Session::get('employee_psi_number');

        $inbox->message_type = $request->type;
        $inbox->request_message = $request->message;
        $inbox->message_date = Carbon::now();
        $inbox->employeeid = $id;
        $inbox->roleid = 1;
        if($request->cfile) {
            $path = Storage::putFile('public/file', new File($request->cfile));
            $inbox->file_upload_path = $path;
        }
        $inbox->status = 1;
        $inbox->save();

//        Session::flash('success', 'Message sent!');
        return redirect()->back()->with('success', 'Message sent!');
    }
}
