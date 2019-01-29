<?php

namespace App\Http\Controllers;

use App\Http\Requests\ExcelReader;
use App\Models\Hotel;
use App\Models\HotelColumn;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;


class HotelEmployeeController extends Controller
{
    public function index()
    {
        $columns = HotelColumn::where('status', 'y')->get();
        $all_columns = HotelColumn::all();
        $data = [];
        foreach ($columns as $column)
        {
            $data[] = $column->field_name;
        }
//        dd($columns);
        return view('hotels.index', compact('data', 'all_columns'));
    }

    public function upload()
    {
        return view('hotels.upload');
    }

    public function uploadExcel(ExcelReader $excelReader)
    {
        $data = $excelReader->uploadSheet()
            ->iterateSheet()
            ->checkDuplicateAndStore();
        Session::flash('duplicate', $data['yes']);
        return redirect()->route("hotels.index");
    }

    public function getHotelEmployeeAjax(Request $request)
    {
        if($request->ajax())
        {
            $data['all_col'] = HotelColumn::where(['status' => 'y'])->pluck('field_name');
            $column = $data['all_col'];
            $columns = [];
            foreach ($column as $c)
            {
                $columns[] = $c;
            }
            $totalData = Hotel::count();
            $limit = $request->input('length');
            $start = $request->input('start');
            $order = $columns[$request->input('order.0.column')];
            $dir = $request->input('order.0.dir');

            $data = array();

            if (empty($request->input('search.value'))) {
                $employees = Hotel::offset($start)
                    ->limit($limit)
                    ->orderBy($order, $dir)
                    ->get();
                $totalFiltered = Hotel::count();
            } else {
                $search = $request->input('search.value');
                $employees = Hotel::where('name', 'like', "%{$search}%")
                    ->orWhere('employee_number', 'like', "%{$search}%")
                    ->offset($start)
                    ->limit($limit)
                    ->orderBy($order, $dir)
                    ->get();
                $totalFiltered = Hotel::where('name', 'like', "%{$search}%")
                    ->orWhere('employee_number', 'like', "%{$search}%")
                    ->count();
            }
            if ($employees) {
                foreach ($employees as $r) {
                    foreach (array_values($columns) as $column) {
                        if($column=='gender')
                        {
                            $nestedData['gender'] = '<select name="gender" class="gender" data-psi_data='.$r->employee_number.'>
                                            <option value="男性"'.(str_replace(" ", "", $r->gender)=="男性"?"selected":"").'>男性</option>
                                            <option value="女性"'.(str_replace(" ", "", $r->gender)=="女性"?"selected":"").'>女性</option>
                                          </select>';
                        }
                        else if($column=='viber_install')
                        {
                            $nestedData['viber_install'] = '<select name="viber_install" class="viber_install" data-psi_data='.$r->employee_number.'>
                                              <option value="1"'.(str_replace(" ", "", $r->viber_install)=="1"?"selected":"").'>'.__("yes").'</option>
                                              <option value="0"'.(str_replace(" ", "", $r->viber_install)=="0"?"selected":"").'>'.__("no").'</option>
                                          </select>';
                        }
                        else if($column=='for_work')
                        {
                            $nestedData['for_work'] = '<select name="for_work" class="for_work" data-psi_data='.$r->employee_number.'>
                                            <option>'.__("none").'</option>
                                            <option value="全く情報無し"'.(str_replace(" ", "", $r->for_workl)=="全く情報無し"?"selected":"").'>全く情報無し</option>
                                            <option value="銀行口座入力"'.(str_replace(" ", "", $r->for_work)=="銀行口座入力"?"selected":"").'>銀行口座入力</option>
                                            <option value="社内に情報アリ"'.(str_replace(" ", "", $r->for_work)=="社内に情報アリ"?"selected":"").'>社内に情報アリ</option>
                                            <option value="情報更新済み"'.(str_replace(" ", "", $r->for_work)=="情報更新済み"?"selected":"").'>情報更新済み</option>
                                          </select>';
                        }
                        else if($column=='operational_status')
                        {
                            $nestedData['operational_status'] = '<select name="operational_status" class="operational_status" data-psi_data='.$r->employee_number.'>
                                            <option>'.__("none").'</option>
                                            <option value="休止中"'.(str_replace(" ", "", $r->operational_status)=="休止中"?"selected":"").'>休止中</option>
                                            <option value="別番号管理"'.(str_replace(" ", "", $r->operational_status)=="別番号管理"?"selected":"").'>別番号管理</option>
                                          </select>';
                        }
                        else if($column=='hourly_employee')
                        {
                            $nestedData['hourly_employee'] = '<select name="hourly_employee" class="hourly_employee" data-psi_data='.$r->employee_number.'>
                                            <option>'.__("none").'</option>
                                            <option value="正社員"'.(str_replace(" ", "", $r->hourly_employee)=="正社員"?"selected":"").'>正社員</option>
                                            <option value="別番号管理"'.(str_replace(" ", "", $r->hourly_employee)=="別番号管理"?"selected":"").'>別番号管理</option>
                                            <option value="ｱﾙﾊﾞｲﾄ"'.(str_replace(" ", "", $r->hourly_employee)=="ｱﾙﾊﾞｲﾄ"?"selected":"").'>ｱﾙﾊﾞｲﾄ</option>
                                          </select>';
                        }
                        else
                        {
                            $nestedData[$column] = $r->$column;
                        }
                    }
                    $data[] = $nestedData;
                }
//            dd($data);
            }

            $json_data = array(
                "draw" => intval($request->input('draw')),
                "recordsTotal" => intval($totalData),
                "recordsFiltered" => intval($totalFiltered),
                "data" => $data
            );

            echo json_encode($json_data);
        }
    }

    public function updateCell(Request $request)
    {
        Hotel::updateCell($request->all());

        return response()->json([
            'message' => 'Cell Updated'
        ], 200);
    }

    public function updateHotelGender(Request $request)
    {
        if ($request->ajax()) {
            $sex = $request->get('sex');
            $no = $request->get('no');

            $employee = Hotel::where('employee_number', $no)->first();
            $employee->gender = $sex;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }

    public function updateHotelViberInstall(Request $request)
    {
        if ($request->ajax()) {
            $viber = $request->get('viber');
            $no = $request->get('no');

            $employee = Hotel::where('employee_number', $no)->first();
            $employee->viber_install = $viber;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }

    public function updateHotelForWork(Request $request)
    {
        if ($request->ajax()) {
            $forWork = $request->get('work');
            $no = $request->get('no');

            $employee = Hotel::where('employee_number', $no)->first();
            $employee->for_work = $forWork;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }

    public function updateHotelOperationalStatus(Request $request)
    {
        if ($request->ajax()) {
            $status = $request->get('status');
            $no = $request->get('no');

            $employee = Hotel::where('employee_number', $no)->first();
            $employee->operational_status = $status;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }

    public function updateHotelHourlyEmployee(Request $request)
    {
        if ($request->ajax()) {
            $hourly = $request->get('hourly');
            $no = $request->get('no');

            $employee = Hotel::where('employee_number', $no)->first();
            $employee->hourly_employee = $hourly;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }
}
