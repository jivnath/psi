<?php
namespace App\Http\Controllers;

use App\Model\Role;
use App\Models\RolesToPermission_rel;
use Illuminate\Http\Request;
use App\Models\PermissionModel;

class PsiPermissionController extends Controller
{

    public function updateRole(Request $request, $roleid)
    {
        $allPermission = RolesToPermission_rel::where('role_id', $roleid)->get();
        $permissionsOfRole = [];
        foreach($allPermission as $all)
        {
            array_push($permissionsOfRole, $all->permission_id);
        }
        $role = Role::find($roleid);
        $permission_relation = [];
        $permissions = PermissionModel::orderBy('prefix', 'perm_name')->get();
        foreach ($permissions as $row) {
            $permission_relation[$row->prefix][] = $row;
        }
//        dd($permissionsOfRole);
//        dd($permission_relation);
        //roles for roleid
        return view('pages/roleUpdateForm', compact('permission_relation'))->withRole($role)->withPermissionsOfRole($permissionsOfRole);
    }

    public function storeUpdate(Request $request, $roleid)
    {
        $old = RolesToPermission_rel::where('role_id', $roleid)->get();
        foreach ($old as $o)
            $o->delete();

        $permissions = $request->customized;
//        dd($permissions);
        foreach($permissions as $permission)
        {
            $roleToPermission = new RolesToPermission_rel();
            $roleToPermission->role_id = $roleid;
            $roleToPermission->permission_id = $permission;
            $roleToPermission->save();

            Session::flash('success', 'Permission successfully assigned!');
            return redirect()->route('update.role', $roleid);
        }

    }
}
