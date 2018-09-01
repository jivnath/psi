<?php
namespace App\Http\Controllers;

use App\DessertSheet;
use App\Models\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\Raw;

class DessertController extends Controller
{

    public function dessert()
    {
        $companies = Company::all();
        return view('sheets.dessert')->withCompanies($companies);
    }

    public function generateDessert(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('selected');
            if ($id != null) {
                $dessert = Raw::getDessertInfo($id);
                // dd($dessert);
                return view('sheets.dessert_view', compact('dessert'));
            }
        }
    }

    public function findDetails(Request $request)
    {
        $default_arr= [
            4 => '',
            5 => '',
            6 => '',
            7 => ''
        ];
        if ($request->ajax()) {
            $psi = $request->get('psi_num');
            if ($psi != null) {
                $employee = Employee::where('psi_number', $psi)->first();
                if (count($employee) > 0) {
                    $data = [
                        4 => $employee->country_citizenship,
                        5 => $employee->phoetic_kanji,
                        6 => $employee->name,
                        7 => $employee->cell_no
                    ];
                } else {
                    $data = $default_arr;
                }
            } else {
                $data = $default_arr;
            }
            echo json_encode($data);
        }
    }

    public function storeDessert(Request $request)
    {
        if($request->ajax())
        {
            dd($request->all());
            $data = $request->get('allRecord');

            $d = new DessertSheet();
            $d->cts_id = $data[22];
            $d->staff_no = $data[3];
            $d->responsible1 = $data[8];
            $d->conformation_day_before = $data[17];
            $d->respondible2 = $data[10];
            $d->conformation_3_hours_ago =$data[18];
            $d->arrival_time_if_late = $data[12];
            $d->reason_for_late = $data[13];
            $d->call_medium = $data[19];

            $d->save();

            return redirect()->route('sheet.dessert');



        }
    }

}
