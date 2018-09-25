<?php

namespace App\Http\Controllers;

use App\Models\SkillMaster;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Raw;

class SkillMasterController extends Controller
{
    public function manage()
    {
        $skills = Raw::getSkillsDetails();
        return view('skills.manage')->withSkills($skills);
    }

    public function addSkills(Request $request)
    {
        if($request->ajax())
        {
            $newSkill = $request->get('skill');
//dd(SkillMaster::where(['skill_name'=> $newSkill, 'status'=> 'enabled' ])->get());
            if(SkillMaster::where(['skill_name'=> $newSkill, 'status'=> 'enabled' ])->get())
            {
                $skill = 0;
            }
            else
            {
                $skill = SkillMaster::firstOrNew(['skill_name' => $newSkill]);

//            $skill = new SkillMaster();
                if($skill->exists)
                {
                    $skill->status = 'enabled';
                    $skill->save();
                }
                else
                {
                    $skill = new SkillMaster();
                    $skill->skill_name = $newSkill;
                    $skill->status = 'enabled';
                    $skill->save();
                }
            }
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
            return response()->json($skill);
        }
    }

    public function rename(Request $request)
    {
        if($request->ajax())
        {
            $id = $request->get('id');
            $name = $request->get('skill');

            $skill = SkillMaster::findOrFail($id);
            $skill->skill_name = $name;

            $skill->save();

            return response()->json($skill);
        }
    }
}
