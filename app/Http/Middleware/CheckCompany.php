<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CheckCompany
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
        $user_role=Auth::user()->role_id;
        $req = $next($request);
        
        if ($user_role != 4) {
            return $req;
        } else {
            return redirect()->route('access.denied');
        }
    }
}
