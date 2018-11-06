<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Company;
use DB;
use App\Models\Raw;
//use Illuminate\Support\Facades\Session;
use Session;
class CompanyController extends Controller
{

    // public function __construct()
    // {
    // $this->middleware(['auth', 'clearance']);
    // }
//    public function create()
//    {
//        $companies = DB::table('companies')->where('master_id', null)->get();
//        return view('companies.create')->withCompanies($companies);
//    }

    public static function sections($id)
    {
        $sec = DB::table('companies')->where('master_id', $id)->get();
        $s = $sec->pluck('name');
        return $s;
    }

//    public function store(Request $request)
//    {
//        $this->validate($request, $this->rules());
//
//        $company = new Company();
//
//        $company->name = $request->company_name;
//        $company->address = $request->address;
//        $company->master_id = $request->company;
//        $company->contact_num = $request->contact_num;
//        $company->save();
//        Session::flash('success', 'Companies successfully added!');
//        return redirect()->route('company.create');
//    }

//    public function edit($id)
//    {
//        $companies = Raw::companies($id);
//        if (count($companies) === 1)
//            $subCompanies = '';
//        else
//            $subCompanies = $companies['sub_com'];
//        $master = Raw::master();
//        return view('companies.edit')->withCompanies($companies)
//            ->withSubCompanies($subCompanies)
//            ->withMaster($master); /* , compact($companies, $subCompanies)); */
//    }

//    public function update(Request $request, $id)
//    {
//        $company = Company::find($id);
//
//        $company->name = $request->input('company_name');
//        $company->address = $request->input('address');
//        $company->contact_num = $request->input('contact');
//
//        $company->save();
//        Session::flash('success', 'Companies successfully updated!');
//        return redirect()->route('company.edit', $id);
//    }

    // function for displaying master company
    public static function master($id)
    {
        if ($id == 0) {
            return 'None';
        } else
            $master = Company::find($id);
        return $master['name'];
    }

    public function sub(Request $request)
    {
        if ($request->ajax()) {
            $id = $request->get('selected');
            if ($id != null) {
                $sub = DB::table('companies')->where('id', $id)->first();
                if ($sub) {
                    $subComp = [
                        'name' => $sub->name,
                        'address' => $sub->address,
                        'contact' => $sub->contact_num
                    ];
                }
            }
        }
        echo json_encode($subComp);
    }

//    public function subCompanyUpdate(Request $request)
//    {
//        if ($request->ajax()) {
//            $id = $request->get('id');
//            $name = $request->get('name');
//            $contact = $request->get('contact');
//            $address = $request->get('address');
//            $master = $request->get('master');
//
//            $sub = Company::find($id);
//
//            $sub->name = $name;
//            $sub->contact_num = $contact;
//            $sub->address = $address;
//            $sub->master_id = $master;
//
//            $sub->save();
//            Session::flash('success', 'Sub companies successfully added!');
//            return redirect()->route('company.create');
//        }
//    }

    public function manageCompanies(Request $request)
    {
        $masterCompany = Company::where('master_id', null)->get();
        $allCompanies = Company::all();
        return view('companies.manage', compact('masterCompany', 'allCompanies'));
    }

    protected function rules()
    {
        return [
            'name' => 'bail|unique:companies|required|max:191',
            'contact_num' => 'required|numeric',
            'address' => 'required'
        ];
    }

    public function saveCompany(Request $request)
    {
//        dd($request->all());
        $company = new Company();
        $company->name = $request->company_name;
        $company->address = $request->company_address;
        $company->contact_num = $request->company_contact;
        $company->save();
        $id = $company->id;

        $section = new Company();
        $section->name = $request->section_name;
        $section->address = $request->section_address;
        $section->contact_num = $request->section_contact;
        $section->master_id = $id;
        $section->save();
        $sectionId = $section->id;

        $subSection = new Company();
        $subSection->name = $request->subsection_name;
        $subSection->master_id = $sectionId;
        $subSection->address = $request->section_address;
        $subSection->contact_num = $request->section_contact;
        $subSection->save();

        Session::flash('success', 'company added');
        return redirect()->route('manageCompanies');
    }

    public function updateCompanies(Request $request)
    {
        if($request->ajax()) {
            $companyId = $request->get('companyId');
            $companyName = $request->get('companyName');
            $companyContact = $request->get('companyContact');
            $companyAddress = $request->get('companyAddress');
            $sectionId = $request->get('sectionId');
            $sectionName = $request->get('sectionName');
            $sectionContact = $request->get('sectionContact');
            $sectionAddress = $request->get('sectionAddress');
            $sectionLeader = $request->get('sectionLeader');
            $subId = $request->get('subId');
            $subName = $request->get('subName');
            $data = [$companyId, $companyName, $companyContact, $companyAddress, $sectionId, $sectionAddress, $subName];


            if($companyId != 0)
            {
                $company = Company::find($companyId);
                $company->name = $companyName;
                $company->address = $companyAddress;
                $company->contact_num = $companyContact;
                $company->save();
                if($sectionId !=0)
                {
                    $section = Company::find($sectionId);
                    $section->name = $sectionName;
                    $section->address = $sectionAddress;
                    $section->contact_num = $sectionContact;
                    $section->save();
                    if($subId != 0)
                    {
                        $sub = Company::find($subId);
                        $sub->name = $subName;
                        $sub->contact_num = $sectionContact;
                        $sub->address = $sectionAddress;
                        $sub->save();
                    }
                }
            }
            // Session::flash('success', 'Companies successfully updated!');
        }
        echo json_encode($data);
    }

    public function viewDetail()
    {
        $fetch_detail = [];
        $data['companies'] = Raw::AllCompanyData();
        return view('companies.companyview', $data);
    }

    public function getSection(Request $request)
    {
        if($request->ajax())
        {
            $companyId = $request->get('selectedCompany');
            $company = Company::find($companyId);
            $sections = Company::where('master_id', $companyId)->get();

            $data = [
                'company' => $company,
                'sections' => $sections
            ];

            echo json_encode($data);
        }
    }

    public function subSection(Request $request)
    {
        if($request->ajax())
        {
            $subId = $request->get('selectedCompany');
            $sub = Company::find($subId);
            echo json_encode($sub);
        }
    }

    public function addmoreSection(Request $request)
    {
        if($request->ajax())
        {
            $master_id = $request->get('selectedCompany');
            $name = $request->get('sectionName');
            $contact = $request->get('sectionContact');
            $address = $request->get('sectionAddress');
            $sub = $request->get('subName');

            $section = new Company();
            $section->name = $name;
            $section->master_id = $master_id;
            $section->address = $address;
            $section->contact_num = $contact;
            $section->save();

            $subSection = new Company();
            $subSection->name = $sub;
            $subSection->address = $address;
            $subSection->master_id = $section->id;
            $subSection->contact_num = $contact;
            $subSection->save();
            echo json_encode($section);

//            Session::flash('success', 'Section successfully saved!');
        }
    }

    public  function addmoreSubsection(Request $request)
    {
        if($request->ajax())
        {
            $master = $request->get('selectedCompany');
            $name = $request->get('subName');

            $company = Company::find($master);

            $sub = new Company();
            $sub->name = $name;
            $sub->master_id = $master;
            $sub->contact_num = $company->contact_num;
            $sub->address = $company->address;
            $sub->save();

            $data = [
              'name' => $sub->name,
              'id' => $sub->id
            ];
        }
        echo json_encode($data);
//        Session::flash('success', 'Sub-section successfully saved!');
    }

}
