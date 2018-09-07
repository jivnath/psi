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
            $name = $request->get('name');

            $group = new UserGroup();
            $group->group_name = $name;
            $group->save();

            Session::flash('success', 'The group is successfully added!');
        }
    }

    public function renameGroup(Request $request)
    {
        if($request->ajax())
        {
            $id = $request->get('id');
            $name = $request->get('name');

            $group = UserGroup::find($id);
            $group->group_name = $name;

            $group->save();

            Session::flash('success', 'Group is successfully renamed!');
        }
    }
}
