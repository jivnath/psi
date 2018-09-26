<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\EmployeeAvailability;
use App\Models\Company;
use DB;

class EmployeeAvailabilityController extends Controller
{
    public function index($id)
    {
        $availability = EmployeeAvailability::where('psi_number', $id)->first();
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
        $this->validate($request, $this->rules());

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


    public function edit()
    {
        $weekdays = collect(['sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday']);
        $k = 0;
        $availability = EmployeeAvailability::find(1);
        return view('availability.edit')->withAvailability($availability)->withWeekdays($weekdays)->withK($k);

    }


    public function update(Request $request)
    {
        $this->validate($request, $this->rules());

        $availability = EmployeeAvailability::find(1);

        // $availability->company_id = $request->input('company');
        $availability->sun = $request->input('sun');
        $availability->mon = $request->input('mon');
        $availability->tue = $request->input('tue');
        $availability->wed = $request->input('wed');
        $availability->thu = $request->input('thu');
        $availability->fri = $request->input('fri');
        $availability->sat = $request->input('sat');

        $availability->save();
        return redirect()->route('availability.index');
    }

    public function ajaxUpdate(Request $request)
    {
        if ($request->ajax()) {
            $time = $request->get('time');
            $psi = $request->get('psi');
            $day = $request->get('day');

            $ava = EmployeeAvailability::where('psi_number', $psi);

            $ava->$day = $time;
            $ava->save();

        }
    }

    public function getAvailability(Request $request)
    {
        if ($request->ajax()) {
            $psi = $request->get('psi');
            $employee = Employee::where('psi_number', $psi)->get();

            if($employee){
                $availability = EmployeeAvailability::where('psi_number', $psi)->first();
                if ($availability) {
                    $data = [
                        'name' => $availability->employee->name,
                        'sun' => $availability->sunday,
                        'mon' => $availability->monday,
                        'tue' => $availability->tuesday,
                        'wed' => $availability->wednesday,
                        'thu' => $availability->thursday,
                        'fri' => $availability->friday,
                        'sat' => $availability->saturday,
                    ];
                }
                else{
                    $data=1;
                }
            }
            else
            {
                $data = 0;
            }


        }
        echo json_encode($data);
    }

    public function updateAvailability(Request $request)
    {
        if($request->ajax())
        {
            $psi = $request->get('psi');
            $sun = $request->get('sun');
            $mon = $request->get('mon');
            $tue = $request->get('tue');
            $wed = $request->get('wed');
            $thu = $request->get('thu');
            $fri = $request->get('fri');
            $sat = $request->get('sat');
            $availability = EmployeeAvailability::where('psi_number', $psi)->first();
            if($availability)
            {
                $availability->sunday = $sun;
                $availability->monday = $mon;
                $availability->tuesday = $tue;
                $availability->wednesday = $wed;
                $availability->thursday = $thu;
                $availability->friday = $fri;
                $availability->saturday = $sat;
                $availability->save();

                $data=1;
            }
            else
                $data=0;
        }
        echo json_encode($data);
    }

//    protected function rules()
//    {
//        return [
//            'sunday' => 'time',
//            'monday' => 'time',
//            'tuesday' => 'time',
//            'wednesday' => 'time',
//            'thursday' => 'time',
//            'friday' => 'time',
//            'saturday' => 'time'
//        ];
//    }
}
