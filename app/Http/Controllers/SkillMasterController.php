<?php

namespace App\Http\Controllers;

use App\Models\SkillMaster;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SkillMasterController extends Controller
{
    public function manage()
    {
        $skills = SkillMaster::where('status', 'enabled')->get();
        return view('skills.manage')->withSkills($skills);
    }

    public function addSkills(Request $request)
    {
        if($request->ajax())
        {
            $newSkill = $request->get('skill');

            $skill = new SkillMaster();
            $skill->skill_name = $newSkill;
            $skill->status = 'enabled';
            $skill->save();

            echo json_encode($skill);
        }
    }

    public function removeSkills(Request $request)
    {
        if($request->ajax())
        {
            $id = $request->get('id');

            $skill = SkillMaster::find($id);
            $skill->status = 'disabled';

            $skill->save();
        }
    }
}
