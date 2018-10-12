<?php

namespace App\Http\Middleware;

use App\Models\PermissionModel;
use App\Models\UserToPermission_rel;
use Closure;

class CheckUser
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
        $user_id = \Session::get('user_id');
        $req = $next($request);
        $uri = $request->path();
        $perm_id = PermissionModel::select('id')->where('perm_desc', $uri)->first();
        $has_perm = UserToPermission_rel::select('permission_id')->where('user_id', $user_id)->get();
        $arr = [];
        array_push($arr, $has_perm);
        if (in_array($perm_id, $arr)) {
            return $req;
        } else {
            return redirect()->route('access.denied');
        }

    }
}
