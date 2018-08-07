<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;

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

	public function generator()
	{
		$companies = Company::all();
		return view('pages.generator')->withCompanies($companies);
	}

	public function generatorWork()
	{
		
	}
}
