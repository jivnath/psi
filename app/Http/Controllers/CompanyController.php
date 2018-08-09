<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;

class CompanyController extends Controller
{
	public function __construct()
    {
        $this->middleware(['auth', 'clearance']);
    }

	// public function index()
	// {
	// 	$master = Company::all();
	// 	$companies = Company::all();
	// 	return view('companies.index')->withMaster($master)->withCompanies($companies);	
	// }

	public function create()
	{
		$master = Company::all();
		$companies = Company::all();
		return view('companies.create')->withMaster($master)->withCompanies($companies);

	}

	public function store(Request $request)
	{
		$company = new Company;

		$company->name = $request->company_name;
		$company->master_company= $request->master_company;
		$company->status = $request->status;

		$company->save();

		return redirect()->route('company.create');

	}

	public function edit($id)
	{
		$master = Company::all();
		$companies = Company::all();
		$company = Company::find($id);
		
		return view('companies.edit')->withMaster($master)->withCompany($company)->withCompanies($companies);

	}

	public function update(Request $request, $id)
	{
		$company = Company::find($id);

		$company->name = $request->input('company_name');
		$company->master_company= $request->input('master_company');
		$company->status = $request->input('status');

		$company->save();

		return redirect()->route('company.create');

	}

    //function for displaying master company
    public static function master($id)
    {
    	$master = Company::find($id);
    	return $master['name'];
    }
}
