<?php
namespace App\Http\Controllers\Employee;

use App\Models\DessertSheet;
use App\Models\ShiftMasterData;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Raw;
use Session;

class Dashboard extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:employee');
    }

    public function index()
    {
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
            $events = [];
            $red = [];
            $green = [];
            foreach ($data as $datum)
            {
                if($datum->occupied < $datum->necessary)
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
//            dd($events);
            echo json_encode($events);
        }
    }

    public function storeEmployeeApplication(Request $request)
    {
        $shift = $request->shifts;
        $user = \Session::get('username');
//        dd($shift);

        $employee = DessertSheet::firstOrNew([
            'staff_no' => $user,
            'cts_id' => $shift
        ]);
        if($employee->exists)
        {
            Session::flash('error', 'You are already on the list');
            return redirect()->route('employee.dashboard');
        }
        else
        {
            $employee->staff_no = $user;
            $employee->cts_id = $shift;
            $employee->save();

            Session::flash('success', 'You are selected for the task');
            return redirect()->route('employee.dashboard');

        }
    }
}
