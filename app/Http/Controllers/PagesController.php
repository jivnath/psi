<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;
use DB;

class PagesController extends Controller
{
	public function getUser()
	{
		return view('pages.users');
	}

	public function getEmployee()
	{
		return view('pages.employee');
	}

	public function generator()
	{
		$companies = DB::table('companies')->where('master_id', null)->get();
		return view('pages.generator')->withCompanies($companies);
	}

	public function generatorWork($request)
	{
		$id = $request->selected;
		$company = Company::find($id);
		$sections = DB::table('companies')->where('master_id', $id)->get();

		return $sections;
	}

	public function generatorStore(Request $request )
	{
		$shifts = $request->shift;
		$timeTable = DB::table('company_time_tables')->insertGetId(
    		[
    			'company_id' => $request->company, 'shifts' => $shifts
    		]
		);
		$id = $timeTable->id;

		$startDate = strtotime($request->start_date);
		$endDate = strtotime($request->end_date);

		while ($startDate <= $endDate) {
			foreach ($shifts as $shift ) {
				$schedule = DB::table('company_time_schedules')->insertGetId(
					[
						'companyTT_id' => $id,
						'date' => $startDate,
						'time' => $shift,
						'normal' => '',
						'help' => '',
					 ]
				);
			}
			$startDate = strtotime("+1 day", $startDate);
		}


	}
}
