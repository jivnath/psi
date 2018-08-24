<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;
use DB;
use App\Models\Raw;
class CompanyController extends Controller
{
	// public function __construct()
 //    {
 //        $this->middleware(['auth', 'clearance']);
 //    }
	
	public function create()
	{
		$companies = DB::table('companies')->where('master_id', null)->get();
		return view('companies.create')->withCompanies($companies);

	}

	public static function sections($id)
	{
		$sec = DB::table('companies')->where('master_id', $id)->get();
		$s = $sec->pluck('name');
		return $s;
	}

	public function store(Request $request)
	{
		$company = new Company;

		$company->name = $request->company_name;
		$company->address= $request->address;
        $company->master_id = $request->company;
        $company->contact_num = $request->contact_num;
		$company->save();

		return redirect()->route('company.create');

	}

	
	public function edit($id)
	{
		$companies = Raw::companies($id);
		
		return view('companies.edit')->withCompanies($companies);

	}

	public function update(Request $request, $id)
	{
		$company = Company::find($id);

		$company->name = $request->input('company_name');
		$company->address= $request->input('address');
		$company->save();
		$id = $company->id;

		$c = DB::table('companies')->where('master_id', $company->id)->delete();

		// $s = DB::table('companies')->where('master_id', $id)->get();

		if($request->section1){
			$company = new Company;

			$company->name = $request->section1;
			$company->master_id = $id;
			$company->address = $request->address;
			$company->save();			
		}
		if($request->section2){
			$company = new Company;

			$company->name = $request->section2;
			$company->master_id = $id;
			$company->address = $request->address;
			$company->save();
		}

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
