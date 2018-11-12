<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use App\Models\PsiInbox;
use Carbon\Carbon;
use Illuminate\Http\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\View;


//use DB;
//use Session;
use Session;
use App\Models\Raw;

class PsiInboxController extends Controller
{
    public function messages()
    {
        $requests = Raw::getAllRequests();
//        $umsg = PsiInbox::where('status',1)->get();
//        $rmsg = PsiInbox::where('status',0)->get();
//        $employee = Employee::all();

        return view('messages', compact('requests'));
    }

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
        if ($request->cfile) {
            $path = Storage::putFile('file', new File($request->cfile));
            $inbox->file_upload_path = $path;
        }
        $inbox->status = 1;
        $inbox->save();

        Session::flash('success', trans('employee.Messagesent'));
        return redirect()->route('employee.profile');
    }

    public function singleMessage($id)
    {
        $edit = PsiInbox::find($id);
        $psi_no = $edit->employeeid; 
        $name = Employee::where('psi_number', $psi_no)->first();
        return View::make('single_message')->with(array('edit' => $edit, 'name' => $name));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'response' => 'string',
        ]);
        $update = PsiInbox::find($id);
        $update->response_message = $request->input('response');
        $update->response_date = Carbon::now();
        $update->response_by_userid = Auth::id();
        $update->roleid = Session::get('user_role_id');
        $update->status = 0;

        $update->save();

        return redirect()->route('inbox.messages');
    }

    public function download($id)
    {
     $d = PsiInbox::find($id);
     return Storage::download($d->file_upload_path);   
    }

    public function view($id)
    {

     $view = PsiInbox::find($id);
     $psi_no = $view->employeeid; 
     $name = Employee::where('psi_number', $psi_no)->first();
     return View::make('view')->with(array('view' => $view, 'name' => $name));
      
    }

}
