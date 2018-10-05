<?php
namespace App\Http\Controllers\Employee;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use App\Models\Employee;

class LoginController extends Controller
{
    use AuthenticatesUsers;

    /**
     * Show the application’s login form.
     *
     * @return \Illuminate\Http\Response
     */
    public function getLogin()
    {
        return view('employee_login.login');
    }

    protected function guard()
    {
        return \Auth::guard('employee');
    }

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/employee/dashboard';

    protected $psi_number = 'psi_number';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest:employee')->except('logout');
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

    public function authenticated(Request $request)
    {
        if (Auth::guard('employee')->check()) {
            $request->session()->put('employee_name', Auth::guard('employee')->name);
            $request->session()->put('employee_psi_number', Auth::guard('employee')->psi_number);
//            $request->session()->put('employee_language', Auth::guard('employee')->language);
            $request->session()->put('employee_retirement_date', Auth::guard('employee')->retirement_date);
            $request->session()->put('employee_birth_date', Auth::guard('employee')->birthdate);
            $request->session()->put('employee_cell_no', Auth::guard('employee')->cell_no);
            $request->session()->put('employee_address', Auth::guard('employee')->address);
            $request->session()->put('employee_residence_card_no', Auth::guard('employee')->residence_card_no);
            $request->session()->put('employee_residence_card_exp_date', Auth::guard('employee')->residence_card_exp_date);
            $request->session()->put('employee_work_location', Auth::guard('employee')->work_location);
            $request->session()->put('employee_country_citizenship', Auth::guard('employee')->country_citizenship);
            $request->session()->put('employee_reg_officer', Auth::guard('employee')->reg_officer);
            $request->session()->put('employee_hire_date', Auth::guard('employee')->hire_date);
            $request->session()->put('employee_address_ip', Auth::guard('employee')->address_ip);
            $request->session()->put('employee_phoetic_kanji', Auth::guard('employee')->phoetic_kanji);
            $request->session()->put('employee_hourly_wage', Auth::guard('employee')->hourly_wage);
            $request->session()->put('employee_status_residence', Auth::guard('employee')->status_residence);

        }
        return redirect()->intended($this->redirectPath());

    }

    public function logout()
    {
        Auth::guard('employee')->logout();
        Session::flush();
        return redirect(property_exists($this, 'redirectAfterLogout') ? $this->redirectAfterLogout : '/employee/login');
    }

    // public function postLogin()
    // {
    //
    // }
}