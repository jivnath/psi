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
Route::get('changecompany/{id}/{name}', ['as' => 'changecompany', 'uses' => 'UserController@changeCompany']);
Route::get('/primary/{id}', ['as'=>'selectPrimary', 'uses'=>'UserController@selectPrimary']);
Route::get('/select/primary', 'UserController@primary')->name('primary');

Route::get('employee/login', 'Auth\EmployeeLoginController@getLogin');
Route::post('employee/login', 'Auth\EmployeeLoginController@login')->name('employee.login');
Route::get('employee/logout', 'Auth\EmployeeLoginController@logout')->name('employee.logout');

Auth::routes();
Route::group(['middleware'=> ['employee']], function(){
    Route::prefix('employee')->group(function () {
        Route::get('/dashboard', 'Employee\Dashboard@index')->name('employee.dashboard');
    });
});
Route::group(['middleware' => ['auth']], function () {
//    Route::group(['middleware' => ['check.primary.company']], function(){
        Route::prefix('employees')->group(function () {
            Route::get('/', 'EmployeeController@index')->name('employees');
            Route::get('/show', 'EmployeeController@show')->name('employees.show');
            Route::get('/upload', 'EmployeeController@uploadForm')->name('employees.uploadForm');
            Route::post('/upload', 'EmployeeController@upload')->name('employees.upload');
            Route::post('/updateCell', 'EmployeeController@updateCell')->name('employees.updateCell');

            Route::get('/availability', 'EmployeeAvailabilityController@index')->name('availability.index');
            Route::get('/availability/add', 'EmployeeAvailabilityController@add')->name('availability.add');
            Route::post('/availability/create', 'EmployeeAvailabilityController@store')->name('availability.store');
            Route::get('/availability/edit', 'EmployeeAvailabilityController@edit')->name('availability.edit');
            Route::put('/availability/edit', 'EmployeeAvailabilityController@update')->name('availability.update');
            Route::post('/ajaxupdate', 'EmployeeAvailabilityController@ajaxUpdate')->name('availability.ajaxupdate');
            Route::get('/getAvailability', 'EmployeeAvailabilityController@getAvailability')->name('getAvailability');
            Route::post('/updateAvailability', 'EmployeeAvailabilityController@updateAvailability')->name('updateAvailability');
            Route::get('/showAvailability', 'EmployeeAvailabilityController@showAvailability')->name('showAvailability');

            Route::get('/skill', "EmployeeSkillController@add")->name('employee.skill');
            Route::post('/skill', "EmployeeSkillController@store")->name('skill.store');
            Route::post('/skill/addmore', 'EmployeeSkillController@addSkill')->name('skill.addmore');
            Route::get('/skill/all', 'EmployeeSkillController@findSkill')->name('skill.all');
            Route::get('/skill/delete', 'EmployeeSkillController@removeSkill')->name('delete.skill');


        });
        Route::prefix('report')->group(function(){
            Route::get('/employee_report','EmployeeController@FetchEmployeeDetails')->name('employee.detail.report');
        });
        Route::prefix('column')->group(function(){
                Route::post('/customize','CustomerTableView@saveCustomizedField')->name('customize.field');
                Route::get('/update_field/{type}','CustomerTableView@update_table_view')->name('field_update');
         });

        Route::prefix('company')->group(function () {
            Route::get('/manage', 'CompanyController@manageCompanies')->name('manageCompanies');
            Route::post('/manage', 'CompanyController@saveCompany')->name('company.saveCompany');
            Route::get('/create', 'CompanyController@create')->name('company.create');
            Route::get('/view', 'CompanyController@viewDetail')->name('company.details');
            Route::post('/create', 'CompanyController@store')->name('company.store');
            Route::get('edit/{id}', 'CompanyController@edit')->name('company.edit');
            Route::put('{id}', 'CompanyController@update')->name('company.update');
            Route::get('/sub', 'CompanyController@sub')->name('company.sub');
            Route::post('/subCompanyUpdate', 'CompanyController@subCompanyUpdate')->name('subcompany');
            Route::get('/getSection', 'CompanyController@getSection')->name('getSection');
            Route::get('/subSection', 'CompanyController@subSection')->name('subSection');
            Route::post('/update', 'CompanyController@updateCompanies')->name('updateCompanies');
            Route::post('/addmoreSection', 'CompanyController@addmoreSection')->name('addmoreSection');
            Route::post('/addmoreSubsection', 'CompanyController@addmoreSubsection')->name('addmoreSubsection');

            Route::get('/shifts/add', 'ShiftMasterController@add')->name('shift.add');
            Route::post('/shifts/add', 'ShiftMasterController@store')->name('shift.store');
            Route::get('/shifts/edit/{id}', 'ShiftMasterController@edit')->name('shift.edit');
            Route::put('/shifts/{id}', 'ShiftMasterController@update')->name('shift.update');

            Route::get('/users/add', 'CompanyUserController@addUser');
            Route::post('/users/add', 'CompanyUserController@storeUser')->name('company.users.store');
            Route::get('/users/edit/{id}', 'CompanyUserController@editUser')->name('company.users.edit');
            Route::put('/users/{id}', 'CompanyUserController@updateUser')->name('company.users.update');

            Route::get('/group', 'UserGroupController@index')->name('user_group');
            Route::post('group/add', 'UserGroupController@addGroup')->name('group.add');
            Route::post('group/rename', 'UserGroupController@renameGroup')->name('group.rename');
        });

        Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
        Route::get('/skills', 'SkillMasterController@manage')->name('manageSkills');
        Route::post('/skills/add', 'SkillMasterController@addSkills')->name('skills.master.add');
        Route::post('/skills/remove', 'SkillMasterController@removeSkills')->name('skills.master.remove');
        Route::post('/skills/rename', 'SkillMasterController@rename')->name('skills.master.rename');



        Route::get('/users', 'UserController@index')->name('users.index');
        Route::get('/users/create', 'UserController@createUser')->name('users.create');
        Route::post('/users/create', 'UserController@store')->name('users.store');
        Route::get('/users/edit/{id}', 'UserController@editUser')->name('users.edit');
        Route::put('/users/{id}', 'UserController@updateUser')->name('users.update');
        Route::get('/users/profile', 'UserController@profile')->name('profile');
        Route::put('/users/profile/{id}', 'UserController@updateProfile')->name('updateProfile');




        Route::get('/pages/user', 'PagesController@getUser')->name('pages.users');
        Route::get('/pages/employee', 'PagesController@getEmployee')->name('pages.employee');
        Route::get('/shift/generator', 'PagesController@generator')->name('generator');
        Route::post('/shift/generator', 'PagesController@generatorStore')->name('generator.store');
        Route::get('/shift', 'PagesController@shift')->name('pages.shift');
        Route::get('/section', 'PagesController@section')->name('section');
        Route::get('shift/show/{id}', 'PagesController@show')->name('shift.show');
        Route::post('/shift/updateCell', 'PagesController@updateCells');
        Route::get('/shift/generate', 'PagesController@getShift')->name('generator.shift');
        Route::post('ajax/shift/add', 'PagesController@ajaxAddShifts')->name('ajax.add.shifts');

        Route::resource('roles', 'RoleController');
        Route::resource('permissions', 'PermissionController');


        Route::get('/addmore','ShiftMasterController@addMore');
        Route::post('/addmore','ShiftMasterController@addMorePost');

        Route::get('/pages/total', 'TotalNecessaryController@totalNecessary')->name('total.necessary');

        Route::get('/leader/create', 'LeaderController@create')->name('leader.create');
        Route::post('/leader/create', 'LeaderController@store')->name('leader.store');
    //    Route::get('/leader/edit/{id}', 'LeaderController@edit')->name('leader.edit');
    //    Route::get('/leader/{id}', 'LeaderController@update')->name('leader.update');
        Route::get('/leader', 'LeaderController@showName')->name('leader');

        Route::get('sheet/time_table', 'DessertController@generateTimeTable')->name('sheet.time_table');
        Route::get('sheet/self', 'DessertController@dessert')->name('sheet.dessert');
        Route::get('/dessert', "DessertController@generateDessert")->name('dessert');
        Route::get('/dessert/findDetails', "DessertController@findDetails");
        Route::post('/dessert', "DessertController@storeDessert")->name('dessert.store');
        Route::post('/dessert_update', "DessertController@dessert_update")->name('dessert.update');



        Route::prefix('viber')->group(function () {
            Route::post('/viber_it', 'ViberMessageController@store_message')->name('viber.send');

            Route::get('/alert/setting', 'ViberAlertController@setting')->name('viberAlert');
            Route::post('/alert/setting', 'ViberAlertController@storeSetting')->name('storeSetting');
        });
//    });
});
Route::any('viber_bot','ViberBitIntegration@handleViberRequest')->name('viber_bot');
