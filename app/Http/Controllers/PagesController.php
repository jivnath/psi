<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\CompanyTimeTable;
use App\Models\CompanyTimeSchedule;
use DB;
use Date;

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

	public function section(Request $request)
	{
		$id = $request->selected;
		$sections = DB::table('companies')->where('master_id', $id)->get();

		return response()->json(array('sections'=> $sections));
	}

	public function generatorStore(Request $request )
	{
		$shifts = serialize($request['shift']);
		$timeTable = new CompanyTimeTable;

		$timeTable->company_id = $request->company;
		$timeTable->shifts = $shifts;
		$timeTable->save();

		$id = $timeTable->id;

		$startDate = $request->start_date;
		$endDate = $request->end_date;


		$s = $request['shift'];

		foreach ($s as $s )
		{
			$i = 1;
			$startDate = $request->start_date;
			while ( $startDate <= $endDate)
			{
				$schedule = new CompanyTimeSchedule;

				$schedule->companyTT_id = $id;
				$schedule->date = $startDate;
				$schedule->time = $s;
				$schedule->normal = '';
				$schedule->help = '';

				$schedule->save();
				$i++;
				$startDate = date('Y-m-d', strtotime($startDate . '+1 days'));
			}
		}
		return redirect()->route('generator');
	}

	public function shift()
	{
		$ct = CompanyTimeSchedule::all();
		$cts = DB::table('company_time_schedules')->groupBy('date')->get();
		return view('pages.shift')->withCts($cts)->withCt($ct);
	}
}
