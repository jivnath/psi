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

//menuwise route

Auth::routes();
Route::group(['middleware' => ['auth']], function () {
    Route::group(['middleware' => ['check.primary.company']], function () {

        //<dashboard>
        Route::prefix('dashboard')->group(function () {
            Route::get('/', ['as' => 'dashboard', 'uses' => 'DashboardController@index']);
            Route::get('/exp_date', ['as' => 'exp_date', 'uses' => 'DashboardController@viewExp']);
            Route::get('/total_necessary', ['as' => 'total_necessary', 'uses' => 'DashboardController@viewTotal']);
            Route::get('/recent_sheet', ['as' => 'recent_sheet', 'uses' => 'DashboardController@viewSheet']);
            Route::get('/alert_summary', ['as' => 'alert_summary', 'uses' => 'DashboardController@viewSummary']);
        });
        //</dashboard>

        // <master data>
        Route::group(['middleware' => ['check.user']], function () {
            Route::prefix('master_data')->group(function () {
                //<users>
                Route::prefix('users')->group(function () {
                    Route::get('/', ['as' => 'users.index', 'uses' => 'UserController@index']);
                    Route::get('/create', ['as' => 'users.create', 'uses' => 'UserController@createUser']);
                    Route::post('/create', ['as' => 'users.store', 'uses' => 'UserController@store']);
                    Route::get('/edit/{id}', ['as' => 'users.edit', 'uses' => 'UserController@editUser']);
                    Route::put('/{id}', ['as' => 'users.update', 'uses' => 'UserController@updateUser']);

                    Route::resource('roles', 'RoleController');
                    Route::get('/role/update-{role_id}', ['as' => 'update.role', 'uses' => 'PsiPermissionController@updateRole']);
                    Route::post('/role/update-{role_id}', ['as' => 'storePermissionToRole', 'uses' => 'PsiPermissionController@storeUpdate']);

                    Route::get('/user/update', ['as' => 'update.user', 'uses' => 'PsiPermissionController@updateUser']);
                    Route::get('/getUserPermission', ['as' => 'getUserPermission', 'uses' => 'PsiPermissionController@getUserPermission']);
                    Route::post('/user/permission', ['as' => 'storePermissionToUser', 'uses' => 'PsiPermissionController@storePermissionToUser']);
                });
                //</users>

                //<employees>
                Route::prefix('employees')->group(function () {
                    Route::get('/show/{option?}', ['as' => 'employees.show', 'uses' => 'EmployeeController@show']);
                    Route::post('/employee/converted_info', ['as' => 'employees.converted_info', 'uses' => 'EmployeeController@parseDataAtt']);
                    Route::get('/upload', ['as' => 'employees.uploadForm', 'uses' => 'EmployeeController@uploadForm']);
                    Route::post('/upload', ['as' => 'employees.upload', 'uses' => 'EmployeeController@upload']);
                    Route::post('/updateCell', ['as' => 'employees.updateCell', 'uses' => 'EmployeeController@updateCell']);
                    Route::post('/skill', ['as' => 'skill.store', 'uses' => 'EmployeeSkillController@store']);
                    Route::get('/skill/all', ['as' => 'skill.all', 'uses' => 'EmployeeSkillController@findSkill']);
                    Route::post('/updateEmployeeGender', ['as' => 'updateEmployeeGender', 'uses' => 'EmployeeController@updateEmployeeGender']);
                    Route::post('/updateEmployeeStatusResidence', ['as' => 'updateEmployeeStatusResidence', 'uses' => 'EmployeeController@updateEmployeeStatusResidence']);
                    Route::post('/updateEmployeeHourlyWage', ['as' => 'updateEmployeeHourlyWage', 'uses' => 'EmployeeController@updateEmployeeHourlyWage']);
                    Route::post('/updateEmployeeOperatingStatus', ['as' => 'updateEmployeeOperatingStatus', 'uses' => 'EmployeeController@updateEmployeeOperatingStatus']);
                    Route::post('/updateEmployeeStatus', ['as' => 'updateEmployeeStatus', 'uses' => 'EmployeeController@updateEmployeeStatus']);
                    Route::post('/updateEmployeeViberInstall', ['as' => 'updateEmployeeViberInstall', 'uses' => 'EmployeeController@updateEmployeeViberInstall']);
                    Route::post('/getEmployeeDetailsAjax', ['as' => 'getEmployeeDetailsAjax', 'uses' => 'EmployeeController@getEmployeeDetailsAjax']);

                    Route::get('/', ['as' => 'manageSkills', 'uses' => 'SkillMasterController@manage']);
                    Route::post('/add', ['as' => 'skills.master.add', 'uses' => 'SkillMasterController@addSkills']);
                    Route::post('/remove', ['as' => 'skills.master.remove', 'uses' => 'SkillMasterController@removeSkills']);
                    Route::post('/rename', ['as' => 'skills.master.rename', 'uses' => 'SkillMasterController@rename']);

                    Route::get('/availability', ['as' => 'availability.index', 'uses' => 'EmployeeAvailabilityController@index']);
                    Route::get('/availability/add', ['as' => 'availability.add', 'uses' => 'EmployeeAvailabilityController@add']);
                    Route::post('/availability/create', ['as' => 'availability.store', 'uses' => 'EmployeeAvailabilityController@store']);
                    Route::get('/availability/edit', ['as' => 'availability.edit', 'uses' => 'EmployeeAvailabilityController@edit']);
                    Route::get('/getAvailability', ['as' => 'getAvailability', 'uses' => 'EmployeeAvailabilityController@getAvailability']);
                    Route::post('/updateAvailability', ['as' => 'updateAvailability', 'uses' => 'EmployeeAvailabilityController@updateAvailability']);
                    Route::get('/showAvailability', ['as' => 'showAvailability', 'uses' => 'EmployeeAvailabilityController@showAvailability']);
                });
                //</employees>

                //<companies>
                Route::prefix('companies')->group(function () {
                    Route::get('/manage', ['as' => 'manageCompanies', 'uses' => 'CompanyController@manageCompanies']);
                    Route::post('/manage', ['as' => 'company.saveCompany', 'uses' => 'CompanyController@saveCompany']);
                    Route::get('/getSection', ['as' => 'getSection', 'uses' => 'CompanyController@getSection']);
                    Route::get('/subSection', ['as' => 'subSection', 'uses' => 'CompanyController@subSection']);
                    Route::post('/update', ['as' => 'updateCompanies', 'uses' => 'CompanyController@updateCompanies']);
                    Route::post('/addmoreSection', ['as' => 'addmoreSection', 'uses' => 'CompanyController@addmoreSection']);
                    Route::post('/addmoreSubsection', ['as' => 'addmoreSubsection', 'uses' => 'CompanyController@addmoreSubsection']);

                    Route::get('/shifts/add', ['as' => 'shift.add', 'uses' => 'ShiftMasterController@add']);
                    Route::post('/shifts/add', ['as' => 'shift.store', 'uses' => 'ShiftMasterController@store']);
                    Route::get('/shifts/edit/{id}', ['as' => 'shift.edit', 'uses' => 'ShiftMasterController@edit']);
                    Route::put('/shifts/{id}', ['as' => 'shift.update', 'uses' => 'ShiftMasterController@update']);

                    Route::get('/create', ['as' => 'leader.create', 'uses' => 'LeaderController@create']);
                    Route::post('/create', ['as' => 'leader.store', 'uses' => 'LeaderController@store']);
                    Route::post('/removeManager', ['as' => 'removeManager', 'uses' => 'LeaderController@removeManager']);
                });
                //</companies>
            });

            //</master data>

            //<shift management
            Route::prefix('shift_management')->group(function () {
                Route::prefix('section_shift')->group(function () {
                    Route::get('/shift/generator', ['as' => 'generator', 'uses' => 'PagesController@generator']);
                    Route::post('/shift/generator', ['as' => 'generator.store', 'uses' => 'PagesController@generatorStore']);
                    Route::get('/shift', ['as' => 'pages.shift', 'uses' => 'PagesController@shift']);
                    Route::get('/section', ['as' => 'section', 'uses' => 'PagesController@section']);
                    Route::get('shift/show/{id}', ['as' => 'shift.show', 'uses' => 'PagesController@show']);
                    Route::post('/shift/updateCell', 'PagesController@updateCells');
                    Route::get('/shift/generate', ['as' => 'generator.shift', 'uses' => 'PagesController@getShift']);
                    Route::post('ajax/shift/add', ['as' => 'ajax.add.shifts', 'uses' => 'PagesController@ajaxAddShifts']);
                });
                Route::prefix('self_sheet')->group(function () {
                    Route::get('time_table', ['as' => 'sheet.time_table', 'uses' => 'DessertController@generateTimeTable']);
                    Route::get('self', ['as' => 'sheet.dessert', 'uses' => 'DessertController@dessert']);
                    Route::post('allResponsible', ['as' => 'allResponsible', 'uses' => 'DessertController@allResponsible']);
                    Route::post('/shift/updateCell', 'PagesController@updateCells');
                    Route::get('/', ['as' => 'dessert', 'uses' => "DessertController@generateDessert"]);
                    Route::get('/findDetails', ['as' => 'dessert.findDetails', 'uses' => "DessertController@findDetails"]);
                    Route::post('/', ['as' => 'dessert.store', 'uses' => "DessertController@storeDessert"]);
                    Route::post('/dessert_update', ['as' => 'dessert.update', 'uses' => "DessertController@dessert_update"]);
                });
            });
            //</shiift management>

            //<reports>
            Route::prefix('reports')->group(function () {
                Route::prefix('company')->group(function () {
                    Route::get('/', ['as' => 'company.details', 'uses' => 'CompanyController@viewDetail']);
                });
                Route::prefix('employee_details')->group(function () {
                    Route::get('/', ['as' => 'employee.detail.report', 'uses' => 'EmployeeController@FetchEmployeeDetails']);
                });
                Route::prefix('employee_worksheet')->group(function () {
                    Route::get('/', ['as' => 'employee.worksheet.report', 'uses' => 'EmployeeController@employeeWorksheet']);
                    Route::get('/getWorksheetData', ['as' => 'getWorksheetData', 'uses' => 'EmployeeController@getWorksheetData']);
                });
                Route::prefix('total_necessary')->group(function () {
                    Route::get('/', ['as' => 'report_total_necessary', 'uses' => 'PagesController@reportTotalNecessary']);
                    Route::get('/getTotalNecessaryReportData', ['as' => 'getTotalNecessaryReportData', 'uses' => 'PagesController@getTotalNecessaryReportData']);
                });
                Route::prefix('attendance_management')->group(function () {
                    Route::get('/', ['as' => 'attendance.mgmt', 'uses' => 'EmployeeController@attendanceManagement']);
                    Route::get('/getShiftsForSubsection', ['as' => 'getShiftsForSubsection', 'uses' => 'EmployeeController@getShiftsForSubsection']);
                    Route::get('/getAttendanceMgmtData', ['as' => 'getAttendanceMgmtData', 'uses' => 'EmployeeController@getAttendanceMgmtData']);
                });
                Route::prefix('self_sheet_report')->group(function () {
                    Route::get('/selfsheet_report', ['as' => 'selfsheet.report', 'uses' => 'EmployeeController@selfsheetReport']);
                    Route::get('/getSelfSheetReport', ['as' => 'getSelfSheetReport', 'uses' => 'EmployeeController@getSelfSheetReport']);
                });
            });
            //</reports>

            //<inbox>
            Route::prefix('inbox')->group(function () {
                Route::get('/messages', ['as' => 'inbox.messages', 'uses' => 'PsiInboxController@messages']);
                Route::get('smessage/{id?}', ['as' => 'inbox.smessage', 'uses' => 'PsiInboxController@singleMessage']);
                Route::put('smessage/{id}', ['as' => 'inbox.update', 'uses' => 'PsiInboxController@update']);
                Route::get('view/{id}', ['as' => 'inbox.view', 'uses' => 'PsiInboxController@view']);
                Route::get('file/{id}', ['as' => 'inbox.download', 'uses' => 'PsiInboxController@download']);
                Route::get('/inbox_data', ['as' => 'notification.inbox', 'uses' => 'NotificationHandler@get_current_message']);
            });
            //</inbox>

            //<setting>
            Route::prefix('setting')->group(function () {
                Route::prefix('alert_management')->group(function () {
                    Route::get('/alert/setting', ['as' => 'viberAlert', 'uses' => 'ViberAlertController@setting']);
                    Route::post('/alert/setting', ['as' => 'storeSetting', 'uses' => 'ViberAlertController@storeSetting']);
                });
            });
        });
        //</setting>


        Route::get('/profile', ['as' => 'profile', 'uses' => 'UserController@profile']);
        Route::put('/profile/{id}', ['as' => 'updateProfile', 'uses' => 'UserController@updateProfile']);
        Route::any('send_viber', ['as' => 'viber_send', 'uses' => 'ViberBitIntegration@send_viber']);
        Route::get('/denied', ['as' => 'access.denied', 'uses' => 'DisplayController@display']);
        Route::post('/viber_it', ['as' => 'viber.send', 'uses' => 'ViberMessageController@store_message']);
        Route::post('/customize', ['as' => 'customize.field', 'uses' => 'CustomerTableView@saveCustomizedField']);
        Route::get('/update_field/{type}', ['as' => 'field_update', 'uses' => 'CustomerTableView@update_table_view']);
        Route::get('/addmore', 'ShiftMasterController@addMore');
        Route::post('/addmore', 'ShiftMasterController@addMorePost');

        Route::get('/hierrchy', function () {
            return view('hierrchy');
        });
        Route::prefix('change_company')->group(function () {
            Route::group(['middleware' => ['check.company']], function () {
                Route::get('changecompany/{id}/{name}', ['as' => 'changecompany', 'uses' => 'UserController@changeCompany']);
            });
        });

        Route::get('/section_manager', ['as' => 'leader', 'uses' => 'LeaderController@showName']);
        Route::post('/password', ['as' => 'updatePassword', 'uses' => 'UserController@updatePassword']);
    });
});

