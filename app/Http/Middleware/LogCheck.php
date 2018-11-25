<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class LogCheck
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
        $req = $next($request);
        if (Auth::guard('employee')->check()) {
            return redirect()->route('access.denied');
       // if ($req == "/login") {
         //   return redirect()->route('access.denied');
        } 
        else {
            return $req;
        }
    }
}
