<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;
use App\Models\Company;
use Session;

class Raw extends Model
{

    public static function AllCompanyData()
    {
        $fetch_detail=[];
        $sql = "select with_table.*
from(SELECT
            p.id AS parent_id,
            p.name AS parent_name,
            c1.id AS child_id_1,
            c1.name AS child_name_1,
            c2.id AS child_id_2,
            c2.name AS child_name_2,
            c3.id AS child_id_3,
            c3.name AS child_name_3,
            p.contact_num,
            c1.contact_num contact_c1,
            c2.contact_num contact_c2,
            p.address address_p,
            c1.address address_c1,
            c2.address address_c2,
            ( SELECT CAST(GROUP_CONCAT(psi_num SEPARATOR ',') AS CHAR)
                    FROM leaders l where l.company_id = c1.id) team_leader,
                    (SELECT
                	GROUP_CONCAT(emp.name SEPARATOR ' | ')
                FROM
                	employees emp
                WHERE
                	emp.psi_number in( SELECT psi_num
                    FROM leaders ll where ll.company_id=c1.id)) employee,

            CASE
                    WHEN c1.id IS NULL
                         AND c2.id IS NULL
                         AND c3.id IS NULL THEN 0
                    WHEN c1.id IS NOT NULL
                         AND c2.id IS NULL
                         AND c3.id IS NULL THEN     1
                    WHEN c1.id IS NOT NULL
                         AND c2.id IS NOT NULL
                         AND c3.id IS NULL THEN 2

                    ELSE -1
                END
            level
        FROM
            companies p
            LEFT JOIN companies c1 ON c1.master_id = p.id
            LEFT JOIN companies c2 ON c2.master_id = c1.id
            LEFT JOIN companies c3 ON c3.master_id = c2.id
where     p.master_id IS NULL
        ORDER BY
            p.id,c1.id,c2.id,c3.id ASC) as with_table";
        $companies = DB::select($sql);

        foreach ($companies as $row) {
            $manager = Employee::where('psi_number', $row->team_leader)->first();
            $fetch_detail[$row->parent_name][$row->child_name_1][$row->child_name_2][][] = [
                'contact_p' => ($row->contact_num) ? $row->contact_num : '...',
                'contact_c1' => ($row->contact_c1) ? $row->contact_c1 : '...',
                'contact_c2' => ($row->contact_c2) ? $row->contact_c2 : '...',
                'address_p' => ($row->address_p) ? $row->address_p : '...',
                'address_c1' => ($row->address_c1) ? $row->address_c1 : '...',
                'address_c2' => ($row->address_c2) ? $row->address_c2 : '...',
                'team_leader' => ($row->team_leader) ?? $row->team_leader,
                'manager' => ($row->employee) ?? $row->employee
            ];
        }
        return $fetch_detail;
    }

