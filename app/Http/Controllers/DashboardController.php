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
        $data['dashboard'] = Raw::expiredRC();
        $data['total_ncessary_data'] = Raw::getTotalNeccessory();
        $data['recent_dessert_activity'] = Raw::getDessertActivity();
        return view('dashboard', $data);
    }
}
