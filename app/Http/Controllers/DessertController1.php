<?php
namespace App\Http\Controllers;

use App\Models\DessertSheet;
use App\Models\Employee;
use App\Models\ShiftMasterData;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\Raw;
use App\Models\CompanyTimeTable;
use App\Models\PsiSelfSheetComments;
use App\Models\CompanyTimeSchedule;
use DB;
use App\Models\User;

class DessertController extends Controller
{

    public function dessert()
    {
        $allCompanies = CompanyTimeTable::all('company_id');
        $companies=[];
            foreach($allCompanies as $comp)
            {
                $company = Company::find($comp->company_id);
                if($company){
                array_push($companies, $company);
                }
            }
        return view('sheets.dessert')->withCompanies(array_unique($companies));
    }

    public function generateTimeTable(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('selected');
            $today = date('Y-m-d');
            if ($id != null) {
                $schedule_results = \App\Models\Company::find($id)->companyTimeTable();
                if (count($schedule_results->get()) > 0) {
                    $schedule_id = $schedule_results->first()->id;
                    $schedule_data = $dates = CompanyTimeSchedule::whereHas('companyTimeTable.comp', function ($query) use ($id) {
                        $query->where('id', $id);
                    })->where('date', '>=', $today)->groupBy('date')->get();

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
                $role = \Session::get('user_role_id');
                $userlist=User::where('role_id', $role)->get();

                return view('sheets.dessert_view', compact('dessert','userlist'));
            }
        }
    }

    public function allResponsible(Request $request)
    {
        if($request->ajax()){
            $cts_id = $request->get('cts_id');
            $responsible = $request->get('responsible');
            $desserts = DessertSheet::where('cts_id', $cts_id)->get();
            foreach ($desserts as $dessert)
            {
                if(!$dessert->responsible1)
                {
                    $dessert->responsible1 = $responsible;
                    $dessert->save();
                }
            }
//            dd(1);
            echo json_encode(1);
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
            $dessert_id = $request->get('schedule_id');
            if ($psi != null) {
                $employee = Employee::where('psi_number', $psi)->first();
                if ($employee) {
                    if (DessertSheet::where([['staff_no', $psi],['cts_id', $dessert_id]])->count() > 0) {
                        $data = [];
                    } else {
                        $cts = CompanyTimeSchedule::find($dessert_id);
                        $date = $cts->date;
                        if($employee->hire_date)
                            $hireDate = $employee->hire_date;
                        else
                            $hireDate = $date;

                        $day = date('l', strtotime($hireDate));
                        if ((date('l', strtotime($date))) == $day)
                            $first_date = str_replace('-', '', date('Y-m-d', strtotime($date)));
                        else
                            $first_date = str_replace('-', '', date('Y-m-d', strtotime('previous ' . $day, strtotime($date))));

                        $last_date = str_replace('-', '', date('Y-m-d', strtotime($first_date . ' + 6 days')));
                        $total_work = Raw::getWorkedHours($psi, $first_date, $last_date);
                        $selectedShift = Raw::getShiftTime($dessert_id);
//                        dd($total_worked);
                        $total_worked = $total_work[0]->totalWorked + $selectedShift[0]->shiftTime;
                            //check time limit
//                        $total_worked=Raw::dessert_calculation_method($dessert_id,$psi);
                        $total_needed = CompanyTimeSchedule::select(DB::raw('normal as total_needed'))->find($dessert_id)->total_needed;
                        $total_used=DessertSheet::where(['cts_id'=>$dessert_id])->whereNull('deleted_at')->count();
                        if($total_worked > \Config('app.job_limit')) {
                            $data = [
                                'total_worked' => $total_worked
                            ];
                        } elseif($total_needed <=$total_used){
                            $data = [
                                'total_worked' => $total_worked,
                                'total_needed'=>$total_needed,
                                'total_used'=>$total_used
                            ];
                        }
                        else {
                            $data = [
                                4 => $employee->country_citizenship,
                                5 => $employee->phoetic_kanji,
                                6 => $employee->name,
                                7 => $employee->cell_no,
                                'total_worked' => $total_worked
                            ];
                            if (empty($request->dessert_id)) {

                                $data[23]=$this->auto_store_dessert($request);
                            } else {
                                $request->request->add([
                                    'action_type' => 'update'
                                ]);
                            $data[23]=$this->auto_store_dessert($request);
                        }
                        }
                    }
                }
                else{
                    $data = $default_arr;
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

    public function dessert_update(Request $request)
    {

        if ($request->field == 'comments') {
            $psi_self = new PsiSelfSheetComments();
            $psi_self->self_id = $request->dessert_id;
            $psi_self->comments = $request->field_value;
            $psi_self->msg_status = 'sent';
            $psi_self->msg_medium = 'viber';
            $psi_self->save();
            return $psi_self->where('self_id', $request->dessert_id)->count();
        }
        elseif($request->field=='deleted'){
            $dessert = DessertSheet::find($request->dessert_id);
            $dessert->delete();
            return response()->json($dessert);
        }else {

            $dessert = DessertSheet::find($request->dessert_id);
            $dessert->{$request->field} = $request->field_value;
            $dessert->save();
            $response=response()->json($dessert);
            if($request->field=='flag'){
                Employee::where('psi_number', $dessert->staff_no)->update([
                    'flag' => $request->field_value
                ]);
            }
            return $response;
        }
    }
}
