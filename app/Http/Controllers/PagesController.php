<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PagesController extends Controller
{
	public function getUser()
	{
		return view('pages.users');
	}

	public function getEmployee()
	{
		return view('pages.employee');
	}
    //
}
