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
            $request->session()->put('username', $this->get_psi_number(Auth::guard('employee')->user()->psi_number));
            $request->session()->put('cell_no', Auth::guard('employee')->user()->psi_number);
            $request->session()->put('user_id', Auth::guard('employee')->user()->id);
            return redirect()->intended($this->redirectPath());
        }
        else {
            return redirect('/employee/login')
            ->withInput($request->only($request->psi_number, 'remember'))
            ->withErrors([
                $request->psi_number => 'error',
            ]);
        }
    }

    private function get_psi_number($cell_number)
    {
        return Employee::where(DB::raw("replace(cell_no,'-','')"), '=', $cell_number)->first()->psi_number;
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
