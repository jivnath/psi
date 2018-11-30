<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use \PhpOffice\PhpSpreadsheet\Shared\Date as ExcelDate;
use App\Models\Employee;
use App\Models\CompanyToEmployee_rel;

class ExcelReader extends FormRequest
{
    /**
     * Hold Employee data to insert in database
     */
    protected $data = [];

    /**
     * Current Spreedsheet instance
     */
    protected $currentSpreadsheet = null;

    /**
     * Authorize uploaded file
     * @return boolean
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Apply validation rules on uploaded file
     * @return array
     */
    public function rules()
    {
        return [
//            'company_id' => 'bail|required:exists,companies',
            'excelFile' => 'required|mimes:xls,xlsx'
        ];
    }

    /**
     * Upload file and feed it to PhpSpreadsheet reader
     *
     * @return ExcelReader instance
     */
    public function uploadSheet()
    {
        $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReader('Xlsx');

        $reader->setReadDataOnly(true);

        $path = $this->excelFile->getRealPath();

        $this->currentSpreadsheet = $reader->load($path);

//        dd($this);
        return $this;
    }

    /**
     * Prepare data to insert in database by iterating spreadsheet with table columns
     *
     * @return ExcelReader instance
     */
    public function iterateSheet()
    {
        $columns = Employee::columns(['id', 'created_at', 'updated_at']);
//        dd($columns);

        foreach ($this->currentSpreadsheet->getAllSheets() as $worksheet) {
//            dd($worksheet);
            $highestRow = $worksheet->getHighestRow();// e.g. 10
//            dd($highestRow);
            $highestColumn = $worksheet->getHighestColumn(); // e.g 'F'
            $highestColumnIndex = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::columnIndexFromString($highestColumn);

            for ($row = 3; $row <= $highestRow; ++$row) { //skip header so $row = 2
                for ($col = 2; $col <= $highestColumnIndex; ++$col) {

                    $value = $worksheet->getCellByColumnAndRow($col, $row)->getValue();
                    $excel_actual_cell = $worksheet->getCellByColumnAndRow($col, 1)->getValue();
//                    if($col==14)
//                        $excel_actual_cell = 'name';

//                    dd($excel_actual_cell);

                    $this->setColumnData($columns, $value, $row - 1, $col - 1, $highestColumnIndex,$excel_actual_cell);
//                    dd($this);
                }
            }
        }

//        dd($this->data);
        return $this;
    }

//    protected $checkDuplicates = [];

    /**
     * Check if the  Employee data already exists
     *
     * Store the data accordingly
     * @returns array
     */
    public function checkDuplicateAndStore()
    {
        $checkDuplicates = [];
        $yes = [];
        $no = [];
//        dd($this->data);
        foreach($this->data as $data )
        {
//            dd($this);
            $employee = Employee::firstOrNew([
                'psi_number' => $data['psi_number']
            ]);
            if ($employee->exists) {
                array_push($yes, $data);
            }
            else {
                array_push($no, $data);
            }
        }
//        dd($no);
        $checkDuplicates['yes'] = $yes;
        $checkDuplicates['no'] = $no;
//        dd($checkDuplicates);
        try {
            foreach (array_chunk($checkDuplicates['no'], 500) as $no)
            Employee::inserts($no);
//            CompanyToEmployee_rel::insert($checkDuplicates['yes']);

        } catch (\Exception $e) {
             print_r($e->getMessage());
            die;
        }
        $this->checkDuplicates = $checkDuplicates;
        return $this->checkDuplicates;
    }

    protected function dateColumns()
    {
        return ['hire_date', 'retirement_date', 'birthdate', 'residence_card_exp_date', 'expiration_date'];
    }

    protected function mapColumns()
    {
        return['' => 'cell_no', '口座' => 'account', '入力' => 'input', '入社日（初めて働いた日）' => 'hire_date', '退職日' => 'retirement_date', '稼働状況 ①稼働中 ②低頻度稼働中 ⓪休止中' => 'opt_management', '契約書回収' => 'contract_collection', '在留カード期限満了' => 'residence_card_exp_date', '勤務先' => 'office', 'わらべや従業員No' => 'psi_number', '国籍' => 'country_citizenship', 'フリガナ' => 'phoetic_kanji', '氏名' => 'name', '生年月日 ' => 'birthdate', '性別' => 'sex', 'Viber' => 'viber_install', 'Eメール' => 'email', '学校の情報' => 'school_information', '場所' => 'address_jp', '在留カードの【番号】　※例：AB12345678CD' => 'residence_card_no', '金融機関名【例：株式会社ゆうちょ銀行】' => 'financial_institution', '業務内容' => 'business_content', '派遣先' => 'dispatch_destination', '勤務地' => 'work_location', '施設名' => 'name_of_facility', '本人支払時給' => 'hourly_wage', '時給社員' => 'hourly_employee', '口座番号' => 'account_number', '口座名義（カナ）' => 'account_holder', '口座登録' => 'account_registration', '旧【PSI-S従業員No.】' => 'old_double_registration', '在留カードに記載のある【満了日】' => 'expiration_date', '支店名 、店番【店名】〇一八、【店番】018' => 'branch_name', '在留資格' => 'status_residence', '経路' => 'path', '片道料金' => 'one_way_rate', '定期代' => 'pass_price', 'メモ' => 'notes', '扶養控除申告書有(甲欄)' => 'dependent_exemption', '在留カード番号【番号】※例' => 'residence_card_no',];
    }

    /**
     * Prepare each cell data with key value pair using db column
     * @todo $columns remove for nxt release
     */
    protected function setColumnData($columns, $cellValue, $rowIndex, $cellIndex, $totalCell, $excel_actual_cell)
    {
        $column = '';
//        dd($this->dateColumns());
//        if(isset($this->mapColumns()[$excel_actual_cell])){
//            $column = $this->mapColumns()[$excel_actual_cell];
//        }
//        elseif ($excel_actual_cell == 'name')
            $column = $excel_actual_cell;
//        $column =$excel_actual_cell;
        // isset($columns[$cellIndex]) ? $columns[$cellIndex] : null;
//        dd($excel_actual_cell);
        if ($column && in_array($column, $this->dateColumns())) {

            $this->data[$rowIndex][$column] = (strlen($cellValue) > 0) ? ExcelDate::excelToDateTimeObject($cellValue) : null;

        } elseif ($column) {

            $this->data[$rowIndex][$column] = $cellValue;
        }

        if ($cellIndex == $totalCell - 1) {
            $dateTime = date('Y-m-d H:i:s');
            $this->data[$rowIndex]['created_at'] = $dateTime;
            $this->data[$rowIndex]['updated_at'] = $dateTime;
//            $this->data[$rowIndex]['company_id'] = $this->company_id; //from request
        }
    }
}
