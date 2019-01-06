<?php

namespace App\Http\Controllers;

use App\Http\Requests\ExcelReader;
use App\Models\Company;
use App\Models\CompanyToEmployee_rel;
use App\Models\Employee;
use App\Models\EmployeeSkill;
use App\Models\Gender;
use App\Models\PsiViewCustimizeModel;
use App\Models\Raw;
use App\Models\SkillMaster;
use Illuminate\Http\Request;
use Session;

class EmployeeController extends Controller
{

    // public function __construct()
    // {
    // $this->middleware(['auth', 'clearance']);
    // }
    public function index()
    {
        $employees = CompanyToEmployee_rel::groupByCompany();
        $total = count($employees);

        return view('employees.index', compact('employees'))->withTotal($total);
    }

    public function FetchEmployeeDetails()
    {
        $employee_data = Employee::with([
            'employeeSkill.skill'
        ]);
        $data['employee_data'] = $employee_data->get();
//        dd($data['employee_data']);
        $data['columns'] = $employee_data->first()->columns([
            'id',
            'created_at',
            'updated_at'
        ]);
        $data['all_col'] = PsiViewCustimizeModel::where(['status' => 'y', 'type' => 'employee'])->pluck('field_name');
        foreach ($data['all_col'] as $col) {
            $column[] = $col;
        }
        $data['column'] = $column;
        $data['customize_columns'] = PsiViewCustimizeModel::where('type', 'employee')->get();
        return view('reports.employee_details', $data);
    }

