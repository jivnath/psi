<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EmployeeAvailability extends Model
{
	protected $table = 'employee_availabilities';

	public function employee()
	{
		return $this->belongsTo('App\Models\Employee', 'psi_number');
	}   //
}
