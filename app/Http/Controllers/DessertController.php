<?php
namespace App\Http\Controllers;

use App\Models\DessertSheet;
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
                } else {
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
                    if (DessertSheet::where('staff_no', $psi)->count() > 0) {
                        $data = [];
                    } else {

                        $data = [
                            4 => $employee->country_citizenship,
                            5 => $employee->phoetic_kanji,
                            6 => $employee->name,
                            7 => $employee->cell_no
                        ];
                        if (empty($request->dessert_id)) {
                            $merge_new = [
                                23 => $this->auto_store_dessert($request)
                            ];
                            array_push($data, $merge_new);
                        } else {
                            $request->request->add([
                                'action_type' => 'update'
                            ]);

                            $merge_new = [
                                23 => $this->auto_store_dessert($request)
                            ];
                            array_push($data, $merge_new);
                        }
                    }
                }
            } else {
                $data = $default_arr;
            }
        } else {
            $data = $default_arr;
        }
        echo json_encode($data);
    }

    public function storeDessert(Request $request)
    {
        if ($request->ajax()) {
            $data = $request->get('allRecord');

            $d = new DessertSheet();
            $d->cts_id = $data[22];
            $d->staff_no = $data[3];
            $d->responsible1 = $data[8];
            $d->conformation_day_before = $data[17];
            $d->responsible2 = $data[10];
            $d->conformation_3_hours_ago = $data[18];
            $d->arrival_time_if_late = $data[12];
            $d->reason_for_late = $data[13];
            $d->call_medium = $data[19];

            $d->save();

            return response()->json($d);
        }
    }

    /**
     * generate id and populate on dessert info
     *
     * @param unknown $data
     */
    public function auto_store_dessert(Request $request)
    {
        $dessert = new DessertSheet();
        if ($request->action_type == 'update') {
            $dessert = $dessert->find($request->dessert_id);
        }
        $dessert->cts_id = $request->schedule_id;
        $dessert->staff_no = $request->psi_num;

        $dessert->save();
        return $dessert->id;
    }
}
