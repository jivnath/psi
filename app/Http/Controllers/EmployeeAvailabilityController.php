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
        $weekdays = collect(['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday']);
      return view('availability.index')->withAvailability($availability)->withWeekdays($weekdays);

	}

   
   public function add()
   {
       $weekdays = collect(['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday']);
       $k = 0;
   		return view('availability.add')->withWeekdays($weekdays)->withK($k);
   }

   public function store(Request $request)
   {
   	$availability = new EmployeeAvailability;

   	$availability->psi_number = $request->psi_num;
   	$availability->sunday = $request->sunday;
   	$availability->monday = $request->monday;
   	$availability->tuesday = $request->tuesday;
   	$availability->wednesday = $request->wednesday;
   	$availability->thursday = $request->thursday;
   	$availability->friday = $request->friday;
   	$availability->saturday = $request->saturday;

   	$availability->save();
   	return redirect()->route('availability.add');
   }


   public function edit($id)
   {
       $weekdays = collect(['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday']);
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

   public function ajaxUpdate(Request $request)
   {
       if($request->ajax())
       {
           $time = $request->get('time');
           $psi = $request->get('psi');
           $day = $request->get('day');

           $ava = EmployeeAvailability::where('psi_number', $psi);

           $ava->$day = $time;
           $ava->save();



       }
   }
}
