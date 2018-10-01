<?php
namespace App\Http\Controllers\Employee;

use App\Models\DessertSheet;
use App\Models\ShiftMasterData;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Raw;

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
            $company = $request->get('company');
            $data = Raw::totalNecessary($company);
            $events = [];
            foreach ($data as $datum)
            {
                if($datum->occupied < $datum->necessary)
                {
                    array_push($events, $datum);
                }
            }
//            dd($events);
            echo json_encode($events);
        }
    }

    public function storeEmployeeApplication(Request $request)
    {
        $shift = $request->shifts;
        $user = \Session::get('username');

        $employee = DessertSheet::firstOrNew()
    }
}
