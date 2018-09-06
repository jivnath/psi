<?php

namespace App\Http\Controllers;

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
        $companies=$request['companies'];

        if(isset($companies)) {
            foreach ($companies as $company) {
                $companyUser = new CompanyUser;

                $companyUser->name = $request->username;
                $companyUser->email = $request->email;
                $companyUser->password = $request->password;
                $companyUser->language = $request->language;
                $companyUser->company = $company;
                $companyUser->save();
            }
        }
        else
        {
            $companyUser = new CompanyUser;

            $companyUser->name = $request->username;
            $companyUser->email = $request->email;
            $companyUser->password = $request->password;
            $companyUser->language = $request->language;
            $companyUser->save();
        }

        Session::flash('success', 'User successfully saved!');
        return redirect()->back();

    }

    public function editUser($id)
    {
        $companyUser = CompanyUser::find($id);
        $companies = Company::where('master_id', null)->get();
        return view('company_users.edit')->withCompanies($companies)->withCompanyUser($companyUser);

    }

}
