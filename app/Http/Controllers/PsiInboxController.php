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
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
       
        
         $request->validate([
              'type' => 'required',
              'message' => 'required|string',
              'cfile' => 'mimes:jpg,jpeg,png',
          ]);
        
        $inbox = new PsiInbox();
       
        $id = Session::get('user_id');
        
        $path = Storage::putFile('public/file', new File($request->cfile));

        $inbox->message_type = $request->type;
        $inbox->request_message = $request->message;
        $inbox->message_date = Carbon::now();
        $inbox->employeeid = $id;
        $inbox->roleid = 1;
        $inbox->file_upload_path =$path;
        $inbox->status = 1;
        $inbox->save();

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
}
