<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;

class CompanyController extends Controller
{
	public function create()
	{
		$master = Company::all();
		return view('companies.create')->withMaster($master);
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

	}

	public function update(Request $request, $id)
	{

	}

    //
}
