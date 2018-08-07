<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\UserType;
use App\Models\User;

class UserController extends Controller
{
	public function index()
	{
		$users = User::all();
		return view('users.index')->withUsers($users);
	}


	public function editUser($id)
	{
		$user = User::find($id);
		$userTypes = UserType::all();
		return view('users.edit')->withUser($user)->withUserType($userTypes);
	}

	public function updateUser(Request $request, $id)
	{
		$user = User::find($id);

		$user->usertype_id = $request->input('user_type');
		$user->save();
		return redirect()->route('home');
	}
    //
}
