<?php

namespace App\Http\Controllers;

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
}
