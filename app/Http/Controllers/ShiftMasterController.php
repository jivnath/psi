<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ShiftMasterData;

class ShiftMasterController extends Controller
{
	public function add()
	{
		$shifts = ShiftMasterData::all();
		return view('shift.add')->withShifts($shifts);
	}

	public function store(Request $request)
	{
		$shift = new ShiftMasterData;

		$shift->shift_name = $request->shiftName;
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
