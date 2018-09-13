<?php

namespace App\Http\Controllers;

use App\Models\CompanyToUser_rel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\CompanyUser;
use App\Models\Company;
use Session;
class CompanyUserController extends Controller
{
    public function addUser()
    {
        $companies = Company::where('master_id', null)->get();
        return view('company_users.add')->withCompanies($companies);
    }

    public function storeUser(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|max:191',
            'password' => 'required|min:6',
            'email' => 'required|email|max:191',
            'language' => 'required'
        ]);

        $companies=$request['companies'];

        $companyUser = new CompanyUser;
        $companyUser->name = $request->username;
        $companyUser->email = $request->email;
        $companyUser->password = $request->password;
        $companyUser->language = $request->language;

        $companyUser->save();

        $id = $companyUser->id;

        if(isset($companies))
        {
            foreach ($companies as $company) {

                $companyToUser = new CompanyToUser_rel();
                $companyToUser->user_id = $id;
                $companyToUser->company_id = $company;
                $companyToUser->save();
            }
        }

        Session::flash('success', 'User successfully added!');
        return redirect()->back();

    }

    public function editUser($id)
    {
        $companyUser = CompanyUser::find($id);
        $companies = Company::where('master_id', null)->get();
        return view('company_users.edit')->withCompanies($companies)->withCompanyUser($companyUser);

    }

    public function updateUser(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required|max:191',
            'email' => 'required|email|max:191',
            'language' => 'required'
        ]);

        $companyUser = CompanyUser::find($id);

        $companyUser->name = $request->input('username');
        $companyUser->email = $request->input('email');
        $companyUser->password = $request->input('password');
        $companyUser->language = $request->input('language');

        $companyUser->save();

        $companies=$request['companies'];

        $companyToUser = CompanyToUser_rel::where('user_id', $id)->get();

        foreach ($companyToUser as $user)
        {
            $user->delete();
        }

        foreach ($companies as $company)
        {
            $companytouser = new CompanyToUser_rel();
            $companytouser->user_id = $id;
            $companytouser->company_id = $company;
            $companytouser->save();
        }
        Session::flash('success', 'User successfully updated!');
        return redirect()->back();

    }

}
