<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EmployeeSkill extends Model
{
    public function employee()
    {
        return $this->belongsTo('App\Models\Employee', 'psi_num', 'psi_number');
    }
}
