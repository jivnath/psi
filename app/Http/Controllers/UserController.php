<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\UserType;
use App\Models\User;
//Importing laravel-permission models
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Models\Company;
use App\Models\CompanyToUser_rel;


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

	public function createUser()
	{
    //Get all roles and pass it to the view
        $roles = Role::get();
        $companies = Company::where('master_id', null)->get();
        return view('users.create', ['roles'=>$roles], ['companies'=>$companies]);
    }

    public function store(Request $request) {
    //Validate name, email and password fields
        $this->validate($request, [
            'name'=>'required|max:120',
            'email'=>'required|email|unique:users',
            'password'=>'required|min:6|confirmed'
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = $request->password;
        $user->language = $request->language;
        $user->save();
        $role = $request->role; //Retrieving the roles field
        $user->assignRole($role); //Assigning role to user

        $companies = $request['companies'];
        if(isset($companies))
        {
            foreach($companies as $company)
            {
                $companyToUser = new CompanyToUser_rel();

                $companyToUser->user_id = $user->id;
                $companyToUser->company_id = $company;
                $companyToUser->save();
            }
        }


        //Redirect to the users.index view and display message
        return redirect()->route('users.index');
    }

	public function editUser($id)
	{
		$user = User::find($id);
		$roles = Role::get();
		return view('users.edit')->withUser($user)->withRoles($roles);
	}

	public function updateUser(Request $request, $id)
	{
		// $user = User::find($id);

		// $user->usertype_id = $request->input('role');
		// $user->assignRole($request->input('role'));
		// $user->save();
		// return redirect()->route('users.index');
	
        $user = User::findOrFail($id); //Get role specified by id

        // $input = $request->only(['name', 'email', 'password']); //Retreive the name, email and password fields
        $role = $request->input('role'); //Retreive all roles
        // $user->fill($input)->save();
        $user->roles()->detach();
        $user->assignRole($role);

        // if (isset($roles)) {        
        //     $user->roles()->sync($roles);  //If one or more role is selected associate user to roles          
        // }        
        // else {
        //     $user->roles()->detach(); //If no role is selected remove exisiting role associated to a user
        // }
        return redirect()->route('users.index');
	}

    public function profile()
    {
        return view('users.profile');
    }

    public function changeCompany(Request $request)
    {
        \Session::put('primary_company', $request->companies);

        return redirect()->back();
    }

    public function profileUpdate(Request $request, $id)
    {
        $user = find($id);
        $user->email = $request->input('email');
        $user->language = $request->input('language');
        $user->primary_company = $request->input('primary_company');
        $user->save();
    }
}
