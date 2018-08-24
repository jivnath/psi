<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ShiftMasterData extends Model
{
    public $table = "company_time_tables";
    public $fillable = ['shift'];
}
