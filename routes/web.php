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
    return redirect()->route('login');
});
Route::post('changelocale', ['as' => 'changelocale', 'uses' => 'TranslationController@changeLocale']);

Auth::routes();

Route::group(['middleware' => ['auth']], function () {
    Route::get('ajax',function(){
   return view('generator');
});
    Route::post('/getmsg','AjaxController@index')->name('generator');;
    Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
    Route::get('/employees', 'EmployeeController@index')->name('employees');
    Route::get('/employees/{companyId}/show', 'EmployeeController@show')->name('employees.show');
    Route::get('/employees/upload', 'EmployeeController@uploadForm')->name('employees.uploadForm');
    Route::post('/employees/upload', 'EmployeeController@upload')->name('employees.upload');
    Route::post('/employees/updateCell', 'EmployeeController@updateCell')->name('employees.updateCell');

    Route::get('/users', 'UserController@index')->name('users.index');
    Route::get('/users/create', 'UserController@createUser')->name('users.create');
    Route::post('/users/create', 'UserController@store')->name('users.store');
    Route::get('/users/{id}/edit', 'UserController@editUser')->name('users.edit');
    Route::put('/users/{id}', 'UserController@updateUser')->name('users.update');

    Route::get('/company/create', 'CompanyController@create')->name('company.create');
    Route::post('/company/create', 'CompanyController@store')->name('company.store');
    Route::get('/company/{id}/edit', 'CompanyController@edit')->name('company.edit');
    Route::put('/company/{id}', 'CompanyController@update')->name('company.update');
    Route::get('/sub', 'CompanyController@sub')->name('company.sub');
    Route::post('/subCompanyUpdate', 'CompanyController@subCompanyUpdate')->name('subcompany');

    Route::get('/availability/show/{id}', 'EmployeeAvailabilityController@index')->name('availability.index');
    Route::get('/availability/add', 'EmployeeAvailabilityController@add')->name('availability.add');
    Route::post('/availability/create', 'EmployeeAvailabilityController@store')->name('availability.store');
    Route::get('/availability/{id}/edit', 'EmployeeAvailabilityController@edit')->name('availability.edit');
    Route::put('/availability/{id}', 'EmployeeAvailabilityController@update')->name('availability.update');

    Route::get('/pages/user', 'PagesController@getUser')->name('pages.users');
    Route::get('/pages/employee', 'PagesController@getEmployee')->name('pages.employee');
    Route::get('/generator', 'PagesController@generator')->name('generator');
    Route::post('/generator', 'PagesController@generatorStore')->name('generator.store');
    Route::get('pages/shift', 'PagesController@shift')->name('pages.shift');
    Route::get('/section', 'PagesController@section')->name('section');
    Route::get('shift/{id}/show', 'PagesController@show')->name('shift.show');
    Route::post('/shift/updateCell', 'PagesController@updateCells');

    Route::resource('roles', 'RoleController');
    Route::resource('permissions', 'PermissionController');

    Route::get('/shift/add', 'ShiftMasterController@add')->name('shift.add');
    Route::post('/shift/add', 'ShiftMasterController@store')->name('shift.store');
    Route::get('/shift/{id}/edit', 'ShiftMasterController@edit')->name('shift.edit');
    Route::put('/shift/{id}', 'ShiftMasterController@update')->name('shift.update');
    Route::get('/addmore','ShiftMasterController@addMore');
    Route::post('/addmore','ShiftMasterController@addMorePost');

    Route::get('/pages/total', 'TotalNecessaryController@totalNecessary')->name('total.necessary');

    Route::get('/leader/create', 'LeaderController@create')->name('leader.create');
    Route::post('/leader/create', 'LeaderController@store')->name('leader.store');
//    Route::get('/leader/{id}/edit', 'LeaderController@edit')->name('leader.edit');
//    Route::get('/leader/{id}', 'LeaderController@update')->name('leader.update');
    Route::get('/leader', 'LeaderController@showName')->name('leader');


    Route::get('sheet/dessert', 'DessertController@dessert')->name('sheet.dessert');
    Route::get('/dessert', "DessertController@generateDessert")->name('dessert');
    Route::get('/dessert/findDetails', "DessertController@findDetails");

});
Route::any('viber_bot','ViberBitIntegration@handleViberRequest')->name('viber_bot');