Route::get('/', function () {
    return redirect()->route('login');
});

Route::post('changelocale', ['as' => 'changelocale', 'uses' => 'TranslationController@changeLocale']);
Route::get('/primary/{id}', ['as' => 'selectPrimary', 'uses' => 'UserController@selectPrimary']);
Route::get('/select/primary', ['as' => 'primary', 'uses' => 'UserController@primary']);
Route::get('/primarySub/{id}', ['as' => 'selectPrimarySub', 'uses' => 'Employee\Dashboard@selectPrimary']);
Route::get('select/primarySub', ['as' => 'primarySub', 'uses' => 'Employee\Dashboard@primary']);

Route::group(['middleware' => ['check.login']], function () {
    Route::get('employee/login', 'Auth\EmployeeLoginController@getLogin');
    Route::post('employee/login', ['as' => 'employee.login', 'uses' => 'Auth\EmployeeLoginController@login']);
    Route::get('employee/logout', ['as' => 'employee.logout', 'uses' => 'Auth\EmployeeLoginController@logout']);
});


Route::group(['middleware' => ['employee']], function () {
    Route::group(['middleware' => ['check.employee.primary']], function () {
        Route::prefix('employee')->group(function () {
            Route::get('/dashboard', ['as' => 'employee.dashboard', 'uses' => 'Employee\Dashboard@index']);
            Route::get('/getDataForCalendar', ['as' => 'getDataForCalendar', 'uses' => 'Employee\Dashboard@getDataForCalendar']);
            Route::post('/storeEmployeeApplication', ['as' => 'storeEmployeeApplication', 'uses' => 'Employee\Dashboard@storeEmployeeApplication']);
            Route::get('/getCompanyName', ['as' => 'getCompanyName', 'uses' => 'Employee\Dashboard@getCompanyName']);
            Route::get('/profile', ['as' => 'employee.profile', 'uses' => 'Employee\Dashboard@employeeProfile']);
            Route::get('/getWorkedShift', ['as' => 'getWorkedShift', 'uses' => 'Employee\Dashboard@getWorkedShift']);
            Route::post('/storeMessage', ['as' => 'inbox.store', 'uses' => 'PsiInboxController@store']);
            Route::get('/emessage', ['as' => 'employee.message', 'uses' => 'Employee\Dashboard@employeeMessage']);
        });
    });
});
Route::get('sendAlert', ['as' => 'sendAlert', 'uses' => 'ViberAlertController@sendAlert']);//nivesh le add gareko
Route::any('viber_bot', ['as' => 'viber_bot', 'uses' => 'ViberBitIntegration@handleViberRequest']);
Route::any('viber_send_msg', ['as' => 'viber_send_msg', 'uses' => 'ViberBitIntegration@send_to_viber']);
