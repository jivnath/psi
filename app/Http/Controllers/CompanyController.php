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
		if ($companies['sub_com'])
		    $subCompanies = $companies['sub_com'];
		else
		    $subCompanies = '';
		$master = Raw::master();
		return view('companies.edit')->withCompanies($companies)->withSubCompanies($subCompanies)->withMaster($master);/*, compact($companies, $subCompanies));*/

	}

	public function update(Request $request, $id)
	{
		$company = Company::find($id);

		$company->name = $request->input('company_name');
		$company->address= $request->input('address');
        $company->contact_num= $request->input('contact');

		$company->save();

		return redirect()->route('company.edit', $id);

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

    public function sub(Request $request)
    {
        if($request->ajax())
        {
            $id = $request->get('selected');
            if($id != null) {
                $sub = DB::table('companies')->where('id', $id)->first();
                if ($sub)
                {
                    $subComp = [
                        'name' => $sub->name,
                        'address' => $sub->address,
                        'contact' => $sub->contact_num
                    ];
                }
            }
        }
        echo json_encode($subComp);
    }

    public function subCompanyUpdate(Request $request)
    {
        if($request->ajax())
        {
            $id = $request->get('id');
            $name = $request->get('name');
            $contact = $request->get('contact');
            $address = $request->get('address');
            $master = $request->get('master');


            $sub = Company::find($id);

            $sub->name = $name;
            $sub->contact_num = $contact;
            $sub->address = $address;
            $sub->master_id = $master;

            $sub->save();
            return redirect()->route('company.create');
        }
    }

}
