<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\AlertSetting;

class ViberAlertController extends Controller
{
    public function setting()
    {
        return view('viber.alert_setting');
    }

    public function storeSetting(Request $request)
    {
        if($request->ajax()) {
            $expiryInt = $request->get('expiryInt');
            $expiryType = $request->get('expiryType');
            $beforeOneInt = $request->get('beforeOneInt');
            $beforeOneType = $request->get('beforeOneType');
            $beforeOneCount = $request->get('beforeOneCount');
            $beforeThreeInt = $request->get('beforeThreeInt');
            $beforeThreeType = $request->get('beforeThreeType');
            $beforeThreeCount = $request->get('beforeThreeCount');
            $arrivalInt = $request->get('arrivalInt');
            $arrivalType = $request->get('arrivalType');
            $arrivalCount = $request->get('arrivalCount');

            $expiry = new AlertSetting();
            $expiry->schedule_title = 'card expiry';
            $expiry->interval_value = $expiryInt;
            $expiry->interval_types = $expiryType;
            $expiry->interval_endpoint = null;
            $expiry->medium = 'viber';
            $expiry->save();

            $beforeOne = new AlertSetting();
            $beforeOne->schedule_title = 'before one day';
            $beforeOne->interval_value = $beforeOneInt;
            $beforeOne->interval_types = $beforeOneType;
            $beforeOne->interval_endpoint = $beforeOneCount;
            $beforeOne->medium = 'viber';
            $beforeOne->save();

            $beforeThree = new AlertSetting();
            $beforeThree->schedule_title = 'before three hours';
            $beforeThree->interval_value = $beforeThreeInt;
            $beforeThree->interval_types = $beforeThreeType;
            $beforeThree->interval_endpoint = $beforeThreeCount;
            $beforeThree->medium = 'viber';
            $beforeThree->save();

            $arrival = new AlertSetting();
            $arrival->schedule_title = 'arrival conformation';
            $arrival->interval_value = $arrivalInt;
            $arrival->interval_types = $arrivalType;
            $arrival->interval_endpoint = $arrivalCount;
            $arrival->medium = 'viber';
            $arrival->save();

        }
    }
}
