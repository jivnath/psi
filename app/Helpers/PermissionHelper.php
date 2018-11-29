<?php
namespace App\Helpers;

use App\Models\PermissionModel;
use Illuminate\Support\Facades\Route;

class PermissionHelper
{

    public static function syncRoutes()
    {
        $paths = array();
        $routes = Route::getRoutes();

        foreach ($routes as $route) {
            $uri = $route->uri();
            $prefix = $route->getPrefix();
            $name = ! empty($route->getName()) ? $route->getName() : '';
            $methods = json_encode($route->methods());

            $tmp = json_decode($methods);
            if (($key = array_search('HEAD', $tmp)) !== false) {
                unset($tmp[$key]);
            }
            $head = implode('/', $tmp);

            $method = $route->getActionName();
            if (empty($uri) || empty($name))
                continue;
            $id = (new self())->updateRoutes($uri, $prefix, $name, $head, $method);
            $paths[] = array(
                $id,
                $head,
                $name,
                $uri,
                $prefix,
                $method
            );
            $id = null;
        }
        return $paths;
    }

    private function updateRoutes($uri, $prefix = '', $name, $head, $method = '')
    {
        $url_result = PermissionModel::where('perm_name', $name);
        if ($url_result->count() > 0) {
            $id = $url_result->first()->id;
            $permission_update = PermissionModel::find($id);
        } else {
            $permission_update = new PermissionModel();
        }
        $permission_update->perm_name = $name;
        $permission_update->prefix = $prefix;
        $permission_update->perm_desc = $uri;
        $permission_update->heads = $head;
        $permission_update->method = $method;
        $permission_update->save();
        return $permission_update;
    }
}