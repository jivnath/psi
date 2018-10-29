<?php
namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\RolesToPermission_rel;
use App\Models\UserToPermission_rel;
use Illuminate\Http\Request;
use App\Models\PermissionModel;
use App\Models\User;
use Auth;
use Session;

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
        {
            $o->delete();
        }
        $permissions = $request->customized;
//        dd($permissions);
        foreach($permissions as $permission)
        {
            $userToPermission = new RolesToPermission_rel();
            $userToPermission->role_id = $roleid;
            $userToPermission->permission_id = $permission;
            $userToPermission->save();
        }

        Session::flash('success', 'Permission successfully assigned!');
        return redirect()->route('update.role', $roleid);

    }

    public function updateUser(Request $request)
    {
        $permission_relation = [];
        $permissions = PermissionModel::orderBy('prefix', 'perm_name')->get();
        foreach ($permissions as $row) {
            $permission_relation[$row->prefix][] = $row;
        //    dd($permission_relation);
        }
        
        $user = User::all();
        return view('pages/userUpdateForm', compact('permission_relation','user'));
    }

    public function getUserPermission(Request $request)
    {
        if($request->ajax())
        {
            $user_id = $request->get('user_id');
            $permissions = UserToPermission_rel::where('user_id', $user_id)->get();
            $allPermissions = [];
            if($permissions->count() > 0)
            {
                foreach($permissions as $permission )
                {
                    array_push($allPermissions, $permission->permission_id);
                }
            }
            else
            {
               $role_id = Auth::user()->roles()->pluck('id')->implode('');

               $rolePermissions = RolesToPermission_rel::where('role_id', $role_id)->get();

               if($rolePermissions->count() > 0)
               {
                   foreach ($rolePermissions as $role)
                   {
                       array_push($allPermissions, $role->permission_id);
                   }
               }
               else
                   $allPermissions = 0;

            }
        }
        else
        {
            $allPermissions = 0;
        }

        echo json_encode($allPermissions);
    }

    public function storePermissionToUser(Request $request)
    {
        $user_id = $request->userUpdate;
//        dd($user_id);
        $old = UserToPermission_rel::where('user_id', $user_id)->get();
        foreach ($old as $o)
        {
            $o->delete();
        }
        $permissions = $request->customized;
//        dd($permissions);
        foreach($permissions as $permission)
        {
            $userToPermission = new UserToPermission_rel();
            $userToPermission->user_id = $user_id;
            $userToPermission->permission_id = $permission;
            $userToPermission->save();
        }

        Session::flash('success', 'Permission successfully assigned!');
        return redirect()->route('update.user');
    }

}
