<?php

namespace App\Http\Controllers;

use App\Models\EmployeeSkill;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
//use App\Models\EmployeeSkill;

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
        if ($request->ajax()) {
            $psi_num = $request->get('psi_num');
            $skill = $request->get('skill');
            if ($psi_num && $skill != null) {
                $emp_skill = new EmployeeSkill();

                $emp_skill->skill = $skill;
                $emp_skill->psi_num = $psi_num;

                $emp_skill->save();

            }
        }
    }
    public function findSkill (Request $request)
    {

            $psi_num = $request->get('selected');

            $sk = EmployeeSkill::where('psi_num', $psi_num)->get();
            if($sk) {
                $ski = [];
                foreach ($sk as $s)
                    array_push($ski, $s->skill);
            }

            else
                $ski = '';


        echo json_encode($ski);
    }

    public function removeSkill(Request $request)
    {
        if ($request->ajax())
        {
            $psi = $request->get('psi');
            $skill= $request->get('skill');

            $sk = EmployeeSkill::where('psi_num', $psi)->where('skill', $skill)->first();
            if ($sk)
                $sk->delete();
        }
    }


}

