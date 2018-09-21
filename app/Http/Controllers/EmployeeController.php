<?php
namespace App\Http\Controllers;

use App\Http\Requests\ExcelReader;
use App\Models\CompanyToEmployee_rel;
use App\Models\Employee;
use App\Models\Company;
use Illuminate\Http\Request;
use App\Models\Gender;
use App\Models\EmployeeSkill;

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
            'company_id',
            'created_at',
            'updated_at'
        ]);
        return view('reports.employee_details', $data);
    }

    public function uploadForm()
    {
        $companies = Company::pluck('name', 'id');

        return view('employees.upload', compact('companies'));
    }

    public function upload(ExcelReader $excelReader)
    {
        $excelReader->uploadSheet()
            ->iterateSheet()
            ->checkDuplicateAndStore();

        return redirect()->route('employees', [
            'companyId' => $excelReader->company_id
        ]);
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

        if (count($cells) == 0) {
            return redirect()->route('employees');
        }

        $columns = Employee::columns([
            'id',
            'company_id',
            'created_at'
        ]);
        $sex = Gender::all();

        return view('employees.show', compact('cells', 'columns', 'companyId'))->withSex($sex)/*->withCompanyToEmployee($companyToEmployee)*/;
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
            'company_id' => 'bail|required',
            'psi_num' => 'bail|required',
            'column' => 'bail|required',
            'value' => 'bail|required'
        ];
    }
}
