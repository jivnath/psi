<?php
namespace App\Http\Middleware;

use Illuminate\Support\Facades\Auth;
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
        if (\Session::get('primary_company')->first()->name != null)

            return $next($request);
        else
            return redirect('/home');
    }
}
