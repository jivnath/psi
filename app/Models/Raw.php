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
        $sql="select * from companies where (id=$id or master_id=$id)";
        $companies =  DB::select("$sql");
        foreach ($companies as $row){
            if(!$row->master_id){
                $data['master']=['name'=>$row->name,
                    'contact_num'=>$row->contact_num,
                    'address'=>$row->address,
                    'id'=>$row->id];
            }
            else{
                $data['sub_com'][]=['name'=>$row->name,
                    'address'=>$row->address,
                    'contact_num'=>$row->contact_num,
                    'id'=>$row->id,
                    'master_id'=>$row->master_id];
            }
        }
        return $data;
    }

    public  static function master()
    {
        $sql="select * from companies where (master_id is null or master_id=0)";
        $master = DB::select("$sql");
        return $master;
    }
}
