<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PermissionModel;

class PsiPermissionController extends Controller
{

    public function updateRole(Request $request, $roleid)
    {
        $permission_relation = [];
        $permissions = PermissionModel::orderBy('prefix', 'perm_name')->get();
        foreach ($permissions as $row) {
            $permission_relation[$row->prefix][] = $row;
        }
        //roles for roleid

        return view('pages/roleUpdateForm', compact('permission_relation'));
    }
}
