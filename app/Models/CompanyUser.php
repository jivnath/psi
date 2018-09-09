<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CompanyUser extends Model
{
    public function setPasswordAttribute($password)
    {
        $this->attributes['password'] = bcrypt($password);
    }

    public function company()
    {
        return $this->belongsToMany('App\Models\Company');
    }

    public function userGroup()
    {
        return $this->belongsTo('App\Models\UserGroup');
    }
}
