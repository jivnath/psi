<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DessertSheet extends Model
{
    protected $table = 'psi_dessert_entry';

    public function cts(){
        $this->belongsTo('App\Models\CompanyTimeSchedule', 'cts_id');
    }

    public function employee(){
        $this->belongsTo('App\Models\Employee', psi_num);
    }
}
