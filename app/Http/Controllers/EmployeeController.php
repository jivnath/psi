<?php

namespace App\Http\Controllers;

use App\Http\Requests\ExcelReader;
use App\Models\CompanyToEmployee_rel;
use App\Models\Employee;
use App\Models\Company;
use Illuminate\Http\Request;
use App\Models\Gender;
use App\Models\EmployeeSkill;
use App\Models\PsiViewCustimizeModel;
use Session;
use App\Models\Raw;

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
//            'company_id',
            'created_at',
            'updated_at'
        ]);
        $data['all_col'] = PsiViewCustimizeModel::where(['status' => 'y', 'type' => 'employee'])->get();
        $data['customize_columns'] = PsiViewCustimizeModel::where('type', 'employee')->get();
        return view('reports.employee_details', $data);
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
//        dd($data);

        Session::flash('duplicate', $data);
        return redirect()->route('employees.show');
    }

    public function show($option=false)
    {
        $cells = Employee::all();

        $columns = Employee::columns([
            'id',
            'created_at'
        ]);
        $sex = Gender::all();
        $all_col = PsiViewCustimizeModel::where(['status' => 'y', 'type' => 'employee'])->get();
        $customize_columns = PsiViewCustimizeModel::where('type', 'employee')->get();

        return view('employees.show', compact('cells', 'columns', 'customize_columns', 'all_col','option'))->withSex($sex);
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
        $subSections = Raw::getSectionForAttendance();
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
            if (count($data)>0) {
                foreach ($data as $index => $datum) {
                    $html = '<tr><td>'. ($index+1) .'</td><td>' . $datum->staff_no . '</td><td>' . $datum->name . '</td>' .
                        '<td>' . $datum->phoetic_kanji . '</td><td>' . $datum->country_citizenship . '</td><td>' . $datum->conformation_day_before . '</td>' .
                        '<td>' . $datum->conformation_3_hours_ago . '</td><td>' . $datum->cell_no . '</td>' .
                        '<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>' .
                        '</tr>';
                    $output .= $html;
                }

            }
            else
            {

                $lang = trans("employee.NoDataAvailable");
                $output = '<tr><td colspan="16"> '. $lang .' </td></tr>';
//                $output = '<tr><td colspan="16"> No Data Available データなし </td></tr>';
            }
            echo ($output);
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
}
