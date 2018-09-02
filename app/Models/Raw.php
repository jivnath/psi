<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;
use App\Models\Company;

class Raw extends Model
{

    public static function totalNecessary()
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
    public static function getDessertInfo($company_id,$date){
        $sql="SELECT
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
        return DB::select($sql);
    }
}
