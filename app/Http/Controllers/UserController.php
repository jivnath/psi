<?php

namespace App\Http\Controllers;

use App\Models\CompanyToEmployee_rel;
use App\Models\RolesToPermission_rel;
use App\Models\UserToPermission_rel;
use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\Raw;
use App\Models\User;
//Importing laravel-permission models
use Illuminate\Http\Request;
use Session;
use Spatie\Permission\Models\Role;

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
        $section = Raw::getSecondLevelCompanies();

//        $companies = Company::where('master_id', null)->get();
        return view('users.create', ['roles' => $roles, 'section' => $section]);

    }

    public function store(Request $request)
    {
        //Validate name, email and password fields
        $this->validate($request, [
            'name' => 'required|max:120',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6|confirmed',
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = $request->password;
        $user->language = $request->language;
        $user->primary_company = $request->primary_company;
        $role = $request->role; //Retrieving the roles field
        $user->role_id = $role;
        $user->save();

        $user->assignRole($role); //Assigning role to user

//        $companies = $request['companies'];
        //        if(isset($companies))
        //        {
        //            foreach($companies as $company)
        //            {
        //                $companyToUser = new CompanyToUser_rel();
        //
        //                $companyToUser->user_id = $user->id;
        //                $companyToUser->company_id = $company;
        //                $companyToUser->save();
        //            }
        //        }

        Session::flash('success', trans('employee.Usersuccessfullyadded!'));
        //Redirect to the users.index view and display message
        return redirect()->route('users.index');
    }

    public function editUser($id)
    {
        $user = User::find($id);
        $roles = Role::get();
        $companies = Raw::getSecondLevelCompanies();
//        dd($companies);

//        $userCompanies = CompanyToUser_rel::where('user_id', $id)->get();
        //        $companies = [];
        //        $compid = [];
        //        foreach ($userCompanies as $company) {
        //            $comp = Company::find($company->company_id);
        //            array_push($companies, $comp);
        //            array_push($compid, $comp->id);
        //        }
        //
        //
        //        $allCompanies = Company::where('master_id', null)->get();

        return view('users.edit')->withUser($user)
            ->withRoles($roles)
            ->withCompanies($companies);
//            ->withAllCompanies($allCompanies)
        //            ->withCompid($compid);
    }

    public function updateUser(Request $request, $id)
    {

        $user = User::findOrFail($id);
        $section = $request->primary_company;

        $role = $request->input('role'); //Retreive all roles
        $user->role_id = $role;
        //dd($role);
        $user->primary_company = $section;
        $user->roles()->detach();
        $user->assignRole($role);
        $user->save();

        Session::flash('success', trans('employee.Usersuccessfullyupdated!'));
        return redirect()->route('users.index');
    }

    public function profile()
    {
        return view('users.profile');
    }

    public function changeCompany($id, $name)
    {
        \Session::put('primary_company', Company::find($id));

        return redirect()->back();
    }

    public function updateProfile(Request $request, $id)
    {

        $user = User::find($id);
        $this->validate($request, [
            'email' => 'required|email',
        ]);

        $user->email = $request->input('email');
        \Session::put('user_email', $request->input('email'));
        $user->language = $request->input('language');
        \Session::put('user_language', $request->input('language'));
        $user->primary_company = $request->input('primary_company');

        $user->save();

        return redirect()->route('profile');
    }

    public function admin_credential_rules(array $data)
    {
        $messages = [
            'current-password.required' => 'Please enter current password',
            'password.required' => 'Please enter password',
          ];
        $validator = Validator::make($data, [
            'current-password' => 'required',
            'password' => 'required|same:password',
            'password_confirmation' => 'required|same:password',
        ], $messages);

        return $validator;
    }

    public function updatePassword(Request $request)
    {

        $user = Auth::user();

        $curPassword = $request->input('current-password');
        $newPassword = $request->input('password');
    
        if (Hash::check($curPassword, $user->password)) {
            $user_id = $user->id;
            $obj_user = User::find($user_id)->first();
            $obj_user->password = Hash::make($newPassword);
            $obj_user->save();
    
            Session::flash('success', 'successfully added!');
        }
        else
        {
            Session::flash('error','not successfull');
        }
    

    }

    public function selectPrimary(Request $request, $id)
    {

        $user_id = \Session::get('user_id');

        $user = User::find($user_id);
        $company = Raw::getSecondLevelCompanies();
        $companies = [];
        foreach ($company as $comp) {
            array_push($companies, $comp->id);
        }

//        dd($companies);
        if (in_array($id, $companies)) {
            $user->primary_company = $id;
            $user->save();
            $primaryCompany = Company::find($id);
            $request->session()->put('primary_company', $primaryCompany);
        } else {
            return redirect()->back();
        }

        return redirect()->route('dashboard');
    }

    public function primary()
    {
        return view('pages.no_primary');
    }

    public static function controlMenu($id, $role, $menu)
    {
        $allPermission = [];
        $permissions = UserToPermission_rel::where('user_id', $id)->get();
        if(count($permissions)>0)
        {
            foreach ($permissions as $permission){
                array_push($allPermission, $permission->permission_id);
            }
        }
        else
        {
            $permissions = RolesToPermission_rel::where('role_id', $role)->get();
            if(count($permissions)>0)
            {
                foreach ($permissions as $permission){
                    array_push($allPermission, $permission->permission_id);
                }
            }
        }
        if(in_array($menu, $allPermission)){
            return true;
        }
        else
            return false;
    }
}
