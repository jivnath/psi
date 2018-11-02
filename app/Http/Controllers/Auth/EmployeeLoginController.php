<?php
namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\EmployeeLogin;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use App\Models\Employee;

use DB;
use App\Models\Raw;

class EmployeeLoginController extends Controller
{
    /*
     * |--------------------------------------------------------------------------
     * | Login Controller
     * |--------------------------------------------------------------------------
     * |
     * | This controller handles authenticating users for the application and
     * | redirecting them to your home screen. The controller uses a trait
     * | to conveniently provide its functionality to your applications.
     * |
     */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/employee/dashboard';

    protected $redirectAfterLogout = '/employee/login';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest:employee')->except('logout');
    }

    protected function guard()
    {
        return Auth::guard('employee');
    }

    public function getLogin()
    {
        return view('employee_login.login');
    }

    public function login(Request $request)
    {
        if (Auth::guard('employee')->attempt([
            'psi_number' => $request->psi_number,
            'password' => $request->password
        ])) {
//            $employee = $this->get_psi_number(Auth::guard('employee')->user()->psi_number);

            $employee = Employee::where('psi_number', $request->psi_number)->first();
            if(!$employee)
            {
            $employee = Raw::getEmpDetail($request->psi_number);
            }
//             dd($employee);

//          $psi_number = $employee->psi_number;
            $request->session()->put('username', $request->psi_number);
//          $request->session()->put('cell_no', Auth::guard('employee')->user()->psi_number);
            $request->session()->put('user_id', Auth::guard('employee')->user()->id);
            $request->session()->put('employee_name', $employee->name);
            $request->session()->put('employee_psi_number', $employee->psi_number);
            // $request->session()->put('employee_language', $employee->language);
            $request->session()->put('employee_retirement_date', $employee->retirement_date);
            $request->session()->put('employee_birth_date', $employee->birthdate);
            $request->session()->put('employee_cell_no', $employee->cell_no);
            $request->session()->put('employee_residence_card_no', $employee->residence_card_no);
            $request->session()->put('employee_residence_card_exp_date', $employee->residence_card_exp_date);
            $request->session()->put('employee_work_location', $employee->work_location);
            $request->session()->put('employee_country_citizenship', $employee->country_citizenship);
            $request->session()->put('employee_reg_officer', $employee->reg_officer);
            $request->session()->put('employee_hire_date', $employee->hire_date);
            $request->session()->put('employee_address_ip', $employee->address_ip);
            $request->session()->put('employee_phoetic_kanji', $employee->phoetic_kanji);
            $request->session()->put('employee_hourly_wage', $employee->hourly_wage);
            $request->session()->put('employee_status_residence', $employee->status_residence);

            $request->session()->put('employee_base', $employee->base);
            $request->session()->put('employee_for_work', $employee->for_work);
            $request->session()->put('employee_opt_management', $employee->opt_management);
            $request->session()->put('employee_contract_collection', $employee->contract_collection);
            $request->session()->put('employee_res_confirmation', $employee->res_confirmation);
            $request->session()->put('employee_sex', $employee->sex);
            $request->session()->put('employee_postal_code', $employee->postal_code);
            $request->session()->put('employee_business_content', $employee->business_content);
            $request->session()->put('employee_dispatch_destination', $employee->dispatch_destination);
            $request->session()->put('employee_name_of_facility', $employee->name_of_facility);
            $request->session()->put('employee_path', $employee->path);
            $request->session()->put('employee_one_way_rate', $employee->one_way_rate);
            $request->session()->put('employee_pass_price', $employee->pass_price);
            $request->session()->put('employee_hourly_employee', $employee->hourly_employee);
            $request->session()->put('employee_dependent_exemption', $employee->dependent_exemption);
            $request->session()->put('employee_notes', $employee->notes);

            $request->session()->put('employee_status', $employee->status);

            $request->session()->put('employee_account', $employee->account);
            $request->session()->put('employee_input', $employee->input);
            $request->session()->put('employee_operating_status', $employee->operating_status);
            $request->session()->put('employee_office', $employee->office);
            $request->session()->put('employee_old_double_registration', $employee->old_double_registration);
            $request->session()->put('employee_lane_employee_no', $employee->lane_employee_no);
            $request->session()->put('employee_phonetic', $employee->phonetic);
            $request->session()->put('employee_viber_install', $employee->viber_install);
            $request->session()->put('employee_email', $employee->email);
            $request->session()->put('employee_school_information', $employee->school_information);
            $request->session()->put('employee_place', $employee->place);
            $request->session()->put('employee_financial_institution', $employee->financial_institution);
            $request->session()->put('employee_branch_name', $employee->branch_name);
            $request->session()->put('employee_account_number', $employee->account_number);
            $request->session()->put('employee_expiration_date', $employee->expiration_date);
            $request->session()->put('employee_account_registration', $employee->account_registration);

            $primary = EmployeeLogin::where('psi_number', $request->psi_number)->first();
            $request->session()->put('employee_primary_company', $primary->primary_company);
            $companies = Raw::getCompaniesHavingShift();
            $request->session()->put('companies', $companies);

            return redirect()->intended($this->redirectPath());
        } else {
            return redirect('/employee/login')->withInput($request->only($request->psi_number, 'remember'))
                ->withErrors([
                $request->psi_number => 'error'
            ]);
        }
    }

    private function get_psi_number($cell_number)
    {
        return Employee::where(DB::raw("replace(cell_no,'-','')"), '=', $cell_number)->first();
    }

    public function username()
    {
        $login = request()->input('psi_number');
        $field = filter_var($login, FILTER_VALIDATE_EMAIL) ? 'email' : 'psi_number';
        request()->merge([
            $field => $login
        ]);
        return $field;
    }

    public function logout()
    {
        Auth::guard('employee')->logout();
        Session::flush();
        return redirect(property_exists($this, 'redirectAfterLogout') ? $this->redirectAfterLogout : '/');
    }
}
