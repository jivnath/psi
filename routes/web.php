<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/dashboard', 'DashboardController@index')->name('home');

Route::group(['middleware' => ['auth']], function () {
    Route::get('/employees', 'EmployeeController@index')->name('employees');
    Route::get('/employees/{companyId}/show', 'EmployeeController@show')->name('employees.show');
    Route::get('/employees/upload', 'EmployeeController@uploadForm')->name('employees.uploadForm');
    Route::post('/employees/upload', 'EmployeeController@upload')->name('employees.upload');
    Route::post('/employees/updateCell', 'EmployeeController@updateCell')->name('employees.updateCell');
    Route::get('/users/{id}/edit', 'UserController@editUser')->name('users.edit');
    Route::put('/users/{id}', 'UserController@updateUser')->name('users.update');
    Route::get('/company/create', 'CompanyController@create')->name('company.create');
    Route::post('/company/create', 'CompanyController@store')->name('company.store');
    Route::get('/company/{id}/edit', 'CompanyController@edit')->name('company.edit');
    Route::put('/company/{id}', 'CompanyController@update')->name('company.update');
});
