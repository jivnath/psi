<?php
namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use App\Models\Employee;
use DB;

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
            $employee = $this->get_psi_number(Auth::guard('employee')->user()->psi_number);
            $psi_number = $employee->psi_number;
            $request->session()->put('username', $psi_number);
            $request->session()->put('cell_no', Auth::guard('employee')->user()->psi_number);
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
            $request->session()->put('employee_address_ip', $employee->address_jp);
            $request->session()->put('employee_phoetic_kanji', $employee->phoetic_kanji);
            $request->session()->put('employee_hourly_wage', $employee->hourly_wage);
            $request->session()->put('employee_status_residence', $employee->status_residence);


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
