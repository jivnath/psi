<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ShiftMasterData;
use App\Models\Company;
use Validator;
use App\Models\Raw;
class ShiftMasterController extends Controller
{
	public function addMore()
    {
        return view("addMore");
    }


    public function addMorePost(Request $request)
    {
        $rules = [];


        foreach($request->input('shift') as $key => $value) {
            $rules["shift.{$key}"] = 'required';
        }


        $validator = Validator::make($request->all(), $rules);


        if ($validator->passes()) {


            foreach($request->input('shift') as $key => $value) {
                ShiftMasterData::create(['shift'=>$value]);
            }


            return response()->json(['success'=>'done']);
        }


        return response()->json(['error'=>$validator->errors()->all()]);
    }
	public function add()
	{
	    $primary = \Session::get('primary_company');
		$data['shifts'] = Raw::getSubsectionShifts();
		$data['companies']= Company::where('master_id', $primary->id)->get();
//		$data['companies'] = Raw::getCompaniesForShift();
		return view('shift.add')->withData($data);
	}

	public function store(Request $request)
	{
	    $start_shifts = $request->input('start_shift');
	    $end_shifts = $request->input('end_shift');
	    $shifts = array_combine($start_shifts, $end_shifts);
	    foreach ($shifts as $key=>$value)
        {
            $this->validate($request, $this->rules());

            $newshift = ShiftMasterData::firstOrNew([
                'company_id' => $request->company_name,
                'start_time' => $key
            ]);

            if($newshift->exists) {
                //do nothing
            }
            else{
                $newshift->company_id = $request->company_name;
                $newshift->start_time = $key;
                $newshift->end_time = $value;

                $newshift->save();
            }
        }
		return redirect()->route('shift.add');
	}

	public function edit($id)
	{
		$shiftData = ShiftMasterData::find($id);
		return view('shift.edit')->withShiftData($shiftData);
	}

	public function update(Request $request, $id)
	{
		$shift = ShiftMasterData::find($id);

		$shift->start_time = $request->input('startTime');
		$shift->end_time = $request->input('endTime');

		$shift->save();

		return redirect()->route('shift.add');
	}

	public static function findCompany($id)
    {
        $company = Company::find($id);
        return $company->name;
    }

    protected function rules()
    {
        return [
            'company_name' => 'bail|required',
            'start_shift' => 'required',
            'end_shift' => 'required',
        ];
    }
}
