<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SkillMaster extends Model
{
    protected $table = 'psi_skill_master';

    protected $fillable = ['skill_name'];

    public function employeeSkill()
    {
        return $this->hasMany('App\Models\EmployeeSkill');
    }
}
