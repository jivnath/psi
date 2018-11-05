<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/generator', 'PagesController@generatorWork')->name('generator.work');
Route::group(['prefix'=>'language'],function(){
    Route::get('/language', ['as'=>'language.translate','uses'=>'Api\SyncLanguageController@translate']);
    Route::get('/sync_col', ['as'=>'language.sync_col','uses'=>'Api\SyncLanguageController@sync_col']);
});