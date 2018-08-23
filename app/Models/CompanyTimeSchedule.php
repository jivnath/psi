<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CompanyTimeSchedule extends Model
{
    protected $table = 'company_time_schedules';

    public function companyTimeTable()
    {
        return $this->belongsTo('App\Models\CompanyTimeTable', 'companyTT_id');
    }
}
