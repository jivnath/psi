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