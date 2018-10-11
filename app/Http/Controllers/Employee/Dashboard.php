<?php
namespace App\Http\Controllers\Employee;

use App\Models\CompanyTimeSchedule;
use App\Models\DessertSheet;
use App\Models\ShiftMasterData;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Raw;
use Session;
use App\Models\Company;
use DB;


class Dashboard extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:employee');
    }

    public function index()
    {
//         dd(\Session::all());
        $companies = Raw::getCompaniesHavingShift();
//        dd($companies);
        return view('employees_dashboard.dashboard', compact('companies'));
    }

    public function getDataForCalendar(Request $request)
    {
        if($request->ajax())
        {
            $user = \Session::get('username');
            $company = $request->get('company');
            $data = Raw::totalNecessary($company);
//            dd($data);
            $events = [];
            $red = [];
            $green = [];
            $date=[];
            $yesterday = date(strtotime("-1 days"));
            $oldDate = Raw::workedDate($user, $company);
            foreach ($oldDate as $old)
            {
                if(date(strtotime($old->date)) <= $yesterday)
                    array_push($date, $old);
            }
//            dd($data);
            foreach ($data as $datum)
            {
                if($datum->occupied < $datum->necessary && date(strtotime($datum->date)) > $yesterday)
                {
                    $dessert = DessertSheet::where([['staff_no', '=', $user],['cts_id', '=', $datum->rel_id]])->first();
                    if($dessert)
                    {
                            array_push($green, $datum);
                    }
                    else
                    {
                        array_push($red, $datum);
                    }
//                    array_push($events, $datum);
                }
            }
            $events['red'] = $red;
            $events['green'] = $green;
            $events['date'] = $date;
//            dd($events);
            echo json_encode($events);
        }
    }

    public function storeEmployeeApplication(Request $request)
    {


        $cts_id = $request->get('shift');
        $user = \Session::get('username');
//        dd($shift);

        $total_worked=Raw::dessert_calculation_method($cts_id,$user);
//        dd($total_worked);
        $total_needed = CompanyTimeSchedule::select(DB::raw('normal+help as total_needed'))->find($cts_id)->total_needed;
        $total_used=DessertSheet::where(['cts_id'=>$cts_id])->whereNull('deleted_at')->count();
        if($total_worked['total_worked'] > \Config::get('app.job_limit')) {
            $data = [
                'total_worked' => $total_worked['total_worked']
            ];
        }
        elseif($total_needed <=$total_used){
            $data = [
                'total_worked' => $total_worked['total_worked'],
                'total_needed'=>$total_needed,
                'total_used'=>$total_used
            ];
        }
        else{
            $employee = DessertSheet::firstOrNew([
                'staff_no' => $user,
                'cts_id' => $cts_id
            ]);
            if($employee->exists)
            {
//            Session::flash('error', 'You are already on the list');
//            return redirect()->route('employee.dashboard');
            }
            else
            {
                $employee->staff_no = $user;
                $employee->cts_id = $cts_id;
                $employee->save();

                $data['staff_no'] = $user;
                $data['cts_id'] = $cts_id;
//            Session::flash('success', 'You are selected for the task');
//            return redirect()->route('employee.dashboard');

            }
            echo json_encode($employee);
        }


    }

    public function getCompanyName(Request $request)
    {
        $id = $request->get('company');
        $company = Company::find($id);

        echo json_encode($company->name);
    }

    public function employeeProfile()
    {
        return view('employees_dashboard.employeeProfile');
    }

    public function getWorkedShift(Request $request)
    {
        if($request->ajax())
            $user = \Session::get('username');
            $companyId = $request->get('company');
            $date = str_replace('-', '', $request->get('date'));


            $data = Raw::getWorkedShift($user, $date, $companyId);

//            dd($date);
            echo json_encode($data);
    }

    public static function getWorkedHours()
    {
        $psi = \Session::get('username');
        $dessert_id = 808;
        $total_worked=Raw::dessert_calculation_method($dessert_id,$psi);
        $total_needed = CompanyTimeSchedule::select(DB::raw('normal+help as total_needed'))->find($dessert_id)->total_needed;
        $total_used=DessertSheet::where(['cts_id'=>$dessert_id])->whereNull('deleted_at')->count();
        if($total_worked['total_worked'] > \Config::get('app.job_limit')) {
            $data = [
                'total_worked' => $total_worked['total_worked']
            ];
        } elseif($total_needed <=$total_used){
            $data = [
                'total_worked' => $total_worked['total_worked'],
                'total_needed'=>$total_needed,
                'total_used'=>$total_used
            ];
        }
        else{
//            your awesome code should be here
        }
    }

    public static function getWeekRange()
    {
        $psi_number = \Session::get('employee_psi_number');
        $start_date = \Session::get('employee_hire_date');
        $day = date('l', strtotime($start_date));
//        dd($day);

        $selected_date = strtotime("2018-10-07");

        $first_date = str_replace('-', '', date('Y-m-d', strtotime('previous '.$day, $selected_date)));
//        dd($first_date);

        $last_date = str_replace('-', '', date('Y-m-d', strtotime($first_date. ' + 6 days')));

        $totalHours = Raw::getWorkedHours($psi_number, $first_date, $last_date);

        return $totalHours;
    }
}
