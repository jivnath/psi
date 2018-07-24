<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use \PhpOffice\PhpSpreadsheet\Shared\Date as ExcelDate;
use App\Models\Employee;

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
            'company_id' => 'bail|required:exists,companies',
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

        return $this;
    }

    /**
     * Prepare data to insert in database by iterating spreadsheet with table columns
     *
     * @return ExcelReader instance
     */
    public function iterateSheet()
    {
        $columns = Employee::columns(['id', 'company_id', 'created_at', 'updated_at']);

        foreach ($this->currentSpreadsheet->getAllSheets() as $worksheet) {
            $highestRow = $worksheet->getHighestRow(); // e.g. 10
            $highestColumn = $worksheet->getHighestColumn(); // e.g 'F'
            $highestColumnIndex = \PhpOffice\PhpSpreadsheet\Cell\Coordinate::columnIndexFromString($highestColumn);

            for ($row = 2; $row <= $highestRow; ++$row) { //skip header so $row = 2
                for ($col = 1; $col <= $highestColumnIndex; ++$col) {
                    $value = $worksheet->getCellByColumnAndRow($col, $row)->getValue();
                    //echo $value . ' - ';
                    if ($col == 1 && Employee::isRecordExist((int)$value, $this->company_id)) {
                        break;
                    }
                    $this->setColumnData($columns, $value, $row - 1, $col - 1, $highestColumnIndex);
                }
            }
        }

        return $this;
    }

    /**
     * Store Employee data to database
     *
     */
    public function store()
    {
        //dd($this->data);
        try {
            Employee::inserts($this->data);
        } catch (\Exception $e) {
            // print_r($e->getMessage());
           // die;
        }
    }

    /**
     * Prepare each cell data with key value pair using db column
     */
    protected function setColumnData($columns, $cellValue, $rowIndex, $cellIndex, $totalCell)
    {
        $column = isset($columns[$cellIndex]) ? $columns[$cellIndex] : null;

        if ($column && in_array($column, $this->dateColumns())) {
            $this->data[$rowIndex][$column] = (strlen($cellValue) > 0) ? ExcelDate::excelToDateTimeObject($cellValue) : null;
        } elseif ($column) {
            $this->data[$rowIndex][$column] = $cellValue;
        }

        if ($cellIndex == $totalCell - 1) {
            $dateTime = date('Y-m-d H:i:s');
            $this->data[$rowIndex]['created_at'] = $dateTime;
            $this->data[$rowIndex]['updated_at'] = $dateTime;
            $this->data[$rowIndex]['company_id'] = $this->company_id; //from request
        }
    }

    protected function dateColumns()
    {
        return ['hire_date', 'retirement_date', 'birthdate', 'residence_card_exp_date'];
    }
}
