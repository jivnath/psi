<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserType extends Model
{
	public function user()
	{
		return $this->hasMany('App\Models\User');
	}
    //
}
