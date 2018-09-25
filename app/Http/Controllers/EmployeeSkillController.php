<?php

namespace App\Http\Controllers;

use App\Models\EmployeeSkill;
use App\Models\SkillMaster;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EmployeeSkillController extends Controller
{
    public function add()
    {
        $masterSkills = SkillMaster::where('status', 'enabled')->get();
        return view('employees.skill')->withMasterSkills($masterSkills);
    }

    public function store(Request $request)
    {
        $update_data=[];
        $employeeSkills= $request->employeeSkills;
        $psi_num = $request->psi_num;
        $emp_skills = EmployeeSkill::where('psi_num', $psi_num)->get();
        foreach ($emp_skills as $emp)
        {
            $emp->delete();
        }
//        dd($employeeSkills);
        if(isset($employeeSkills))
        {
            foreach ($employeeSkills as $skill){
                $update_data[]=['psi_num'=>$psi_num,'skill_id'=>$skill];
            }
            EmployeeSkill::insert($update_data);
        }
        return redirect()->route('employee.skill');
    }

    public function findSkill(Request $request)
    {

        $psi_num = $request->get('selected');

        $skill = EmployeeSkill::where('psi_num', $psi_num)->get();
        $masterSkills = SkillMaster::where('status', 'enabled')->get();
        $skills = [];
        if ($skill) {
            foreach ($skill as $s)
                array_push($skills, $s->skill_id);
        }
        $data=[
            'employeeSkills' => $skills,
            'masterSkills' => $masterSkills
        ];
            echo json_encode($data);
    }

    public function removeSkill(Request $request)
    {
        if ($request->ajax()) {
            $psi = $request->get('psi');
            $skill = $request->get('skill');

            $sk = EmployeeSkill::where('psi_num', $psi)->where('skill', $skill)->first();
            if ($sk)
                $sk->delete();
        }
    }


}

