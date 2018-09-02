<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\EmployeeAvailability;
use App\Models\Company;
use DB;
class EmployeeAvailabilityController extends Controller
{
	public function index($id)
	{
		$availability = EmployeeAvailability::find($id);
      $weekdays = collect(['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat']);
      return view('availability.index')->withAvailability($availability)->withWeekdays($weekdays);

	}

   
   public function add()
   {
         $weekdays = collect(['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat' ]);
         $k = 0;
   		return view('availability.add')->withWeekdays($weekdays)->withK($k);
   }

   public function store(Request $request)
   {
   	$availability = new EmployeeAvailability;

   	$availability->psi_number = $request->psi_num;
   	$availability->sun = $request->sun;
   	$availability->mon = $request->mon;
   	$availability->tue = $request->tue;
   	$availability->wed = $request->wed;
   	$availability->thu = $request->thu;
   	$availability->fri = $request->fri;
   	$availability->sat = $request->sat;

   	$availability->save();
   	return redirect()->route('availability.add');
   }


   public function edit($id)
   {
         $weekdays = collect(['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat' ]);
         $k = 0;
   		$availability = EmployeeAvailability::find($id);
   		return view('availability.edit')->withAvailability($availability)->withWeekdays($weekdays)->withK($k);

   }


   public function update(Request $request, $id)
   {
   		$availability = EmployeeAvailability::find($id);

	   	// $availability->company_id = $request->input('company');
	   	$availability->sun = $request->input('sun');
	   	$availability->mon = $request->input('mon');
	   	$availability->tue = $request->input('tue');
	   	$availability->wed = $request->input('wed');
	   	$availability->thu = $request->input('thu');
	   	$availability->fri = $request->input('fri');
	   	$availability->sat = $request->input('sat');

	   	$availability->save();
	   	return redirect()->route('availability.index', $id );	
   }

}
