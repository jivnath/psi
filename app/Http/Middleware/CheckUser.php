<?php

namespace App\Http\Middleware;

use App\Models\PermissionModel;
use App\Models\RolesToPermission_rel;
use App\Models\UserToPermission_rel;
use Closure;

class CheckUser
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
        $user_id = \Session::get('user_id');
        $req = $next($request);
        $uri = \Route::currentRouteName();
        $perm_id = PermissionModel::select('id')->where('perm_name', $uri)->first();
        $all_permission = $this->getPermission($user_id);
        if (!isset($perm_id)) {
            return $req;
        } else {
            if (in_array($perm_id->id, $all_permission)) {
                return $req;
            } else {
//             return $req;
                return redirect()->route('access.denied');
            }
        }
    }

    function getPermission($user_id)
    {
        $permissions = UserToPermission_rel::where('user_id', $user_id)->get();
        if(count($permissions)== 0)
        {
            $role = \Session::get('user_role_id');
            $permissions = RolesToPermission_rel::where('role_id', $role)->get();
        }
        $allPermissions = [];
        if ($permissions->count() > 0) {
            foreach ($permissions as $permission) {
                array_push($allPermissions, $permission->permission_id);
            }
        }
        return $allPermissions;
    }
}
