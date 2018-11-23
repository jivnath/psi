<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\Leader;
use App\Models\Raw;
use Session;
use DB;

class LeaderController extends Controller
{
    public function create()
    {
        $companies = Raw::getSecondLevelCompanies();
        $managers = Raw::getDataForSectionManager();
        return view('leader.create', compact('companies', 'managers'));

    }

    public function removeManager(Request $request)
    {
        if($request->ajax())
        {
            $id = $request->get('id');
            $leader = Leader::find($id);
            $leader->delete();

            echo json_encode(1);
        }
    }

    public function store(Request $request)
    {
        $this->validate($request, $this->rules());
        $manager = Leader::firstOrNew(
            ['psi_num' => $request->psi_num,
            'company_id' => $request->company_name]
        );

        if ($manager->exists)
        {
            Session::flash('error', trans('employee.Manageralreadyexists'));
            return redirect()->route('leader.create');
        }
        else
        {
//            $leader = new Leader;
            $manager->company_id = $request->company_name;
            $manager->psi_num = $request->psi_num;
            $manager->contact_num = $request->contact_num;
            $manager->save();

            Session::flash('success', trans('employee.Managersuccessfullyadded!'));
            return redirect()->route('leader.create');
        }


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
                $leaderName = 0;
        }
        echo json_encode($leaderName);


    }

//    public function edit($id)
//    {
//        $companies = Company::all();
//        $leader = Leader::find($id);
//
//        return view('leader.create', compact('companies'))->withLeader($leader);
//
//    }

//    public function update(Request $request, $id)
//    {
//        $this->validate($request, $this->rules());
//
//        $leader = Leader::find($id);
//
//        $leader->company_id = $request->input('company_id');
//        $leader->psi_num = $request->input('psi_num');
//        $leader->contact_num = $request->input('contact_num');
//
//        $leader->save();
//    }

    protected function rules()
    {
        return [
            'company_name' => 'required',
            'psi_num' => 'bail|required',
            'contact_num'=>'nullable'
        ];
    }
}
