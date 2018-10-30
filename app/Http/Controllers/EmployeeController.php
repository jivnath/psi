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
            'employeeSkill'
        ]);
        $data['employee_data'] = $employee_data->get();
        $data['columns'] = $employee_data->first()->columns([
            'id',
//            'company_id',
            'created_at',
            'updated_at'
        ]);
        $data['all_col']=PsiViewCustimizeModel::where(['status'=>'y','type'=>'employee'])->get();
        $data['customize_columns']=PsiViewCustimizeModel::where('type','employee')->get();
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

    public function show()
    {
        $cells = Employee::all();

        $columns = Employee::columns([
            'id',
            'created_at'
        ]);
        $sex = Gender::all();
        $all_col=PsiViewCustimizeModel::where(['status'=>'y','type'=>'employee'])->get();
        $customize_columns=PsiViewCustimizeModel::where('type','employee')->get();

        return view('employees.show', compact('cells', 'columns', 'customize_columns','all_col'))->withSex($sex);
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
        if($request->ajax())
        {
            $fr = $request->get('from');
            $t = $request->get('to');
//            $to =
            $today = date('Y-m-d');
//            dd($today);

            $from = date("Y-m-d", strtotime($fr));
            $to = date("Y-m-d", strtotime($t));
//            dd($from);


            $data = Raw::employeeWorksheetData($from, $today);
//            dd($data);

            echo json_encode($data);
        }
    }

    public function attendanceManagement()
    {
        $data = Raw::getAttendanceMgmtData();
        return view('reports.attendance_management', compact('data'));
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
