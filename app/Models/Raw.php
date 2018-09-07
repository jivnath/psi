<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;
use App\Models\Company;

class Raw extends Model
{

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
    (help+normal) necessary,
     (
        SELECT
            COUNT(*) occupied_shift
        FROM
            company_to_employees_rel cte
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
        $sql = "SELECT
                (
                    SELECT
                        name
                    FROM
                        companies
                    WHERE
                        companies.id = c.master_id
                ) master_company_name,
                master_id,
                COUNT(master_id) total_subcompany,
                ctt.created_at
            FROM
                companies c,
                company_time_tables ctt
            WHERE
                c.id = ctt.company_id
            GROUP BY
                master_id";
        return DB::select($sql);
    }

    public static function getDessertInfo($company_id, $date)
    {
        $sql = "SELECT
            cts.id,
            companytt_id,
            date,
            time,
            ( normal + help ) total_require,
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
        foreach ($re as $row) {
            $output_results[] = [
                'id' => $row->id,
                'companytt_id' => $row->companytt_id,
                'master_id' => $row->master_id,
                'total_require' => $row->total_require,
                'date' => $row->date,
                'time' => $row->time,
                'dessert_info' => \App\Models\DessertSheet::select('employees.*', 'psi_dessert_entry.*', 'psi_dessert_entry.id As psi_id')->join('employees', 'psi_dessert_entry.staff_no', '=', 'employees.psi_number')
                    ->where('cts_id', $row->id)
                    ->get()

            ];
        }
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

<<<<<<< HEAD
    public static function getCompaniesForShift()
    {
        $sql ="SELECT
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
        foreach($allCompanies as $company)
        {
            $companies[]=[
                "id" => $company->id,
                "name" => $company->name
            ];
        }

        print_r($companies);die;
=======
    public static function getTotalNeccessory()
    {
        $sql = "SELECT
                cts.id,
                companytt_id,
                DATE,
                time,
                ( normal + help ) total_require,
                ctt.company_id,
                (select count(*) from psi_dessert_entry pde where pde.cts_id= cts.id) total_used,
                c.name
            FROM
                company_time_schedules cts
                INNER JOIN  company_time_tables ctt on cts.companytt_id = ctt.id
                INNER JOIN companies c ON c.id=ctt.company_id
            WHERE
            normal is not NULL
            ORDER BY
                cts.DATE,time
                asc";
        return DB::select($sql);
>>>>>>> 672ea748475d9cc244b68f87e7b18aedb04faf66
    }
}
