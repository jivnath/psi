<?php

namespace App\Http\Controllers;

use App\Http\Requests\ExcelReader;
use App\Models\Employee;
use App\Models\Company;
use Illuminate\Http\Request;
use App\Models\Gender;

class EmployeeController extends Controller
{
    public function index()
    {
        $employees = Employee::groupByCompany();

        return view('employees.index', compact('employees'));
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
                    ->store();

        return redirect()->route('employees', ['companyId' => $excelReader->company_id]);
    }

    public function show(Request $request, $companyId)
    {
        $cells = Employee::byCompany($companyId);

        if ($cells->count() == 0) {
            return redirect()->route('employees');
        }

        $columns = Employee::columns(['id', 'company_id', 'created_at']);
        $sex = Gender::all();

        return view('employees.show', compact('cells', 'columns', 'companyId'))->withSex($sex);
    }

    public function updateCell(Request $request)
    {
        $this->validate($request, $this->cellRules());

        Employee::updateCell($request->all());

        return response()->json(['message' => 'Cell Updated'], 200);
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
