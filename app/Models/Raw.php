<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use DB;

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
        $sql="select * from companies where (id=$id or master_id=$id)";
        DB::select("$sql");
    }
}
