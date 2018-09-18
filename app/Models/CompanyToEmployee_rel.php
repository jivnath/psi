<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CompanyToEmployee_rel extends Model
{
    protected $fillable = [
        'psi_number', 'company_id',
    ];
}
