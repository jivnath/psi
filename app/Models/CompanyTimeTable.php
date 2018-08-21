<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CompanyTimeTable extends Model
{
    protected $table = 'company_time_tables';

    public function comp()
    {
        return $this->belongsTo('App\Models\Company', 'company_id');
    }

    public function companyTimeSchedule()
    {
    	return $this->hasMany('App\Models\CompanyTimeSchedule');
    }
}
