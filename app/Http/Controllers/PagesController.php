<?php
namespace App\Http\Controllers;

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
        if ($request->ajax()) {
            $id = $request->get('selected');

            if ($id != null) {
                $sections = DB::table('companies')->where('master_id', $id)->get();
                $output = '';
                if ($sections->count() > 0) {
                    foreach ($sections as $section) {
                        $output .= '
						<input type="checkbox" style ="margin-left:5px;" name="section[]" value="' . $section->id . '">' . $section->name;
                    }
                } else
                    $output .= '';
            } else
                $output = '';
        }

        echo $output;
    }

    public function generatorStore(Request $request)
    {
        $shifts = serialize($request['shift']);
        $section = $request['section'];
        if (sizeof($section) > 0) {
            foreach ($section as $company) {
                $timeTable = new CompanyTimeTable();

                $timeTable->company_id = $company;
                $timeTable->shift = $shifts;
                $timeTable->save();

                $id = $timeTable->id;

                $startDate = $request->start_date;
                $endDate = $request->end_date;

                $s = $request['shift'];

                foreach ($s as $s) {
                    $startDate = $request->start_date;
                    while (strtotime($startDate) <= strtotime($endDate)) {
                        $schedule = new CompanyTimeSchedule();

                        $schedule->companyTT_id = $id;
                        $schedule->date = $startDate;
                        $schedule->time = $s;
                        $schedule->normal = null;
                        $schedule->help = null;

                        $schedule->save();
                        $startDate = date('Y-m-d', strtotime($startDate . '+1 days'));
                    }
                }
            }
        } else
            return redirect()->route('generator');

        return redirect()->route('generator');
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
     $id = $request->$data['ctt_id'];
     $type = $request->$data['job_type'];
     $cts = CompanyTimeSchedule::find($id);

     $cts->$type = $request->$newValue;

    }

    public static function masterCompany($id)
    {
        $master = Company::find($id);
        return $master->name;
    }
}
