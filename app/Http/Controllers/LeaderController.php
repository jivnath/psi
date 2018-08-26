<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\Leader;
use DB;

class LeaderController extends Controller
{
    public function create()
    {
        $companies = Company::all();
        return view('leader.create', compact('companies'));

    }

    public function store(Request $request)
    {
        $leader = new Leader;

        $leader->company_id = $request->company_name;
        $leader->psi_num = $request->psi_num;
        $leader->contact_num = $request->contact_num;

        $leader->save();

        return redirect()->route('leader.create');
    }

    public function showName(Request $request)
    {
        if($request->ajax())
        {
            $psi_num = $request->get('selected');
            if($psi_num != null)
            {
                $leaderName = '';
                $leader = DB::table('employees')->where('psi_number', $psi_num)->first();
                if($leader)
                    $leaderName .= $leader->name;
                else
                    $leaderName = '';

            }
            else
                $leaderName = '';
        }
        echo $leaderName;


    }

    public function edit($id)
    {
        $companies = Company::all();
        $leader = Leader::find($id);

        return view('leader.create', compact('companies'))->withLeader($leader);

    }

    public function update(Request $request, $id)
    {
        $leader = Leader::find($id);

        $leader->company_id = $request->input('company_id');
        $leader->psi_num = $request->input('psi_num');
        $leader->contact_num = $request->input('contact_num');

        $leader->save();
    }
}