<?php

namespace App\Http\Controllers;

use App\Models\EmployeeSkill;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EmployeeSkillController extends Controller
{
    public function add()
    {
        return view('employees.skill');
    }

    public function store(Request $request)
    {
        $emp_skill = new EmployeeSkill();

        $emp_skill->psi_num = $request->psi_num;
        $emp_skill->skill = $request->skill;

        $emp_skill->save();
    }

    public function addSkill(Request $request)
    {
        if($request->ajax())
        {
            $psi_num = $request->get('psi_num');
            $skill = $request->get('skill');
            if ($psi_num && $skill != null)
            {
                $emp_skill = new EmployeeSkill();

                $emp_skill->skill = $skill;
                $emp_skill->psi_num = $psi_num;

                $emp_skill->save();

            }
        }
    }
}

