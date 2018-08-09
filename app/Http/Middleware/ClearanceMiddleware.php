<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class ClearanceMiddleware {
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next) {        
        if (Auth::user()->hasPermissionTo('Administer roles & permissions')) //If user has this //permission
    {
            return $next($request);
        }

        if ($request->is('company/create'))//If user is creating a post
         {
            if (!Auth::user()->hasPermissionTo('Create Company'))
         {
                abort('401');
            } 
         else {
                return $next($request);
            }
        }

        if ($request->is('company/*/edit')) //If user is editing a post
         {
            if (!Auth::user()->hasPermissionTo('Modify Company')) {
                abort('401');
            } else {
                return $next($request);
            }
        }

        if ($request->is('users/*/edit')) //If user is editing a post
         {
            if (!Auth::user()->hasPermissionTo('Modify User')) {
                abort('401');
            } else {
                return $next($request);
            }
        }

        if ($request->is('employees/upload')) //If user is editing a post
         {
            if (!Auth::user()->hasPermissionTo('Create Employee')) {
                abort('401');
            } else {
                return $next($request);
            }
        }

        if ($request->is('employees/updateCell')) //If user is editing a post
         {
            if (!Auth::user()->hasPermissionTo('Modify Employee')) {
                abort('401');
            } else {
                return $next($request);
            }
        }

        if ($request->isMethod('Delete')) //If user is deleting a post
         {
            if (!Auth::user()->hasPermissionTo('Delete Post')) {
                abort('401');
            } 
         else 
         {
                return $next($request);
            }
        }

        return $next($request);
    }
}