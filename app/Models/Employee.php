<?php

namespace App\Models;

class Employee extends Model
{
    protected $guarded = [];

    /**
     * Employee belongsTo relation with Company
     *
     * @return Company
     */
//    public function company()
//    {
//        return $this->belongsTo(Company::class);
//    }

    public function employeeAvailability()
    {
        //relation to employee availability
        return $this->hasOne('App\Models\EmployeeAvailability');
    }
    public function employeeSkill()
    {
        return $this->hasMany(EmployeeSkill::class, 'psi_num', 'psi_number');
    }


    /**
     * Fetch employee data by grouping company id in descending order
     *
     * @return Collection
     */
//    public static function groupByCompany()
//    {
//        return static::with('company')
//                    ->selectRaw('*, count(id) as total')
//                    ->groupBy('company_id')
//                    ->orderBy('updated_at', 'DESC')
//                    ->paginate(50);
//    }

    /**
     * Fetch employee by company
     *
     * @return Collection
     */
//    public static function byCompany($companyId)
//    {
//        return static::with('company')
//                    ->where('company_id', $companyId)
//                    ->orderBy('updated_at', 'DESC')
//                    ->get();
//    }

    /**
     * Check is record exist by psiNum and companyId
     *
     * @return boolean
     */
//    public static function isRecordExist($psiNum, $companyId)
//    {
//        $count = static::where('psi_number', $psiNum)->where('company_id', $companyId)->count();
//        return ($count > 0) ? true : false;
//    }

    /**
     * Fetch employee columns and remove id, company_id
     *
     * @return array
     */
    public static function columns($removeColumns = [])
    {
        $columns = static::fields();

        foreach ($removeColumns as $removeColumn) {
            $pos = array_search($removeColumn, $columns);
            unset($columns[$pos]);
        }

        return array_values($columns); //rebase
    }

    public static function basicInfo()
    {
        return ['psi_number', 'name', 'phoetic_kanji', 'sex', 'country_citizenship', 'birthdate'];
    }

    public static function contacts()
    {
        return ['cell_no', 'viber_install', 'email'];
    }

    public static function residence()
    {
        return ['address_jp', 'residence_card_no', 'residence_card_exp_date', 'status_residence',];
    }

    public static function bank()
    {
        return ['financial_institution', 'branch_name', 'accout_numer', 'account_holder', 'account_registration',];
    }

    /**
     * Update employee cell value
     */
    public static function updateCell($data)
    {
        static::where([
//            ['company_id', $data['company_id']],
            ['psi_number', $data['psi_num']]
        ])->update([$data['column'] => $data['value']]);
    }
    public static function parseDataAtt($requestData){
        $columns=[];
        $customize_columns = PsiViewCustimizeModel::select('field_name')->where([
            'status' => 'y',
            'type' => 'employee'
        ])
            ->orderBy('id', 'asc')
            ->get();
        foreach ($customize_columns as $row){
            $columns[]=$row->field_name;
        }
        $columns[count($columns)]='skill';
        $c = $sql = "select count(*) As cnt from employees where 1=1";
        $d = $sql ="select * from employees where 1=1";
        $query_sql = str_replace($d, $c, $sql);
        $totalFiltered=collect(\DB::select($query_sql))->pluck('cnt')[0];
        $totalData = $totalFiltered;
        $sql .= " ORDER BY " . $columns[$requestData['order'][0]['column']] . "   " . $requestData['order'][0]['dir'] . "  LIMIT " . $requestData['start'] . " ," . $requestData['length'] . "   ";
        $query=\DB::select($sql);
        $data=[];

        foreach ($query as $row){
            $nestedData = [];
            foreach ($columns as $col) {
                if ($col == 'skill')
                    $nestedData[] = '---';
                else
                    $nestedData[] = $row->{$col};
            }
            $data[] = $nestedData;
        }
        $json_data = array(
            "draw" => intval($requestData['draw']), // for every request/draw by clientside , they send a number as a parameter, when they recieve a response/data they first check the draw number, so we are sending same number in draw.
            "recordsTotal" => intval($totalData), // total number of records
            "recordsFiltered" => intval($totalFiltered), // total number of records after searching, if there is no searching then totalFiltered = totalData
            "data" => $data
        ); // total data array

        echo json_encode($json_data);

    }
}
