<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ShiftMasterData extends Model
{
    protected $table = "shift_master_datas";
//    public $fillable = ['shift'];

    public function companies()
    {
        $this->belongsTo('App\Models\Company', 'company_id');
    }
}
