<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PsiViewCustimizeModel;

class CustomerTableView extends Controller
{

    public function saveCustomizedField(Request $request)
    {
        $on_id = '';
        $request_data = $request->all('customized');
        foreach ($request_data as $key => $row) {
            foreach ($row as $val) {
                list ($first) = explode('~~', $val);
                $on_id .= $first . ',';
            }
        }
        $include_id = explode(',',rtrim($on_id, ','));
        $type = $request->type;
        $created_by = $request->modified_by;
        PsiViewCustimizeModel::where('type', 'employee')->whereNotIn('id',$include_id)->update([
            'status' => 'n'
        ]);
        PsiViewCustimizeModel::where('type', 'employee')->whereIn('id',$include_id)->update([
            'status' => 'y'
        ]);

        return redirect()->back();
    }
}
