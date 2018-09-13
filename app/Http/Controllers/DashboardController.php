<?php
namespace App\Http\Controllers;

use App\Models\Raw;
use App\Models\DessertSheet;
use DB;
use App\Models\Employee;
use App\Models\Audit;

class DashboardController extends Controller
{

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dessert_obj = new DessertSheet();
        $data['dashboard'] = Raw::expiredRC();
        $data['total_ncessary_data'] = Raw::getTotalNeccessory();
        $data['recent_dessert_activity'] = Raw::getDessertActivity();
        $dessert_report = $dessert_obj->select('conformation_day_before', DB::raw('count(*) as total_count'))
            ->groupBy('conformation_day_before')
            ->get();
        $data['audits'] = $dessert_obj->find(4)->audits;

        $data['dessert_report'] = $this->simplify_dessert_report($dessert_report->toArray());
        $data['employee_summery'] = Raw::getConfirmedEmployees();
        $data['total_emp'] = Employee::count();
        return view('dashboard', $data);
    }

    /**
     * function to get key specific group value
     * used toArray to remove attributes except data
     *
     * @param Array $dessert_report
     * @return Array[]
     */
    private function simplify_dessert_report($dessert_report)
    {
        $desser_report = [];
        foreach ($dessert_report as $row) {
            $key = key($row);
            $desser_report[$row[$key]] = $row['total_count'];
        }
        return $desser_report;
    }
}
