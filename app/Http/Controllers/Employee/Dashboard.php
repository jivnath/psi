<?php

namespace App\Http\Controllers\Employee;

use App\Models\CompanyTimeSchedule;
use App\Models\DessertSheet;
use App\Models\Employee;
use App\Models\ShiftMasterData;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Raw;
use Session;
use App\Models\Company;
use DB;
use App\Models\EmployeeLogin;
use Illuminate\Support\Facades\View;


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
        if ($request->ajax()) {
            $user = \Session::get('username');
            $company = $request->get('company');
            $data = Raw::totalNecessary($company);
//            dd($data);
            $events = [];
            $red = [];
            $green = [];
            $date = [];
            $yesterday = date(strtotime("-1 days"));
            $oldDate = Raw::workedDate($user, $company);
            foreach ($oldDate as $old) {
                if (date(strtotime($old->date)) <= $yesterday)
                    array_push($date, $old);
            }
//            dd($data);
            foreach ($data as $datum) {
                if ($datum->occupied < $datum->necessary && date(strtotime($datum->date)) > $yesterday) //                dd($datum);
                {
                    $datum->hours = date('H', strtotime($datum->hours));
                    $dessert = DessertSheet::where([['staff_no', '=', $user], ['cts_id', '=', $datum->rel_id]])->first();
                    if ($dessert) {
                        array_push($green, $datum);
                    } else {
                        array_push($red, $datum);
                    }
//                    array_push($events, $datum);
                }
            }
            $companyName = Company::find($company);
            $events['red'] = $red;
            $events['green'] = $green;
            $events['date'] = $date;
            $events['company'] = $companyName->name;
//            dd($events['red']);
            echo json_encode($events);
        }
    }

    public function storeEmployeeApplication(Request $request)
    {
        $cts_id = $request->get('shift');
        $user = \Session::get('username');
        $cts = CompanyTimeSchedule::where('id', $cts_id)->first();
        $selected_date = $cts->date;
//        dd($selected_date);
        $psi_number = \Session::get('employee_psi_number');
        $start_date = \Session::get('employee_hire_date');
//        dd($start_date);
        if($start_date == null || $start_date=='')
            $start_date = $selected_date;
//        dd($start_date);
        $day = date('l', strtotime($start_date));
        if ((date('l', strtotime($selected_date))) == $day)
            $first_date = str_replace('-', '', date('Y-m-d', strtotime($selected_date)));
        else
            $first_date = str_replace('-', '', date('Y-m-d', strtotime('previous ' . $day, strtotime($selected_date))));

        $last_date = str_replace('-', '', date('Y-m-d', strtotime($first_date . ' + 6 days')));
        $total_worked = Raw::getWorkedHours($psi_number, $first_date, $last_date);

//        $total_worked = Raw::dessert_calculation_method($cts_id, $user);
//        dd($total_worked[0]->totalWorked);
        $total_needed = CompanyTimeSchedule::select(DB::raw('normal as total_needed'))->find($cts_id)->total_needed;
        $total_used = DessertSheet::where(['cts_id' => $cts_id])->whereNull('deleted_at')->count();
//        dd($total_used);

        if ($total_worked[0]->totalWorked > \Config::get('app.job_limit'))
        {
            $data = [
                'total_worked' => $total_worked[0]->totalWorked
            ];
        }
        elseif ($total_needed <= $total_used)
        {
            $data = [
                'total_worked' => $total_worked[0]->totalWorked,
                'total_needed' => $total_needed,
                'total_used' => $total_used
            ];
        }
        else
        {
            $employee = DessertSheet::firstOrNew([
                'staff_no' => $user,
                'cts_id' => $cts_id
            ]);
            if ($employee->exists)
            {
                $data['staff_no'] = $user;
                $data['cts_id'] = $cts_id;
            }
            else
            {
                $employee->staff_no = $user;
                $employee->cts_id = $cts_id;

                $employee->save();

                $data['staff_no'] = $user;
                $data['cts_id'] = $cts_id;
//                echo json_encode($employee);
            }
//            dd($employee);
//            echo json_encode($data);
        }
        echo json_encode($data);
    }

    public function getCompanyName(Request $request)
    {
        $id = $request->get('company');
        $selected_date = $request->get('date');

        $company = Company::find($id);

        $psi_number = \Session::get('employee_psi_number');
        $start_date = \Session::get('employee_hire_date');
        $day = date('l', strtotime($start_date));
        if ((date('l', strtotime($selected_date))) == $day)
            $first_date = str_replace('-', '', date('Y-m-d', strtotime($selected_date)));
        else
            $first_date = str_replace('-', '', date('Y-m-d', strtotime('previous ' . $day, strtotime($selected_date))));

        $last_date = str_replace('-', '', date('Y-m-d', strtotime($first_date . ' + 6 days')));
        $totalHours = Raw::getWorkedHours($psi_number, $first_date, $last_date);
        $data['name'] = $company->name;
        $data['hours'] = 28 - $totalHours[0]->totalWorked;
        echo json_encode($data);
    }

    public function employeeProfile()
    {   
        $id = Session::get('employee_psi_number');
        //$uname = DB::table('psi_inbox')
        //->join('users','psi_inbox.response_by_userid','=','users.id')->get();
      

        //$ename = DB::table('psi_inbox')
        //->join('employees','psi_inbox.employeeid','=','employees.psi_number')
        //->select('employees.name')->where('psi_inbox.employeeid',$id)->get();

        //$data = DB::table('psi_inbox')->where('employeeid',$id)->get();
        //return View::make('employees_dashboard.employeeProfile')->with(array('uname' => $uname, 'ename' => $ename,'data'=>$data));
        $employees = DB::table('employees')->where('psi_number',$id)->get();
        $users = DB::table('users')->get();
        $inbox= DB::table('psi_inbox')->where('employeeid',$id)->orderBy('id','desc')->paginate(3);
        return View::make('employees_dashboard.employeeProfile')->with(array('employees' => $employees, 'users' => $users,'inbox'=>$inbox));

        //return view('employees_dashboard.employeeProfile');
    }

    public function getWorkedShift(Request $request)
    {
        if ($request->ajax())
            $user = \Session::get('username');
        $companyId = $request->get('company');
        $date = str_replace('-', '', $request->get('date'));


        $data = Raw::getWorkedShift($user, $date, $companyId);

//            dd($date);
        echo json_encode($data);
    }

    public function primary()
    {
        return view('employees_dashboard.choose_primary');
    }

    public function  selectPrimary(Request $request , $id)
    {
        $emp = \Session::get('username');
        $employee = EmployeeLogin::where('psi_number', $emp)->first();
        $employee->primary_company = $id;
        $employee->save();

        $request->session()->put('employee_primary_company', $id);
        return redirect()->route('employee.dashboard');

    }
}