    public function getEmployeeDetailsAjax(Request $request)
    {
        $employee_data = Employee::with([
            'employeeSkill.skill'
        ]);
        $allColumns = PsiViewCustimizeModel::where(['status' => 'y', 'type' => 'employee'])->get();
        $columns = [];
        foreach ($allColumns as $key => $col) {
            array_push($columns, $col->field_name);
        }

        $totalData = Employee::count();
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        $data = array();

        if (empty($request->input('search.value'))) {
            $employees = Employee::offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();
            $totalFiltered = Employee::count();
        } else {
            $search = $request->input('search.value');
            $employees = Employee::where('name', 'like', "%{$search}%")
                ->orWhere('psi_number', 'like', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();
            $totalFiltered = Employee::where('name', 'like', "%{$search}%")
                ->orWhere('psi_number', 'like', "%{$search}%")
                ->count();
        }


        if ($employees) {
            foreach ($employees as $r) {
                foreach (array_values($columns) as $column) {
                    $nestedData[$column] = $r->$column;
                }
                $skills = EmployeeSkill::where('psi_num', $r->psi_number)->get();
                if($skills)
                {
                    $sk='';
                    foreach($skills as $skill)
                    {
                        $s = SkillMaster::find($skill->skill_id);
                        $sk .= '<span class="label label-success">'.$s->skill_name.'</span>  ';
                    }
                }
                $nestedData['skills'] = $sk;
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

    public function getEmployeeAjax(Request $request)
    {
        $employee_data = Employee::with([
            'employeeSkill.skill'
        ]);
        $allColumns = PsiViewCustimizeModel::where(['status' => 'y', 'type' => 'employee'])->get();
        $columns = [];
        foreach ($allColumns as $key => $col) {
            array_push($columns, $col->field_name);
        }

        $totalData = Employee::count();
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        $data = array();

        if (empty($request->input('search.value'))) {
            $employees = Employee::offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();
            $totalFiltered = Employee::count();
        } else {
            $search = $request->input('search.value');
            $employees = Employee::where('name', 'like', "%{$search}%")
                ->orWhere('psi_number', 'like', "%{$search}%")
                ->offset($start)
                ->limit($limit)
                ->orderBy($order, $dir)
                ->get();
            $totalFiltered = Employee::where('name', 'like', "%{$search}%")
                ->orWhere('psi_number', 'like', "%{$search}%")
                ->count();
        }

        if ($employees) {
            foreach ($employees as $r) {
                foreach (array_values($columns) as $column) {
                    if($column=='sex')
                    {
                        $nestedData['sex'] = '<select name="sex" class="sex_class" data-psi_data='.$r->psi_number.'>
                                                <option value="男性"'.(str_replace(" ", "", $r->sex)=="男性"?"selected":"").'>男性</option>
                                                <option value="女性"'.(str_replace(" ", "", $r->sex)=="女性"?"selected":"").'>女性</option>
                                              </select>';
                    }
                    elseif ($column=='status_residence')
                    {
                        $nestedData['status_residence'] = '<select name="status_residence" class="status_residence" data-psi_data='.$r->psi_number.'>
                                                           <option>-----</option>
                                                           <option value="就労"'.(($r->status_residence=="就労")?"selected":"").'>就労</option>
                                                           <option value="家族滞在"'.(($r->status_residence=="家族滞在")?"selected":"").'>家族滞在</option>
                                                           <option value="留学"'.(($r->status_residence=="留学")?"selected":"").'>留学</option>
                                                           </select>';
                    }
                    elseif($column == 'viber_install')
                    {
                        $nestedData['viber_install'] = '<select name="viber_install" class="viber_install" data-psi_data='.$r->psi_number.'>
                                                        <option value="1"'.(($r->viber_install==1)?"selected":"").'>Yes</option>
                                                        <option value="0"'.(($r->viber_install==0||$r->viber_install=="")?"selected":"").'>No</option>
                                                        </select>';
                    }
                    elseif ($column=='hourly_wage')
                    {
                        $nestedData['hourly_wage']='<select name="hourly_wage" class="hourly_wage" data-psi_data='.$r->psi_number.'>
                                                    <option>-----</option>
                                                    <option value="通常の雇用主"'.(($r->hourly_wage=="通常の雇用主")?"selected":"").'>通常の雇用主</option>
                                                    <option value="セミ雇用者"'.(($r->hourly_wage=="セミ雇用者")?"selected":"").'>セミ雇用者</option>
                                                    <option value="アルバイト"'.(($r->hourly_wage=="アルバイト")?"selected":"").'>アルバイト</option>
                                                    </select>';
                    }
                    elseif ($column == 'operating_status')
                    {
                        $nestedData['operating_status']='<select name="operating_status" class="operating_status" data-psi_data='.$r->psi_number.'>
                                                         <option>-----</option>
                                                         <option value="働くこと"'.(($r->operating_status=="働くこと")?"selected":"").'>働くこと</option>
                                                         <option value="低頻度の仕事"'.(($r->operating_status=="低頻度の仕事")?"selected":"").'>低頻度の仕事</option>
                                                         <option value="やめて"'.(($r->operating_status=="やめて")?"selected":"").'>やめて</option>
                                                         </select>';
                    }
                    elseif ($column=='status')
                    {
                        $nestedData['status']='<select name="status" class="status" data-psi_data='.$r->psi_number.'>
                                                <option value="1"'.(($r->status==1)?"selected":"").'>Available</option>
                                                <option value="0"'.(($r->status==0)?"selected":"").'>Not Available</option>
                                                </select>';
                    }
                    else
                        $nestedData[$column] = $r->$column;
                }
//                $skills = EmployeeSkill::where('psi_num', $r->psi_number)->get();
//                if($skills)
//                {
//                    $sk='';
//                    foreach($skills as $skill)
//                    {
//                        $s = SkillMaster::find($skill->skill_id);
                        $sk = '<span class="btn btn-primary employee_skills" id='.$r->psi_number.'>Skills</span>';
//                    }
//                }
                $nestedData['skills'] = $sk;
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
//        dd($json_data);

        echo json_encode($json_data);
    }

    public function uploadForm()
    {
//        $companies = Company::pluck('name', 'id');

        return view('employees.upload');
    }

    public function upload(ExcelReader $excelReader)
    {
        $data = $excelReader->uploadSheet()
            ->iterateSheet()
            ->checkDuplicateAndStore();
//        dd($data['yes']);

        Session::flash('duplicate', $data['yes']);
//        dd($data);
        return redirect()->route('employees.show');
    }

    public function show($option = false)
    {
        $cells = Employee::all();

        $columns = Employee::columns([
            'id',
            'created_at'
        ]);
        $sex = Gender::all();
        $all_col = PsiViewCustimizeModel::where(['status' => 'y', 'type' => 'employee'])->get();
        $customize_columns = PsiViewCustimizeModel::where('type', 'employee')->get();
        foreach ($all_col as $col) {
            $column[] = $col->field_name;
        }
        $data = $column;


        return view('employees.show', compact('cells', 'columns', 'data', 'customize_columns', 'all_col', 'option'))->withSex($sex);
    }
    public function parseDataAtt(Request $request){
        $data=$request->all();
        $data['username']=\Session::get('username');
        return Employee::parseDataAtt($data);
    }

    public function updateCell(Request $request)
    {
        $this->validate($request, $this->cellRules());

        Employee::updateCell($request->all());

        return response()->json([
            'message' => 'Cell Updated'
        ], 200);
    }

    public function employeeWorksheet()
    {
        return view('reports.employee_worksheet');
    }

    public function getWorksheetData(Request $request)
    {
        if ($request->ajax()) {
            $fr = $request->get('from');
            $t = $request->get('to');
            $today = date('Y-m-d');
//            dd($today);

            $from = date("Y-m-d", strtotime($fr));
            $to = date("Y-m-d", strtotime($t));
//            dd($to);


            $data = Raw::employeeWorksheetData($from, $to);
//            dd($data);

            echo json_encode($data);
        }
    }

    public function attendanceManagement()
    {
//        $subSections = Raw::getSectionForAttendance();
        $primary = \Session::get('primary_company');
        $subSections = Company::where('master_id', $primary->id)->get();
        return view('reports.attendance_management', compact('data', 'subSections'));
    }

    public function getAttendanceMgmtData(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $date = $request->get('date');
            $shift = $request->get('shift');

            $data = Raw::getAttendanceMgmtData($id, $date, $shift);

            $output = '';
            if (count($data) > 0) {
                foreach ($data as $index => $datum) {
                    $html = '<tr><td>' . ($index + 1) . '</td><td>' . $datum->staff_no . '</td><td>' . $datum->name . '</td>' .
                        '<td>' . $datum->phoetic_kanji . '</td><td>' . $datum->country_citizenship . '</td><td>' . $datum->conformation_day_before . '</td>' .
                        '<td>' . $datum->conformation_3_hours_ago . '</td><td>' . $datum->cell_no . '</td>' .
                        '<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>' .
                        '</tr>';
                    $output .= $html;
                }

            } else {

                $lang = trans("employee.NoDataAvailable");
                $output = '<tr><td colspan="16"> ' . $lang . ' </td></tr>';
//                $output = '<tr><td colspan="16"> No Data Available データなし </td></tr>';
            }
            echo($output);
        }
    }

    public function getShiftsForSubsection(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $shifts = Raw::getShift($id);
            $output = '';
            foreach ($shifts as $shift) {
                $html = '<option value=' . $shift->start_time . '>' . substr($shift->start_time, 0, -3) . ' - ' . substr($shift->end_time, 0, -3) . '</option>';
                $output .= $html;
            }
//            dd($output);

            echo json_encode($output);
        }
    }

    public function updateEmployeeGender(Request $request)
    {
        if ($request->ajax()) {
            $sex = $request->get('sex');
            $psi = $request->get('psi');

            $employee = Employee::where('psi_number', $psi)->first();
            $employee->sex = $sex;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }

    public function updateEmployeeStatusResidence(Request $request)
    {
        if ($request->ajax()) {
            $status = $request->get('status');
            $psi = $request->get('psi');

            $employee = Employee::where('psi_number', $psi)->first();
//            dd($employee);
            $employee->status_residence = $status;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }

    public function updateEmployeeHourlyWage(Request $request)
    {
        if ($request->ajax()) {
            $wage = $request->get('wage');
            $psi = $request->get('psi');
//            dd($wage);

            $employee = Employee::where('psi_number', $psi)->first();
            $employee->hourly_wage = $wage;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }

    public function updateEmployeeOperatingStatus(Request $request)
    {
        if ($request->ajax()) {
            $status = $request->get('status');
            $psi = $request->get('psi');
//            dd($wage);

            $employee = Employee::where('psi_number', $psi)->first();
            $employee->operating_status = $status;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }

    public function updateEmployeeStatus(Request $request)
    {
        if ($request->ajax()) {
            $status = $request->get('status');
            $psi = $request->get('psi');

            $employee = Employee::where('psi_number', $psi)->first();
            $employee->status = $status;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }

    public function updateEmployeeViberInstall(Request $request)
    {
        if ($request->ajax()) {
            $viber = $request->get('viber');
            $psi = $request->get('psi');

            $employee = Employee::where('psi_number', $psi)->first();
            $employee->viber_install = $viber;
            $employee->save();
//            dd($employee);

            echo json_encode($employee);
        }
    }

    /**
     * Define cell update rules
     */
    protected function cellRules()
    {
        return [
            'psi_num' => 'bail|required',
            'column' => 'bail|required',
            'value' => 'bail|required'
        ];
    }

    public function selfsheetReport()
    {
        $primary = \Session::get('primary_company');
        $subSection = Company::where('master_id', $primary->id)->get();
        return view('reports.selfsheet_report', compact('data', 'subSection'));
    }

    public function getSelfSheetReport(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('id');
            $date = $request->get('date');
//            dd($date);


            $sheet = Raw::getSelfSheetReport($id, $date);
//            dd($sheet);

            $output = '';
            if (count($sheet) > 0) {
                foreach ($sheet as $index => $datum) {
                    $html = '<tr>' .
                        '<td>' . ($index + 1) . '</td><td>' . $datum->staff_no . '</td><td>' . $datum->employee_name . '</td>' .
                        '<td>' . $datum->conformation_day_before . '</td><td>' . $datum->conformation_3_hours_ago . '</td></tr>';
                    $output .= $html;
                }

            } else {

                $lang = trans("employee.NoDataAvailable");
                $output = '<tr><td colspan="13"> ' . $lang . ' </td></tr>';
            }
            echo($output);
        }
    }
}