<?php

namespace App\Http\Controllers;
use App\Models\Raw;

class DashboardController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	 $expired = Raw::expiredRC();
    		return view('dashboard',['dashboard'=>$expired]);
    }
}