    public static function totalNecessary_()
    {
        DB::select("SELECT
    ctt.company_id,
    (
        SELECT
            name
        FROM
            companies c
        WHERE
            c.id = ctt.company_id
    ) company_name,
    companytt_id time_table_id,
    cts.id AS rel_id,

    DATE,
    time,
    (normal) necessary,
     (
        SELECT
            COUNT(*) occupied_shift
        FROM
            company_to_employees_rels cte
        WHERE
            cte.cts_id = cts.id
     ) total_occupied_shift
FROM
    company_time_schedules cts,
    company_time_tables ctt
WHERE
    cts.companytt_id = ctt.id
    AND companytt_id = 12;");
    }

    public static function getSecondLevelCompanies()
    {
        $sql = "select id,name from companies where master_id in (SELECT id FROM `companies` WHERE `master_id` is null)";

        $secondCompanies = DB::select("$sql");

        return $secondCompanies;
    }

    public static function getThirdLevelCompanies()
    {
        $sql = "select * from companies where master_id in (select id from companies where master_id in (SELECT id FROM `companies` WHERE master_id is null))order by master_id asc";
        $thirdCompanies = DB::select("$sql");

        return $thirdCompanies;
    }

    public static function getWorkedHours($user, $start, $end)
    {
        $sql = "SELECT
                  SUM(TIMEDIFF(smd.end_time, smd.start_time))/10000 AS totalWorked
              FROM
                  psi_dessert_entry pde,
                  company_time_schedules cts,
                  company_time_tables ctt,
                  shift_master_datas smd
              WHERE
                  pde.staff_no = $user
                  AND cts.id = pde.cts_id
                  AND cts.companyTT_id = ctt.id
                  AND smd.company_id = ctt.company_id
                  AND cts.time = smd.start_time
                  AND cts.date BETWEEN $start AND $end";

        $hour = DB::select("$sql");
        return $hour;
    }

    public static function getShiftTime($cts_id)
    {
        $sql = "SELECT TIMEDIFF(smd.end_time, smd.start_time)/10000 AS shiftTime FROM company_time_schedules cts, company_time_tables ctt, shift_master_datas smd WHERE cts.id = $cts_id AND cts.companyTT_id = ctt.id AND smd.company_id = ctt.company_id AND cts.time = smd.start_time";
        $data = DB::select($sql);
        return $data;
    }

    public static function getSkillsDetails()
    {
        $sql = "SELECT sk.id, sk.skill_name name, (SELECT COUNT(*) FROM employee_skills WHERE skill_id = sk.id) as count FROM psi_skill_master sk WHERE sk.status= 'enabled'";
        $skills = DB::select("$sql");

        // dd($skills);

        return $skills;
    }

    public static function companies($id)
    {
        $sql = "select * from companies where (id=$id or master_id=$id)";
        $companies = DB::select("$sql");
        foreach ($companies as $row) {
            if (! $row->master_id) {
                $data['master'] = [
                    'name' => $row->name,
                    'contact_num' => $row->contact_num,
                    'address' => $row->address,
                    'id' => $row->id
                ];
            } else {
                $data['sub_com'][] = [
                    'name' => $row->name,
                    'address' => $row->address,
                    'contact_num' => $row->contact_num,
                    'id' => $row->id,
                    'master_id' => $row->master_id
                ];
            }
        }
        return $data;
    }

    public static function master()
    {
        $sql = "select * from companies where (master_id is null or master_id=0)";
        $master = DB::select("$sql");
        return $master;
    }

    public static function expiredRC()
    {
        $sql = "select psi_number,name,cell_no,residence_card_exp_date from employees where `residence_card_exp_date` BETWEEN '2018-08-26' and '2018-10-26'";
        $expired = DB::select("$sql");
        return $expired;
    }

    public static function getShiftView()
    {
        $section = \Session::get('primary_company');
        $sql = "SELECT
    t1.*,
    t2.*,
    (
        SELECT
            name
        FROM
            companies
        WHERE
            companies.id = master_main_id
    ) section_name
FROM
    (
        SELECT
            ctt.id,
            ctt.company_id,
            c.name,
            ctt.created_at,
        	ctt.schedule_session_id,
            c.master_id,
            (
                SELECT
                    cc.master_id
                FROM
                    companies cc
                WHERE
                    cc.id = ctt.company_id
            ) master_main_id,
            (
                SELECT
                    p.id AS parent_id
                FROM
                    companies p
                    LEFT JOIN companies c1 ON c1.master_id = p.id
                    LEFT JOIN companies c2 ON c2.master_id = c1.id
                    LEFT JOIN companies c3 ON c3.master_id = c2.id
                WHERE
                    p.master_id IS NULL
                    AND ( c2.id = ctt.company_id )
            ) master_main_id1
        FROM
            companies c,
            company_time_tables ctt
        WHERE
            c.id = ctt.company_id
            AND c.master_id = $section->id
    ) t1,
    (
        SELECT
            companytt_id,
            MIN(DATE) schedule_from,
            MAX(DATE) schedule_to
        FROM
            company_time_schedules
        GROUP BY
            companytt_id
    ) t2
WHERE
    t1.id = t2.companytt_id
    AND t1.master_main_id1 IS NOT NULL
    GROUP BY t1.schedule_session_id
    ORDER BY t2.companytt_id DESC";
        return DB::select($sql);
    }

    public static function getDessertInfo($company_id, $date)
    {
        $sql = "SELECT
            cts.id,
            companytt_id,
            date,
            time,
            normal total_require,
            ctt.schedule_session_id,
            ctt.company_id,
            (
                SELECT
                    CASE
                        WHEN master_id <> ''   THEN master_id
                        ELSE id
                    END
                FROM
                    companies
                WHERE
                    id = ctt.company_id
            ) master_id
        FROM
            company_time_schedules cts,
            company_time_tables ctt
        WHERE
            cts.companytt_id = ctt.id
            and company_id=$company_id
            and date='$date'
        ORDER BY
            cts.date,time asc";
        $re = DB::select($sql);
        if(count($re)>0){
        foreach ($re as $row) {
            $output_results[] = [
                'id' => $row->id,
                'companytt_id' => $row->companytt_id,
                'master_id' => $row->master_id,
                'total_require' => $row->total_require,
                'date' => $row->date,
                'time' => $row->time,
                'schedule_session_id' => $row->schedule_session_id,
                'dessert_info' => \App\Models\DessertSheet::select('employees.*', 'psi_dessert_entry.*', 'psi_dessert_entry.id As psi_id')->join('employees', 'psi_dessert_entry.staff_no', '=', 'employees.psi_number')
                    ->where('cts_id', $row->id)
                    ->get()
            ];
        }}
        return $output_results;
    }

    public static function getScheduleData($id)
    {
        $sql = "SELECT
                smd.id,
                smd.company_id,
                smd.start_time,
                smd.end_time,
                cts.date,
             cts.normal,
             cts.help
            FROM shift_master_datas smd,
            company_time_schedules cts
            WHERE
                smd.id = cts.companytt_id and smd.company_id=$id";
        return DB::select($sql);
    }

    public static function getCompaniesForShift()
    {
        $sql = "SELECT
                    (
                        SELECT
                            name,id
                        FROM
                            companies
                        WHERE
                            id = table_data.name
                    ) company_name
                FROM ( SELECT DISTINCT
                        CASE
                            WHEN lev2 IS NOT NULL THEN lev2
                            WHEN lev2 IS NULL THEN lev1
                        END
                    name
                FROM ( SELECT
                    t1.id AS lev1,
                    t2.id AS lev2,
                    t3.id AS lev3,
                    t4.id AS lev4
                FROM
                    companies AS t1
                LEFT JOIN companies AS t2 ON t2.master_id = t1.id
                LEFT JOIN companies AS t3 ON t3.master_id = t2.id
                LEFT JOIN companies as t4 ON t4.master_id = t3.id) main ) table_data";

        $allCompanies = DB::select($sql);
        foreach ($allCompanies as $company) {
            $companies[] = [
                "id" => $company->id,
                "name" => $company->name
            ];
        }

        print_r($companies);
        die();
    }

    public static function getCompaniesForShiftShow($session)
    {
        $sql = "SELECT c.name, c.id, ctt.id as companyTT_id FROM companies c,company_time_tables ctt WHERE ctt.schedule_session_id = '$session' AND c.id=ctt.company_id";
        return DB::select($sql);
    }

    public static function getDatesForShiftShow($id)
    {
        $sql = "SELECT DISTINCT cts.date FROM company_time_schedules cts, company_time_tables ctt WHERE ctt.schedule_session_id = '$id' AND cts.companyTT_id = ctt.id";
        return DB::select($sql);
    }

    public static function getTimesForShiftShow($id)
    {
        $sql = "SELECT DISTINCT cts.time FROM company_time_schedules cts, company_time_tables ctt WHERE ctt.schedule_session_id = '$id' AND cts.companyTT_id = ctt.id";
        return DB::select($sql);
    }

    public static function getTotalNeccessory()
    {
//        $cond = '';
        $primary = \Session::get('primary_company');
//        if(\Session::get('user_role_id')==5)
            $cond = 'AND c.master_id = '.$primary->id;
        $sql = "SELECT
                cts.id,
                companytt_id,
                DATE,
                time,
                ( normal ) total_require,
                ctt.company_id,
                (select count(*) from psi_dessert_entry pde where pde.cts_id= cts.id) total_used,
                c.name,
                (CASE
                when c.master_id is NULL THEN c.name
                when c.master_id is not Null THEN (select cc.name from companies cc where cc.id=c.master_id)
                ELSE
                  c.name
                end) master_main_company
            FROM
                company_time_schedules cts
                INNER JOIN  company_time_tables ctt on cts.companytt_id = ctt.id
                INNER JOIN companies c ON c.id=ctt.company_id
            WHERE
            normal is not NULL $cond
            ORDER BY
                cts.DATE
                desc";
        return DB::select($sql);
    }

    public static function getTotalNecessaryReport($id, $date)
    {
        $sql = "SELECT
                cts.id,
                companytt_id,
                DATE,
                time,
                smd.start_time,
                smd.end_time,
                ( normal ) total_require,
                ctt.company_id,
                (select count(*) from psi_dessert_entry pde where pde.cts_id= cts.id) total_used,
                c.name,
                (CASE
                when c.master_id is NULL THEN c.id
                when c.master_id is not Null THEN (select cc.id from companies cc where cc.id=c.master_id)
                ELSE
                  c.id
                end) master_main_company
            FROM
            	shift_master_datas smd,
                company_time_schedules cts
                INNER JOIN  company_time_tables ctt on cts.companytt_id = ctt.id
                INNER JOIN companies c ON c.id=ctt.company_id
            WHERE
            normal is not NULL AND
            c.master_id = $id AND
            smd.start_time = cts.time AND
            DATE = '$date'
            ORDER BY
            	company_id ASC";
        $data = DB::select($sql);

        return $data;
    }

    public static function getDessertActivity()
    {
        $today = date("Ymd");
//        $cond='';
        $user = Session::get('user_id');
//        if(!in_array(\Session::get('user_role_id'),\Config('constant.allow_self_sheet'))){
            $cond=" AND pde.responsible1 = $user";
//        }

        $sql = "SELECT
                    pde.id,
                    staff_no,
                    conformation_day_before comments,
                    call_medium activity,
                    responsible1,
                    (select name from users where id=responsible1) operator,
                    (
                        SELECT
                            COUNT(*)
                        FROM
                            psi_self_sheet_comments pssc
                        WHERE
                            pssc.self_id = pde.id
                    ) total_comment,
                    date(cts.date) date
                FROM
                	company_time_schedules cts,
                    `psi_dessert_entry` pde
                WHERE cts.date >= $today
                	AND pde.cts_id = cts.id $cond
                GROUP BY
                	cts.date ASC";
//        $sql = "SELECT
//                    id,
//                    staff_no,
//                    conformation_day_before comments,
//                    call_medium activity,
//                    responsible1,
//                    (select name from users where id=responsible1) operator,
//                    (
//                        SELECT
//                            COUNT(*)
//                        FROM
//                            psi_self_sheet_comments pssc
//                        WHERE
//                            pssc.self_id = pde.id
//                    ) total_comment,
//                    date(created_at) date
//                FROM
//                    `psi_dessert_entry` pde
//                WHERE 1=1 $cond";
        return DB::select($sql);
    }

    public static function getConfirmedEmployees()
    {
//        $table = '';
//        $cond = '';
        $primary = \Session::get('primary_company');
//        if(\Session::get('user_role_id') == 5) {
            $table = ',company_time_tables ctt,
                    companies c';
            $cond = 'AND cts.companyTT_id = ctt.id 
                    AND ctt.company_id = c.id
                    AND c.master_id =' . $primary->id;
//        }

            $sql = "SELECT
                    COUNT(*) total_count,
                    'to' days
                FROM
                            (SELECT
                                DATE,
                                ( normal ) total_require,
                                (select count(*) from psi_dessert_entry pde where pde.cts_id= cts.id) total_used
                            FROM
                                company_time_schedules cts $table
                            WHERE
                            normal is not NULL
                            AND DATE( cts.DATE) BETWEEN DATE_ADD(CURDATE(), INTERVAL 1 day) AND DATE_ADD(CURDATE(), INTERVAL 1 day)
                            AND normal <= (select count(*) from psi_dessert_entry pde where pde.cts_id= cts.id) $cond) t1
                UNION
                SELECT
                    COUNT(*) total_count,
                    'to_week' days
                FROM
                            (SELECT
                                DATE,
                                ( normal ) total_require,
                                (select count(*) from psi_dessert_entry pde where pde.cts_id= cts.id) total_used
                            FROM
                                company_time_schedules cts $table
                            WHERE
                            normal is not NULL
                            AND DATE( cts.DATE) BETWEEN DATE_ADD(CURDATE(), INTERVAL 1 day) AND DATE_ADD(CURDATE(), INTERVAL 1 week)
                            AND normal <= (select count(*) from psi_dessert_entry pde where pde.cts_id= cts.id) $cond) t2
                UNION
                SELECT
                    COUNT(*) total_count,
                    'to_month' days
                FROM
                            (SELECT
                                DATE,
                                ( normal ) total_require,
                                (select count(*) from psi_dessert_entry pde where pde.cts_id= cts.id) total_used
                            FROM
                                company_time_schedules cts $table
                            WHERE
                            normal is not NULL
                            AND DATE( cts.DATE) BETWEEN DATE_ADD(CURDATE(), INTERVAL 1 day) AND DATE_ADD(CURDATE(), INTERVAL 1 month)
                            AND normal <= (select count(*) from psi_dessert_entry pde where pde.cts_id= cts.id) $cond) t3";
        $data = DB::select($sql);
//        print_r($data);die;
        return $data;
    }
    public static function getConfirmedEmployeesCount()
    {
//        $table = '';
//        $cond = '';
        $primary = \Session::get('primary_company');
//        if(\Session::get('user_role_id') == 5)
//        {
            $table = ',company_time_tables ctt,
                    companies c';
            $cond = 'AND cts.companyTT_id = ctt.id 
                    AND ctt.company_id = c.id
                    AND c.master_id ='.$primary->id;
//        }
        $sql = "SELECT
                    COUNT(*) total_count,
                    'to' days
                FROM
                    company_time_schedules cts $table
                WHERE
                    DATE( cts.DATE) BETWEEN DATE_ADD(CURDATE(), INTERVAL 1 day) AND DATE_ADD(CURDATE(), INTERVAL 1 day)
                    AND cts.normal IS NOT null $cond
                UNION
                SELECT
                    COUNT(*) total_count,
                    'to_week' days
                FROM
                    company_time_schedules cts $table
                WHERE
                    DATE( cts.DATE) BETWEEN DATE_ADD(CURDATE(), INTERVAL 1 day) AND DATE_ADD(CURDATE(), INTERVAL 1 week)
                    AND cts.normal IS NOT null $cond
                UNION
                SELECT
                    COUNT(*) total_count,
                    'to_month' days
                FROM
                    company_time_schedules cts $table
                WHERE
                    DATE( cts.DATE) BETWEEN DATE_ADD(CURDATE(), INTERVAL 1 day) AND DATE_ADD(CURDATE(), INTERVAL 1 month)
                    AND cts.normal IS NOT null $cond";
        return DB::select($sql);
    }

    public static function getConfirmation()
    {
        $today = date('Ymd');
        $primary = \Session::get('primary_company');


        $sql = "SELECT
                ( (normal)) total_require,
                ( (select count(*) from psi_dessert_entry pde where pde.cts_id= cts.id)) total_used
            FROM
                company_time_schedules cts,
                company_time_tables ctt,
                companies c
            WHERE
            	normal is not NULL
            	AND date = $today
            	AND cts.companyTT_id = ctt.id
                AND c.id=ctt.company_id
                AND c.master_id = $primary->id";
        $data = DB::select($sql);
        return $data;
    }

    public static function getWorkedShift($staff, $date, $company)
    {
        $sql = "SELECT
                    pd.staff_no,
                    cts.date,
                    cts.time as start_time,
                    sm.end_time
                FROM
                    psi_dessert_entry pd,
                    shift_master_datas sm,
                    company_time_schedules cts
                WHERE
                    cts.companyTT_id in (SELECT ctt.id from company_time_tables ctt WHERE ctt.company_id =$company)
                    AND cts.date = $date
                    AND pd.staff_no = $staff
                    AND pd.cts_id = cts.id
                    AND sm.company_id = $company
                    AND sm.start_time = cts.time";
        $data = DB::select($sql);
        return $data;
    }

    public static function workedDate($staff, $company)
    {
        $sql = "SELECT
            DISTINCT date,
            ctt.company_id
        FROM
            company_time_schedules cts,
            company_time_tables ctt,
            psi_dessert_entry pde
        WHERE
        	pde.cts_id = cts.id
        	AND	pde.staff_no = $staff
        	AND cts.companyTT_id = ctt.id
            AND ctt.company_id = $company";

        $data = DB::select($sql);
        return $data;
    }

    public static function totalNecessary($id)
    {
        $sql = "SELECT
            ctt.company_id,
            (
                SELECT
                    name
                FROM
                    companies c
                WHERE
                    c.id = ctt.company_id
            ) company_name,
            companytt_id time_table_id,
            cts.id AS rel_id,

            date,
            time start_time,
            (
            	SELECT
                	smd.end_time
                FROM
                	shift_master_datas smd
                WHERE
                	start_time = cts.time
                	AND company_id = ctt.company_id

            ) end_time,
            (
            	SELECT
                TIMEDIFF(smd.end_time, smd.start_time)
                FROM
                	shift_master_datas smd
                WHERE
                	start_time = cts.time
                	AND company_id = ctt.company_id

            ) hours,

            (normal) necessary,
            (
                SELECT
                    COUNT(*)
                FROM
                    psi_dessert_entry pde
                WHERE
                    pde.cts_id = cts.id
            ) occupied

        FROM
            company_time_schedules cts,
            company_time_tables ctt
        WHERE
            cts.companytt_id = ctt.id
            AND ctt.company_id = $id";
        $data = DB::select($sql);
        return $data;
    }

    public static function getCompaniesHavingShift()
    {
        $sql = "SELECT DISTINCT c.name, c.id from companies c , company_time_tables ctt where c.id = ctt.company_id";
        $data = DB::select($sql);
        return $data;
    }

    public static function getSectionForAttendance()
    {
//        $cond = '';
//        $role = \Session::get('user_role_id');
        $company = \Session::get('primary_company');
//        if($role==5)
            $cond = 'AND c.master_id = '.$company->id;
        $sql = "SELECT DISTINCT c.name, c.id from companies c , company_time_tables ctt where c.id = ctt.company_id $cond";
        $data = DB::select($sql);
        return $data;
    }

    public static function dessert_calculation_method($schedule_id, $staff_id)
    {
        $sql = "SELECT
            ##main_table.*,
            sum(time_to_sec(main_table.shift_time_diff)) total_sec
        FROM
            ( SELECT
            cts.*,
            ctt.company_id,
            (
                SELECT
                    timediff(smd.end_time,smd.start_time)
                FROM
                    shift_master_datas smd
                WHERE
                    smd.company_id = ctt.company_id
                    AND smd.start_time = cts.time
            ) shift_time_diff
        FROM
            company_time_schedules cts,
            company_time_tables ctt
        WHERE
            cts.companytt_id = ctt.id
            AND cts.id IN (
                SELECT
                    cts_id
                FROM
                    `psi_dessert_entry`
                WHERE
                    staff_no = $staff_id
            )
            AND cts.id >= $schedule_id
        AND DATE( cts.DATE) between (select date from company_time_schedules WHERE
            id = $schedule_id) and DATE_ADD((select date from company_time_schedules WHERE
            id = $schedule_id),interval 7 day)
                ORDER BY
                    DATE ASC
            ) main_table";
        $data = collect(DB::select(DB::raw($sql)))->first();

        return $calculated_arr = [
            'total_worked' => ($data)?$data->total_sec:0 / 3600];
    }

    public static function get_user_info($sender_id)
    {
        try {
            $sql = "SELECT e.* FROM employee_logins el,employees e where concat(0,el.psi_number)=replace(cell_no,'-','') and  viber_id='$sender_id'";
            return collect(DB::select(DB::raw($sql)))->first();
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }

    public static function getEmpDetail($mobile)
    {
        $mobile=(isset($mobile[0]) && $mobile[0]!=0)? '0'.$mobile:$mobile;
        $sql = "select * from (select  e.*,replace(e.cell_no,'-','') replaced_num from employees e)em where em.replaced_num='$mobile'";
        return collect(DB::select(DB::raw($sql)))->first();
    }

    public static function employeeWorksheetData($start, $end)
    {
        $sql = "SELECT
        pde.staff_no,
        e.name,
        COUNT(DISTINCT cts.date) totalWorkdays,
        FLOOR(SUM(TIMEDIFF(smd.end_time, smd.start_time))/10000) AS totalWorked
    FROM
        psi_dessert_entry pde,
        company_time_schedules cts,
        company_time_tables ctt,
        shift_master_datas smd,
        employees e
    WHERE
       cts.id = pde.cts_id
        AND pde.staff_no = e.psi_number
        AND cts.companyTT_id = ctt.id
        AND smd.company_id = ctt.company_id
        AND cts.time = smd.start_time
        AND cts.date BETWEEN '$start' AND '$end'
        group by pde.staff_no,
        e.name";
        $data = DB::select($sql);
//        print_r($data);die;
        return $data;
    }

    public static function getAttendanceMgmtData($id, $date, $shift)
    {
        $sql = "SELECT
        pde.id,
        pde.staff_no,
        pde.conformation_day_before,
        pde.conformation_3_hours_ago,
        e.name,
        e.cell_no,
        e.phoetic_kanji,
        e.country_citizenship,
        smd.start_time,
        smd.end_time
    FROM
        psi_dessert_entry pde,
        employees e,
        company_time_schedules cts,
        company_time_tables ctt,
        shift_master_datas smd
    WHERE
    	pde.cts_id = cts.id AND
        cts.companyTT_id = ctt.id AND
        ctt.company_id = $id AND
        smd.company_id = $id AND
        smd.start_time = '$shift' AND
        cts.time = '$shift' AND
        cts.date = '$date' AND
        e.psi_number = pde.staff_no";

        $data = DB::select($sql);

        return $data;
    }

    public static function getAllRequests()
    {
        $sql = "SELECT
                    pi.*,
                    e.name
                FROM
                    psi_inbox pi,
                    employees e
                WHERE
                    pi.employeeid = e.psi_number

                ORDER BY
                    pi.status DESC,
                    pi.created_at DESC,
                    pi.updated_at DESC";

        $requests = DB::select($sql);

        return $requests;
    }

    public static function getSubsectionShifts()
    {
        $primary = \Session::get('primary_company');
        $sql = "SELECT c.master_id, c.id, smd.* FROM shift_master_datas smd, companies c WHERE smd.company_id = c.id AND c.master_id = $primary->id ORDER BY `c`.`master_id` ASC";
        $shifts = DB::select($sql);

        return $shifts;
    }

    public static function getShift($id)
    {
        $sql = "SELECT smd.* FROM shift_master_datas smd WHERE smd.company_id = $id";
        $shift = DB::select($sql);
        return $shift;
    }

    public static function getDataForSectionManager()
    {
        $sql ="SELECT l.id, c.name section, e.name manager_name, l.psi_num FROM leaders l, companies c, employees e where e.psi_number = l.psi_num AND l.company_id = c.id";
        $data = DB::select($sql);
        return $data;
    }

    public static function getSelfSheetReport($id, $date)
    {
        $sql = "SELECT
	pde.*,c.name company_name,e.name employee_name, smd.start_time, smd.end_time
FROM
	psi_dessert_entry pde,
    company_time_schedules cts,
    company_time_tables ctt,
    employees e,
    companies c,
    shift_master_datas smd
WHERE
	pde.staff_no = e.psi_number
    AND pde.cts_id = cts.id
    AND cts.companyTT_id = ctt.id
    AND ctt.company_id = $id
    AND cts.date ='$date'
    AND c.id = ctt.company_id
    AND smd.company_id = ctt.company_id
    AND cts.time = smd.start_time";
        $sheet = DB::select($sql);
        return $sheet;
    }

}
