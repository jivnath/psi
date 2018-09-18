<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CompanyToEmployee_rel extends Model
{
    protected $fillable = [
        'psi_number', 'company_id',
    ];

    public function employee()
    {
        return $this->belongsTo('App\Models\Employee', 'psi_number', 'psi_number');
    }

    public function company()
    {
        return $this->belongsTo('App\Models\Company', 'company_id');
    }

    public static function groupByCompany()
    {
        return static::with('company')
            ->selectRaw('*, count(id) as total')
            ->groupBy('company_id')
            ->orderBy('updated_at', 'DESC')
            ->paginate(50);
    }
}
