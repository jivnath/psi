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
        if($request->ajax())
        {
            $id = $request->get('selected');
            if($id != null) {
                $dessert = Raw::getDessertInfo($id);
//                dd($dessert);
                return view('sheets.dessert_view',compact('dessert'));

            }
        }
    }

    public function findDetails(Request $request)
    {
        if($request->ajax())
        {
            $psi = $request->get('psi_num');
            if($psi != null)
            {
                $employee = Employee::where('psi_number', $psi)->first();

                $data=[
                    'country'=>$employee->country_citizenship,
                    'phoetic'=>$employee->phoetic_kanji,
                    'name'=>$employee->name,
                    'tel'=>$employee->cell_no
                ];
            }
            else
            {
                $data=[
                    'country'=>'',
                    'phoetic'=>'',
                    'name'=>'',
                    'tel'=>''
                ];
            }
            echo json_encode($data);
        }
    }
}
