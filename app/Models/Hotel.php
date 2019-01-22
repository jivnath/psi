<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    protected $fillable = ['employee_number'];

    public static function updateCell($data)
    {
        static::where([
//            ['company_id', $data['company_id']],
            ['employee_number', $data['psi_num']]
        ])->update([$data['column'] => $data['value']]);
    }
}
