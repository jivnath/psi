<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EmployeeAvailability extends Model
{
	protected $table = 'employee_availabilities';

	public function company()
	{
		$this->belongsTo('App\Models\Company');
	}   //
}
