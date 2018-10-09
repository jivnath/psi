<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PsiViberStory;
use App\Models\Employee;

class PsiViberStoryController extends Controller
{

    public function store_story(Request $request)
    {
        $story_obj = new PsiViberStory();
        $story_obj->sender_id = $request->post('sender_id');
        $story_obj->step = $request->post('step');
        $story_obj->ask = $request->post('ask');
        $story_obj->ans = $request->post('ans');
        $exitsOrNot = Employee::where('cell_no', '07015471993')->count();
        if($exitsOrNot>0){
            //check date of birth and return username and password
        }
    }
}
