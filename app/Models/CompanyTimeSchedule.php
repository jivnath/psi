<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class CompanyTimeSchedule extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;
    protected $table = 'company_time_schedules';

    public function companyTimeTable()
    {
        return $this->belongsTo('App\Models\CompanyTimeTable', 'companyTT_id');
    }
}
