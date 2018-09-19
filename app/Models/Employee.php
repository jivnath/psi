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
    public function company()
    {
        return $this->belongsTo(Company::class);
    }

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
    public static function groupByCompany()
    {
        return static::with('company')
                    ->selectRaw('*, count(id) as total')
                    ->groupBy('company_id')
                    ->orderBy('updated_at', 'DESC')
                    ->paginate(50);
    }

    /**
     * Fetch employee by company
     *
     * @return Collection
     */
    public static function byCompany($companyId)
    {
        return static::with('company')
                    ->where('company_id', $companyId)
                    ->orderBy('updated_at', 'DESC')
                    ->get();
    }

    /**
     * Check is record exist by psiNum and companyId
     *
     * @return boolean
     */
    public static function isRecordExist($psiNum, $companyId)
    {
        $count = static::where('psi_number', $psiNum)->where('company_id', $companyId)->count();
        return ($count > 0) ? true : false;
    }

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

    /**
     * Update employee cell value
     */
    public static function updateCell($data)
    {
        static::where([
            ['company_id', $data['company_id']],
            ['psi_number', $data['psi_num']]
        ])->update([$data['column'] => $data['value']]);
    }
}
