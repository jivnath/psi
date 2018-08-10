<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\UserType;
use App\Models\User;
//Importing laravel-permission models
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class UserController extends Controller
{
	// public function __construct()
	// {
 //        $this->middleware(['auth', 'isAdmin']); //isAdmin middleware lets only users with a //specific permission permission to access these resources
 //    }

	public function index()
	{
		$users = User::all();
		return view('users.index')->withUsers($users);
	}

	public function editUser($id)
	{
		$user = User::find($id);
		$roles = Role::get();
		return view('users.edit')->withUser($user)->withRoles($roles);
	}

	public function updateUser(Request $request, $id)
	{
		$user = User::find($id);

		$user->usertype_id = $request->input('role');
		$user->assignRole($request->input('role'));
		$user->save();
		return redirect()->route('home');
	}
    //
}
