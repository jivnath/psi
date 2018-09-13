<?php
namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Company;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use App\Models\CompanyToUser_rel;

class LoginController extends Controller
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
    protected $redirectTo = '/dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function authenticated(Request $request)
    {
        if (Auth::check()) {
            $request->session()->put('username', Auth::user()->name);
            $request->session()->put('user_id', Auth::user()->id);
            $request->session()->put('user_language', Auth::user()->language);

            $companiesOfUsers = CompanyToUser_rel::where('user_id', Auth::user()->id)->get();
            $companies = [];
            foreach($companiesOfUsers as $userCompany)
            {
                $company = Company::find($userCompany->company_id);
                array_push($companies, $company);
            }

            $request->session()->put('user_companies', $companies);
            $request->session()->put('primary_company',collect($companies)->first());
            $request->session()->put('user_email', Auth::user()->email);

        }
        return redirect()->intended($this->redirectPath());

    }

    public function logout()
    {
        Auth::logout();
        Session::flush();
        return redirect(property_exists($this, 'redirectAfterLogout') ? $this->redirectAfterLogout : '/');
    }
}
