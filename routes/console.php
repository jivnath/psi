<?php
use Illuminate\Foundation\Inspiring;
use App\Helpers\PermissionHelper;

/*
 * |--------------------------------------------------------------------------
 * | Console Routes
 * |--------------------------------------------------------------------------
 * |
 * | This file is where you may define all of your Closure based console
 * | commands. Each Closure is bound to a command instance allowing a
 * | simple approach to interacting with each command's IO methods.
 * |
 */

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->describe('Display an inspiring quote');
Artisan::command('sync:uri', function () {
//     $this->comment(PermissionHelper::syncRoutes());
    $headers = [
        'ID',
        'PREFIX',
        'URI'
    ];
    $data = PermissionHelper::syncRoutes();
    $this->table($headers, $data);
})->describe('Sync URI');
Artisan::command('cron:run', function () {
    $request = Request::create('/cron_process', 'GET');
    $response = Route::dispatch($request);
    return $response;
})->describe('Sync URI');