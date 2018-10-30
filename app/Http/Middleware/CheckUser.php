<?php
namespace App\Http\Middleware;

use App\Models\PermissionModel;
use App\Models\UserToPermission_rel;
use App\Models\RolesToPermission_rel;
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
        $has_perm = UserToPermission_rel::select('permission_id')->where('user_id', $user_id)->get();
        $all_permission = $this->getPermission($user_id);
        if(!isset($perm_id)){
            return $req;
        }
        if (in_array($perm_id->id, $all_permission)) {
            return $req;
        } else {
//             return $req;
            return redirect()->route('access.denied');
        }
    }

    function getPermission($user_id)
    {
        $permissions = UserToPermission_rel::where('user_id', $user_id)->get();
        $allPermissions = [];
        if ($permissions->count() > 0) {
            foreach ($permissions as $permission) {
                array_push($allPermissions, $permission->permission_id);
            }
        }
        $role_id = \Auth::user()->roles()
            ->pluck('id')
            ->implode('');
        $rolePermissions = RolesToPermission_rel::where('role_id', $role_id)->get();
        if ($rolePermissions->count() > 0) {
            foreach ($rolePermissions as $role) {
                array_push($allPermissions, $role->permission_id);
            }
        } else
            $allPermissions = 0;
        return $allPermissions;
    }
}
