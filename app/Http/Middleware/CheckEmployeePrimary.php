<?php

namespace App\Http\Middleware;

use Closure;

class CheckEmployeePrimary
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (\Session::get('employee_primary_company') != 0)
            return $next($request);
        else {
//            return response(view('pages.no_primary'));
            return redirect()->route('primarySub');
        }
    }
}
