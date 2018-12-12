<?php
namespace App\Http\Middleware;

use App\Models\Raw;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Closure;

class checkPrimaryCompany
{

    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

//        dd(\Session::all());
        if(!Auth::check()){
            return $next($request);
        }
        $companies = Raw::getSecondLevelCompanies();
        if (\Session::get('primary_company') != null || count($companies) <= 0)

            return $next($request);
        else {
//            return response(view('pages.no_primary'));
            return redirect()->route('primary');
        }
    }
}
