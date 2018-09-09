<?php

namespace App\Http\Controllers;

use App\Models\UserGroup;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;

class UserGroupController extends Controller
{
    public function index()
    {
        $user_group = UserGroup::all();
        return view('user_group.index')->with('user_group', $user_group);
    }

    public function addGroup(Request $request)
    {
        if($request->ajax())
        {
            $this->validate($request, [
                'name' => 'required|max:191'
            ]);

            $name = $request->get('name');

            $group = new UserGroup();
            $group->group_name = $name;
            $group->save();

            $data = $group->id;

            Session::flash('success', 'The group is successfully added!');
        }

        echo json_encode($data);
    }

    public function renameGroup(Request $request)
    {
        if($request->ajax())
        {
            $this->validate($request, [
                'name' => 'required|max:191'
            ]);

            $id = $request->get('id');
            $name = $request->get('name');

            $group = UserGroup::find($id);
            $group->group_name = $name;

            $group->save();

            Session::flash('success', 'Group is successfully renamed!');
        }
    }
}
