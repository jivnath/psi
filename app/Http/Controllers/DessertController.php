<?php
namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\Raw;
use App\Models\CompanyTimeTable;

class DessertController extends Controller
{

    public function dessert()
    {
        $companies = Company::all();
        return view('sheets.dessert')->withCompanies($companies);
    }

    public function generateTimeTable(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('selected');
            if ($id != null) {
                $schedule_results = \App\Models\Company::find($id)->companyTimeTable();
                if (count($schedule_results->get()) > 0) {
                    $schedule_id = $schedule_results->first()->id;
                    $schedule_data = \App\Models\CompanyTimeTable::find($schedule_id)->companyTimeSchedule()->get();

                    return view('sheets.dessert_schedule_view', compact('schedule_data'));
                }
                else{
                    return 'No generated scheduled found';
                }
            }
        }
    }

    public function generateDessert(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('selected');
            if ($id != null) {

                $date = $request->get('selected_date');
                $dessert = Raw::getDessertInfo($id, $date);
                // dd($dessert);
                return view('sheets.dessert_view', compact('dessert'));
            }
        }
    }

    public function findDetails(Request $request)
    {
        $default_arr = [
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
}
