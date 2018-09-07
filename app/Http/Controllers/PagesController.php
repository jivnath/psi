<?php
namespace App\Http\Controllers;

use App\Models\ShiftMasterData;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\CompanyTimeTable;
use App\Models\CompanyTimeSchedule;
use App\Models\Raw;
use DB;
use Date;

class PagesController extends Controller
{

    public function generator()
    {
        $allCompanies = Company::all();
        $companies = DB::table('companies')->where('master_id', null)->get();
        return view('pages.generator')->withCompanies($companies)->withAllCompanies($allCompanies);
    }

    public function section(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('selected');
            $output = '';
            $sections = DB::table('companies')->where('master_id', $id)->get();
            $shifts = DB::table('shift_master_datas')->where('company_id', $id)->get();
            $sh = [];
            $sec = [];
            if($sections)
            {
                foreach ($sections as $section)
                {
                    $output .=
                        '<input type="checkbox" id="'.$section->name.'" style ="margin-left:5px; margin-top:10px;" class="sections" name="section[]" value="' . $section->id . '">' . $section->name;
                    array_push($sec, $section->name );
                }
            }
            if($shifts)
            {
                foreach($shifts as $shift)
                {
                    array_push($sh, $shift);
                }
            }
        }

        $data=[
            'output' =>$output,
            'section'=>$sec,
            'shift'=>$sh
        ];
        echo json_encode($data);
    }

    public function getShift(Request $request)
    {
        if($request->ajax())
        {
            $id = $request->get('id');

            $shift = ShiftMasterData::where('company_id', $id)->get();
            $shifts = [];
            foreach($shift as $s){
                array_push($shifts, $s);
            }

            echo json_encode($shifts);
        }

    }

    public function generatorStore(Request $request)
    {
        $section = $request['section'];
        if (sizeof($section) > 0) {
            foreach ($section as $company)
            {
                $shifts = ShiftMasterData::where('company_id', $company)->get();

                $timeTable = new CompanyTimeTable();

                $timeTable->company_id = $company;
                $timeTable->save();

                $id = $timeTable->id;

                $startDate = $request->start_date;
                $endDate = $request->end_date;

                foreach ($shifts as $s) {
                    $startDate = $request->start_date;
                    while (strtotime($startDate) <= strtotime($endDate)) {
                        $schedule = new CompanyTimeSchedule();

                        $schedule->companyTT_id = $id;
                        $schedule->date = $startDate;
                        $schedule->time = $s->start_time;
                        $schedule->normal = null;
                        $schedule->help = null;

                        $schedule->save();
                        $startDate = date('Y-m-d', strtotime($startDate . '+1 days'));
                    }
                }
            }
        } else
            {
                $company = $request->company;
                $shifts = ShiftMasterData::where('company_id', $company)->get();

                $timeTable = new CompanyTimeTable();

                $timeTable->company_id = $company;
                $timeTable->save();

                $id = $timeTable->id;

                $startDate = $request->start_date;
                $endDate = $request->end_date;

                foreach ($shifts as $s) {
                    $startDate = $request->start_date;
                    while (strtotime($startDate) <= strtotime($endDate)) {
                        $schedule = new CompanyTimeSchedule();

                        $schedule->companyTT_id = $id;
                        $schedule->date = $startDate;
                        $schedule->time = $s->start_time;
                        $schedule->normal = null;
                        $schedule->help = null;

                        $schedule->save();
                        $startDate = date('Y-m-d', strtotime($startDate . '+1 days'));
                    }
                }
            }

        return redirect()->route('generator');
    }

    public function ajaxAddShifts(Request $request)
    {
        if($request->ajax()) {
            $start_shifts = $request->get('start_shifts');
            $end_shifts = $request->get('end_shifts');
            $id = $request->get('id');

            $shifts = array_combine($start_shifts, $end_shifts);
            if (count($shifts) > 0)
            {
                $startShift=[];
                $endShift=[];
                foreach ($shifts as $key => $value) {
                    array_push($startShift, $key);
                    array_push($endShift, $value);

                    $newshift = new ShiftMasterData();

                    $newshift->company_id = $id;
                    $newshift->start_time = $key;
                    $newshift->end_time = $value;

                    $newshift->save();
                }

                $shift = ShiftMasterData::where('company_id', $id)->get();
                $shi = [];
                foreach($shift as $s){
                    array_push($shi, $s);
                }

                echo json_encode($shifts);
            }
        }
    }

    public function shift()
    {
        /*
         * $shifts = CompanyTimeSchedule::whereHas('companyTimeTable.comp', function ($query) {
         * $query->groupBy('master_id');
         * })->get();
         *
         * $s = CompanyTimeSchedule::whereHas('companyTimeTable.comp', function ($query) {
         * $query->distinct('master_id');
         * })->get();
         */
        $data['results'] = Raw::getShiftView();

        return view('pages.shift', $data);
    }

    public static function getCtt($time, $company, $date)
    {
        $ctt = DB::table('company_time_schedules')->where('time', $time)
            ->where('date', $date)
            ->where('companyTT_id', $company)
            ->first();
        return $ctt;
    }

    public static function doesTimeExist($time, $id)
    {
        $does = ShiftMasterData::where('company_id', $id)->where('start_time', $time)->first();
        return $does;
    }

    public function show($id)
    {
        $data=[];
        $dates = CompanyTimeSchedule::whereHas('companyTimeTable.comp', function ($query) use ($id) {
            $query->where('master_id', $id);
        })->groupBy('date')->get();

        $times = CompanyTimeSchedule::whereHas('companyTimeTable.comp', function ($query) use ($id) {
            $query->where('master_id', $id);
        })->groupBy('time')->get();
        $companies = CompanyTimeTable::whereHas('comp', function ($query) use ($id) {
            $query->where('master_id', $id);
        })->groupBy('company_id')->get();
        $types = collect([
            'normal',
            'help'
        ]);
        /*please utilize this
        foreach ($times as $time) {
            foreach ($companies as $company) {
                foreach ($types as $type) {
                    $data[$time->time][] = [
                        'name' => $company->comp->name,
                        'id' => $company->comp->id,
                        'type' => $type
                    ];
                }
            }
        }*/

        return view('pages.show')->withDates($dates)
            ->withTimes($times)
            ->withCompanies($companies)
            ->withTypes($types)
            ->withData($data);
    }

    public function updateCells(Request $request)
    {
        $id = $request->ctt_id;
        $type = $request->job_type;
        $value = $request->value;
        $cts = CompanyTimeSchedule::find($id);

        $cts->$type = $value;
        $cts->save();
    }

    public static function masterCompany($id)
    {
        $master = Company::find($id);
        return $master->name;
    }

}
