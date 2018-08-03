<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\EmployeeAvailability;
use App\Models\Company;
use DB;
class EmployeeAvailabilityController extends Controller
{
	public function index($id=1)
	{
		$companies = Company::all();
		$availability = DB::table('employee_availabilities')->where('company_id', '$id')->first();
		return view('availability.index')->withCompanies($companies)->withAvailability($availability);

	}

   
   public function add()
   {
   		$companies = Company::all();
   		return view('availability.add')->withCompanies($companies);

   }

   public function store(Request $request)
   {
   	$availability = new EmployeeAvailability;

   	$availability->company_id = $request->company;
   	$availability->sun = $request->sun;
   	$availability->mon = $request->mon;
   	$availability->tues = $request->tue;
   	$availability->wednes = $request->wed;
   	$availability->thurs = $request->thu;
   	$availability->fri = $request->fri;
   	$availability->satur = $request->sat;

   	$availability->save();
   	return redirect()->route('availability.add');
   }


   public function show($id)
   {
   		$companies = Company::all();
   		$availability = DB::table('employee_availabilities')->where('company_id', '$id');
   		return view('availability.index')->withCompanies($companies);
   }


   public function edit($id)
   {


   }

}
