<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PsiInbox extends Model
{
    protected $table = 'psi_inbox';

    // protected $fillable=[
    //     'message_type',
    //     'request_message',
    //     'roleid',
    //     'employeeid',
    //     'message_date',
    //     'response_message',
    //     'response_by_userid',
    //     'response_date',
    //     'file_upload_path',
    //     'status',
    // ];
    // public function roles(){
    //     $this->belongsTo('App\Models\Role','id');
    // }
}
