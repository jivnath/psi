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

        
        return redirect()->route('employees.show');
    }

    public function show()
    {
        // $companyToEmployee = CompanyToEmployee_rel::where('company_id', $companyId)->get();
        // $cells = [];
        // foreach ($companyToEmployee as $comToEmp) {
            $cells = Employee::all();//where('psi_number', $comToEmp->psi_number)->first();
            // array_push($cells, $cell);
        // }

        // $cells = Employee::byCompany($companyId);
        // dd($cells);

//        if (count($cells) == 0) {
//            return redirect()->route('employees');
//        }

        $columns = Employee::columns([
            'id',
            'created_at'
        ]);
        $sex = Gender::all();
        $all_col=PsiViewCustimizeModel::where(['status'=>'y','type'=>'employee'])->get();
        $customize_columns=PsiViewCustimizeModel::where('type','employee')->get();

        return view('employees.show', compact('cells', 'columns', 'customize_columns','all_col'))->withSex($sex)/*->withCompanyToEmployee($companyToEmployee)*/;
    }

    public function updateCell(Request $request)
    {
        $this->validate($request, $this->cellRules());

        Employee::updateCell($request->all());

        return response()->json([
            'message' => 'Cell Updated'
        ], 200);
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
