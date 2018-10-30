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
Route::get('/primary/{id}', ['as' => 'selectPrimary', 'uses' => 'UserController@selectPrimary']);
Route::get('/select/primary', ['as' => 'primary', 'uses' => 'UserController@primary']);
Route::get('/primarySub/{id}', ['as' => 'selectPrimarySub', 'uses' => 'Employee\Dashboard@selectPrimary']);
Route::get('select/primarySub', ['as' => 'primarySub', 'uses' => 'Employee\Dashboard@primary']);

Route::get('employee/login', 'Auth\EmployeeLoginController@getLogin');
Route::post('employee/login', ['as' => 'employee.login', 'uses' => 'Auth\EmployeeLoginController@login']);
Route::get('employee/logout', ['as' => 'employee.logout', 'uses' => 'Auth\EmployeeLoginController@logout']);

Auth::routes();
Route::group(['middleware'=> ['employee']], function(){
    Route::group(['middleware'=>['check.employee.primary']], function(){
        Route::prefix('employee')->group(function () {
            Route::get('/dashboard', ['as' => 'employee.dashboard', 'uses' => 'Employee\Dashboard@index']);
            Route::get('/getDataForCalendar', ['as' => 'getDataForCalendar', 'uses' => 'Employee\Dashboard@getDataForCalendar']);
            Route::post('/storeEmployeeApplication', ['as' => 'storeEmployeeApplication', 'uses' => 'Employee\Dashboard@storeEmployeeApplication']);
            Route::get('/getCompanyName', ['as'=>'getCompanyName', 'uses'=>'Employee\Dashboard@getCompanyName']);
            Route::get('/profile', ['as'=>'employee.profile', 'uses'=>'Employee\Dashboard@employeeProfile']);
            Route::get('/getWorkedShift', ['as' => 'getWorkedShift', 'uses' => 'Employee\Dashboard@getWorkedShift']);
            Route::post('/storeMessage', ['as' => 'inbox.store', 'uses' => 'PsiInboxController@store']);





        });
    });
});
Route::group(['middleware' => ['auth']], function () {
   Route::group(['middleware'=>['check.user']], function(){
    Route::group(['middleware' => ['check.primary.company']], function(){
        Route::prefix('employees')->group(function () {
            Route::get('/', ['as' => 'employees', 'uses' => 'EmployeeController@index']);
            Route::get('/show', ['as' => 'employees.show', 'uses' => 'EmployeeController@show']);
            Route::get('/upload', ['as' => 'employees.uploadForm','uses' => 'EmployeeController@uploadForm']);
            Route::post('/upload', ['as' => 'employees.upload', 'uses' => 'EmployeeController@upload']);
            Route::post('/updateCell', ['as' => 'employees.updateCell', 'uses' => 'EmployeeController@updateCell']);

            Route::get('/availability', ['as' => 'availability.index', 'uses' => 'EmployeeAvailabilityController@index']);
            Route::get('/availability/add', ['as' => 'availability.add', 'uses' => 'EmployeeAvailabilityController@add']);
            Route::post('/availability/create', ['as' => 'availability.store', 'uses' => 'EmployeeAvailabilityController@store']);
            Route::get('/availability/edit', ['as' => 'availability.edit', 'uses' => 'EmployeeAvailabilityController@edit']);
            Route::put('/availability/edit', ['as '=> 'availability.update', 'uses' => 'EmployeeAvailabilityController@update']);
            Route::post('/ajaxupdate', ['as' => 'availability.ajaxupdate', 'uses' => 'EmployeeAvailabilityController@ajaxUpdate']);
            Route::get('/getAvailability', ['as' => 'getAvailability', 'uses' => 'EmployeeAvailabilityController@getAvailability']);
            Route::post('/updateAvailability', ['as' => 'updateAvailability', 'uses' => 'EmployeeAvailabilityController@updateAvailability']);
            Route::get('/showAvailability', ['as' => 'showAvailability', 'uses' => 'EmployeeAvailabilityController@showAvailability']);

            Route::get('/skill', ['as' => 'employee.skill' , 'uses' => 'EmployeeSkillController@add']);
            Route::post('/skill', ['as' => 'skill.store', 'uses' => 'EmployeeSkillController@store']);
            Route::post('/skill/addmore', ['as' => 'skill.addmore', 'uses' => 'EmployeeSkillController@addSkill']);
            Route::get('/skill/all', ['as' => 'skill.all', 'uses' => 'EmployeeSkillController@findSkill']);
            Route::get('/skill/delete',['as' => 'delete.skill', 'uses' => 'EmployeeSkillController@removeSkill']);


        });

        Route::prefix('report')->group(function(){
            Route::get('/employee_report', ['as' => 'employee.detail.report', 'uses' => 'EmployeeController@FetchEmployeeDetails']);
            Route::get('/employee_worksheet', ['as' => 'employee.worksheet.report', 'uses' => 'EmployeeController@employeeWorksheet']);
            Route::get('/getWorksheetData', ['as'=>'getWorksheetData', 'uses'=> 'EmployeeController@getWorksheetData']);
        });
        Route::prefix('column')->group(function(){
                Route::post('/customize', ['as' => 'customize.field', 'uses' => 'CustomerTableView@saveCustomizedField']);
                Route::get('/update_field/{type}', ['as' => 'field_update', 'uses' => 'CustomerTableView@update_table_view']);
         });

        Route::prefix('company')->group(function () {
            Route::get('/manage', ['as' => 'manageCompanies', 'uses' => 'CompanyController@manageCompanies']);
            Route::post('/manage', ['as' => 'company.saveCompany', 'uses' => 'CompanyController@saveCompany']);
            Route::get('/create', ['as' => 'company.create', 'uses' => 'CompanyController@create']);
            Route::get('/view', ['as' => 'company.details', 'uses' => 'CompanyController@viewDetail']);
            Route::post('/create', ['as' => 'company.store', 'uses' => 'CompanyController@store']);
            Route::get('edit/{id}', ['as' => 'company.edit', 'uses' => 'CompanyController@edit']);
            Route::put('{id}', ['as' => 'company.update', 'uses' => 'CompanyController@update']);
            Route::get('/sub', ['as' => 'company.sub', 'uses' => 'CompanyController@sub']);
            Route::post('/subCompanyUpdate', ['as' => 'subcompany', 'uses' => 'CompanyController@subCompanyUpdate']);
            Route::get('/getSection', ['as' => 'getSection', 'uses' => 'CompanyController@getSection']);
            Route::get('/subSection', ['as' => 'subSection', 'uses' => 'CompanyController@subSection']);
            Route::post('/update', ['as' => 'updateCompanies', 'uses' => 'CompanyController@updateCompanies']);
            Route::post('/addmoreSection', ['as' => 'addmoreSection', 'uses' => 'CompanyController@addmoreSection']);
            Route::post('/addmoreSubsection', ['as' => 'addmoreSubsection', 'uses' => 'CompanyController@addmoreSubsection']);

            Route::get('/shifts/add', ['as' => 'shift.add', 'uses' => 'ShiftMasterController@add']);
            Route::post('/shifts/add', ['as' => 'shift.store', 'uses' => 'ShiftMasterController@store']);
            Route::get('/shifts/edit/{id}', ['as' => 'shift.edit', 'uses' => 'ShiftMasterController@edit']);
            Route::put('/shifts/{id}', ['as' => 'shift.update', 'uses' => 'ShiftMasterController@update']);

            Route::get('/users/add', 'CompanyUserController@addUser');
            Route::post('/users/add', ['as' => 'company.users.store', 'uses' => 'CompanyUserController@storeUser']);
            Route::get('/users/edit/{id}', ['as' => 'company.users.edit', 'uses' => 'CompanyUserController@editUser']);
            Route::put('/users/{id}', ['as' => 'company.users.update', 'uses' => 'CompanyUserController@updateUser']);

            Route::get('/group', ['as' => 'user_group', 'uses' => 'UserGroupController@index']);
            Route::post('group/add', ['as' => 'group.add', 'uses' => 'UserGroupController@addGroup']);
            Route::post('group/rename', ['as'=>'group.rename', 'uses' => 'UserGroupController@renameGroup']);
            });

            Route::prefix('permission_module')->group(function(){
            Route::match(['get', 'post'],'/roles/update-{role_id}', ['as' => 'update.role', 'uses' => 'PsiPermissionController@updateRole']);

            Route::post('/role/update-{role_id}', ['as'=>'storePermissionToRole', 'uses'=>'PsiPermissionController@storeUpdate']);
            Route::get('/user/update', ['as' => 'update.user', 'uses' => 'PsiPermissionController@updateUser']);
            Route::get('/getUserPermission', ['as'=>'getUserPermission', 'uses'=>'PsiPermissionController@getUserPermission']);
            Route::post('/user/permission', ['as'=>'storePermissionToUser', 'uses'=>'PsiPermissionController@storePermissionToUser']);

        });

        Route::get('/dashboard', ['as' => 'dashboard', 'uses' => 'DashboardController@index']);
        Route::get('/exp_date', ['as' => 'exp_date', 'uses' => 'DashboardController@viewExp']);
        Route::get('/total_necessary', ['as' => 'total_necessary', 'uses' => 'DashboardController@viewTotal']);
        Route::get('/recent_sheet', ['as' => 'recent_sheet', 'uses' => 'DashboardController@viewSheet']);
        Route::get('/alert_summary', ['as' => 'alert_summary', 'uses' => 'DashboardController@viewSummary']);
        Route::prefix('skills')->group(function(){
            Route::get('/', ['as' => 'manageSkills', 'uses' => 'SkillMasterController@manage' ]);
            Route::post('/add', ['as' => 'skills.master.add','uses' => 'SkillMasterController@addSkills']);
            Route::post('/remove', ['as' => 'skills.master.remove', 'uses' => 'SkillMasterController@removeSkills']);
            Route::post('/rename', ['as' => 'skills.master.rename', 'uses' => 'SkillMasterController@rename']);

        });


        Route::prefix('users')->group(function(){
            Route::get('/', ['as' => 'users.index', 'uses' => 'UserController@index']);
            Route::get('/create', ['as' => 'users.create', 'uses' => 'UserController@createUser']);
            Route::post('/create', ['as' => 'users.store', 'uses' => 'UserController@store']);
            Route::get('/edit/{id}', ['as' => 'users.edit', 'uses' => 'UserController@editUser' ]);
            Route::put('/{id}', ['as' => 'users.update', 'uses' => 'UserController@updateUser']);
            Route::get('/profile', ['as' => 'profile', 'uses' =>'UserController@profile']);
            Route::put('/profile/{id}', ['as' => 'updateProfile', 'uses' => 'UserController@updateProfile']);
        });

        Route::prefix('pages')->group(function(){
            Route::get('/user', ['as' => 'pages.users', 'uses' => 'PagesController@getUser']);
            Route::get('/employee', ['as' => 'pages.employee', 'uses' => 'PagesController@getEmployee']);
            Route::get('/total', ['as' => 'total.necessary', 'uses' => 'TotalNecessaryController@totalNecessary']);
            Route::get('/shift/generator', ['as' => 'generator', 'uses' => 'PagesController@generator']);
            Route::post('/shift/generator', ['as' => 'generator.store', 'uses' => 'PagesController@generatorStore']);
            Route::get('/shift', ['as' => 'pages.shift', 'uses' => 'PagesController@shift']);
            Route::get('/section', ['as' => 'section', 'uses' => 'PagesController@section']);
            Route::get('shift/show/{id}', ['as' => 'shift.show', 'uses' => 'PagesController@show']);
            Route::post('/shift/updateCell', 'PagesController@updateCells');
            Route::get('/shift/generate', ['as' => 'generator.shift', 'uses' => 'PagesController@getShift']);
            Route::post('ajax/shift/add', ['as' => 'ajax.add.shifts', 'uses' => 'PagesController@ajaxAddShifts']);
        });

        Route::resource('roles', 'RoleController');
        Route::prefix('permissions')->group(function(){
        Route::resource('permissions', 'PermissionController');
        });

        Route::get('/addmore','ShiftMasterController@addMore');
        Route::post('/addmore','ShiftMasterController@addMorePost');


        Route::prefix('leader')->group(function(){
            Route::get('/create', ['as' => 'leader.create', 'uses' => 'LeaderController@create']);
            Route::post('/create', ['as' => 'leader.store', 'uses' => 'LeaderController@store']);
            //    Route::get('/leader/edit/{id}', 'LeaderController@edit')->name('leader.edit');
            //    Route::get('/leader/{id}', 'LeaderController@update')->name('leader.update');
            Route::get('/', ['as' => 'leader', 'uses' => 'LeaderController@showName']);
        });

        Route::get('/messages', ['as' => 'inbox.messages', 'uses' => 'PsiInboxController@messages']);
        Route::get('smessage/{id?}', ['as' => 'inbox.smessage', 'uses' => 'PsiInboxController@singleMessage']);
        Route::put('smessage/{id}', ['as' => 'inbox.update', 'uses' => 'PsiInboxController@update']);

        Route::prefix('sheet')->group(function(){
            Route::get('time_table', ['as' => 'sheet.time_table', 'uses' => 'DessertController@generateTimeTable']);
            Route::get('self', ['as' => 'sheet.dessert', 'uses' => 'DessertController@dessert']);
        });

        Route::prefix('dessert')->group(function(){
            Route::get('/', ['as' => 'dessert', 'uses' => "DessertController@generateDessert"]);
            Route::get('/findDetails', [
                'as' => 'dessert.findDetails',
                'uses' => "DessertController@findDetails"
            ]);
            Route::post('/', ['as' => 'dessert.store', 'uses' => "DessertController@storeDessert"]);
            Route::post('/dessert_update', ['as' => 'dessert.update', 'uses' => "DessertController@dessert_update"]);
        });



        Route::prefix('viber')->group(function () {
            Route::post('/viber_it', ['as' => 'viber.send', 'uses' => 'ViberMessageController@store_message']);
            Route::get('/alert/setting', ['as' => 'viberAlert', 'uses' => 'ViberAlertController@setting']);
            Route::post('/alert/setting', ['as' => 'storeSetting', 'uses' => 'ViberAlertController@storeSetting']);
        });
            Route::prefix('notification')->group(function () {
                Route::get('/inbox_data', ['as' => 'notification.inbox', 'uses' => 'NotificationHandler@get_current_message']);
            });
    });
    });

});
Route::any('viber_bot',['as' => 'viber_bot', 'uses' => 'ViberBitIntegration@handleViberRequest']);
Route::any('send_viber',['as' => 'viber_send', 'uses' => 'ViberBitIntegration@send_viber']);

Route::get('/denied',['as' => 'access.denied', 'uses' =>'DisplayController@display']);

Route::get('/hierrchy', function(){
    return view('hierrchy');
});




