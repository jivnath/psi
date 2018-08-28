<?php
namespace App\Http\Controllers;

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
                    $data = [
                        'country' => '',
                        'phoetic' => '',
                        'name' => '',
                        'tel' => ''
                    ];
                }
            } else {
                $data = [
                    'country' => '',
                    'phoetic' => '',
                    'name' => '',
                    'tel' => ''
                ];
            }
            echo json_encode($data);
        }
    }
}
