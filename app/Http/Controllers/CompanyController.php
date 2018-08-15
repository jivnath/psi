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
	
	public function create()
	{
		$companies = Company::all();
		return view('companies.create')->withCompanies($companies);

	}

	public function store(Request $request)
	{
		$company = new Company;

		$company->name = $request->company_name;
		$company->address= $request->address;

		$company->save();

		return redirect()->route('company.create');

	}

	public function edit($id)
	{
		$companies = Company::all();
		$company = Company::find($id);
		
		return view('companies.edit')->withCompany($company)->withCompanies($companies);

	}

	public function update(Request $request, $id)
	{
		$company = Company::find($id);

		$company->name = $request->input('company_name');
		$company->section1= $request->input('section1');
		$company->section2= $request->input('section2');
		$company->address= $request->input('address');

		$company->save();

		return redirect()->route('company.create');

	}

    //function for displaying master company
    public static function master($id)
    {
    	if ($id==0) {
    		return 'None';
    	}
    	else
	    	$master = Company::find($id);
	    	return $master['name'];
    }
}
