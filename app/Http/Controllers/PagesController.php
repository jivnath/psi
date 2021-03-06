<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\CompanyTimeSchedule;
use App\Models\CompanyTimeTable;
use App\Models\Raw;
use App\Models\ShiftMasterData;
use Date;
use DB;
use Illuminate\Http\Request;
use Session;
use DateTime;

class PagesController extends Controller
{

    public function generator()
    {
        $allCompanies = Company::all();
        $companies = Raw::getSecondLevelCompanies();
//        dd($companies);

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
            if ($sections) {
                foreach ($sections as $section) {
                    $output .=
                        '<input type="checkbox" id="' . $section->name . '" style ="margin-left:5px; margin-top:10px;" class="sections" name="section[]" value="' . $section->id . '">' . $section->name;
                    array_push($sec, $section->name);
                }
            }
            if ($shifts) {
                foreach ($shifts as $shift) {
                    array_push($sh, $shift);
                }
            }
        }

        $data = [
            'output' => $output,
            'section' => $sec,
            'shift' => $sh
        ];
        echo json_encode($data);
    }

    public function getShift(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');

            $shift = ShiftMasterData::where('company_id', $id)->get();
            $shifts = [];
            foreach ($shift as $s) {
                array_push($shifts, $s);
            }

            echo json_encode($shifts);
        }

    }

    public function generatorStore(Request $request)
    {
        $startDate = $request->start_date;
        $endDate = $request->end_date;
        $today = date('Y-m-d');
        if ($startDate < $today || $endDate < $today || $endDate < $startDate) {
            Session::flash('error', trans('employee.Pleaseinputvaliddate!'));
            return redirect()->route('generator');
        } else {
            $section = $request['section'];
            $shift_schedule_id = uniqid();
            if (sizeof($section) > 0) {
                foreach ($section as $company) {
                    $shifts = ShiftMasterData::where('company_id', $company)->get();

                    $timeTable = new CompanyTimeTable();
                    $timeTable->schedule_session_id = $shift_schedule_id;
                    $timeTable->company_id = $company;
                    $timeTable->save();

                    $id = $timeTable->id;


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
            } else {
                $company = $request->company;
                $shifts = ShiftMasterData::where('company_id', $company)->get();

                $timeTable = new CompanyTimeTable();

                $timeTable->company_id = $company;
                $timeTable->save();

                $id = $timeTable->id;

//                $startDate = $request->start_date;
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

            return redirect()->route('pages.shift');
        }

    }

    public function ajaxAddShifts(Request $request)
    {
        if ($request->ajax()) {
            $start_shifts = $request->get('start_shifts');
            $end_shifts = $request->get('end_shifts');
            $id = $request->get('id');

            $shifts = array_combine($start_shifts, $end_shifts);
            if (count($shifts) > 0) {
                $startShift = [];
                $endShift = [];
                foreach ($shifts as $key => $value) {
                    array_push($startShift, $key);
                    array_push($endShift, $value);

                    $newshift = ShiftMasterData::firstOrNew([
                        'company_id' => $id,
                        'start_time' => $key
                    ]);

                    if ($newshift->exists) {
                        //do nothing
                    } else {
                        $newshift->company_id = $id;
                        $newshift->start_time = $key;
                        $newshift->end_time = $value;

                        $newshift->save();
                    }
                }

                $shift = ShiftMasterData::where('company_id', $id)->get();
                $shi = [];
                foreach ($shift as $s) {
                    array_push($shi, $s);
                }
//                dd($shi);

                echo json_encode($shi);
            }
        }
    }

    public function shift()
    {
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
        $data = [];

        $companies = Raw::getCompaniesForShiftShow($id);
        $types = collect([
            'normal',
            'help'
        ]);
        $dates = Raw::getDatesForShiftShow($id);
        $times = Raw::getTimesForShiftShow($id);

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

    public function reportTotalNecessary()
    {
        $company = \Session::get('primary_company');
//        dd($company);
        $year = Raw::getYear($company->id);
//        dd($year);
        $sections = Raw::getSecondLevelCompanies();

        $today = date('n');
        $barsa = date('Y');
        $total = Raw::t($barsa, $today);
        return view('reports.total_necessary', compact('year', 'total'));
    }

    public function getTotalNecessaryReportData(Request $request)
    {
        if ($request->ajax()) {
            $section = $request->get('section');
            $date = $request->get('date');

            $data = Raw::getTotalNecessaryReport($section, $date);
            $output = '';
            if (count($data) > 0) {
                foreach ($data as $datum) {
                    $html = '<tr><td>' . $datum->name . '</td><td>' . substr($datum->start_time, 0, -3) . ' - ' . substr($datum->end_time, 0, -3) . '</td><td>' . $datum->total_used . '</td><td>' . $datum->total_require . '</td></tr>';
                    $output .= $html;
                }
//                dd(1);
            } else {
//              $output = '<tr><td colspan="4">No data available.</td></tr>';
                $lang = trans("employee.NoDataAvailable");
//                dd($lang);
                $output = '<tr><td colspan="16"> ' . $lang . ' </td></tr>';
//                dd(2);
            }

        } else
            $output = '';

        echo($output);
    }

    public function getMonth(Request $request)
    {
        if ($request->ajax()) {
            $company = \Session::get('primary_company');
            $year = $request->get('year');
            $month = Raw::getMonth($company->id, $year);
            $data = '';
            foreach ($month as $m) {
//                dd($m->month);
                $dateObj = DateTime::createFromFormat('!m', $m->month);
//                dd($dateObj);
                $monthName = $dateObj->format('F');
//                dd($monthName);

                $html = "<option value='" . $m->month . "'>" . $monthName . "</option>";
                $data .= $html;
            }
//            dd($data);
            echo json_encode($data);
        }
    }

    public function generateTotalNecessaryReport(Request $request)
    {
        if($request->ajax()){
            $year = $request->get('year');
            $month = $request->get('month');
            $total = Raw::t($year, $month);
//            dd($total);
            return view('reports.total_view', compact('total'));
        }
    }
}
//