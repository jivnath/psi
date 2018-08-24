<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ShiftMasterData;
use Validator;
use App\Models\Company;
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
		$data['shifts'] = ShiftMasterData::all();
		$data['companies'] = Company::all();
		return view('shift.add', $data);
	}

	public function store(Request $request)
	{
		$shift = new ShiftMasterData;

		$shift->company_id = $request->shiftName;
		$shift->start_time = $request->startTime;
		$shift->end_time = $request->endTime;

		$shift->save();

		return redirect()->route('shift.add');
	}

	public function edit($id)
	{
		$shifts = ShiftMasterData::all();
		$shiftData = ShiftMasterData::find($id);

		return view('shift.edit')->withShifts($shifts)->withShiftData($shiftData);
	}

	public function update(Request $request, $id)
	{
		$shift = ShiftMasterData::find($id);

		$shift->shift_name = $request->input('shiftName');
		$shift->start_time = $request->input('startTime');
		$shift->end_time = $request->input('endTime');

		$shift->save();

		return redirect()->route('shift.add');
	}
}
