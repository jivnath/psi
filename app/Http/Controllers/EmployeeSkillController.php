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
        $employeeSkills[] = $request['employeeSkills'];
        $psi_num = $request->psi_num;
//        dd($employeeSkills);
        if(isset($employeeSkills))
        {
//            foreach($employeeSkills as $skill)
            for($i=0; $i<(count($employeeSkills)); $i++)
            {
//                dd($employeeSkills[$i]);
                $emp_skill = new EmployeeSkill();

                $emp_skill->psi_num = $psi_num;
                $emp_skill->skill_id = $employeeSkills[$i];
                $emp_skill->save();
            }
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

