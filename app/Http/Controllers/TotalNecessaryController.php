<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Raw;

class TotalNecessaryController extends Controller
{
	public function totalNecessary()
	{
		// $cars = Car::myOrder()->get();

		$totalNecessary = Raw::totalNecessary()->get();

		return view('pages.total', compact('totalNecessary'));



	}
}
