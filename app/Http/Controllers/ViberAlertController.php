<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\AlertSetting;
use App\Models\Raw;
use Session;
use Illuminate\Support\Facades\Log;
use App\Models\Cron;

class ViberAlertController extends Controller
{

    public function setting()
    {
        $expiry = AlertSetting::where('schedule_title', 'card expiry')->first();
        $one = AlertSetting::where('schedule_title', 'before one day')->first();
        $three = AlertSetting::where('schedule_title', 'before three hours')->first();
        $arrival = AlertSetting::where('schedule_title', 'arrival confirmation')->first();
        return view('viber.alert_setting')->withExpiry($expiry)
            ->withOne($one)
            ->withThree($three)
            ->withArrival($arrival);
    }

    public function storeSetting(Request $request)
    {
        // dd($request->all());
        $expiryInt = $request->expiryInt;
        $expiryType = $request->expiryType;
        $beforeOneInt = $request->beforeOneInt;
        $beforeOneType = $request->beforeOneType;
        $beforeOneCount = $request->beforeOneCount;
        $beforeThreeInt = $request->beforeThreeInt;
        $beforeThreeType = $request->beforeThreeType;
        $beforeThreeCount = $request->beforeThreeCount;
        $arrivalInt = $request->arrivalInt;
        $arrivalType = $request->arrivalType;
        $arrivalCount = $request->arrivalCount;
        // dd($expiryInt);

        $expiry = AlertSetting::firstOrNew([
            'schedule_title' => 'card expiry'
        ]);

        $expiry->schedule_title = 'card expiry';
        $expiry->interval_value = $expiryInt;
        $expiry->interval_types = $expiryType;
        $expiry->interval_endpoint = null;
        $expiry->medium = 'viber';
        $expiry->save();

        $beforeOne = AlertSetting::firstOrNew([
            'schedule_title' => 'before one day'
        ]);
        $beforeOne->schedule_title = 'before one day';
        $beforeOne->interval_value = $beforeOneInt;
        $beforeOne->interval_types = $beforeOneType;
        $beforeOne->interval_endpoint = $beforeOneCount;
        $beforeOne->medium = 'viber';
        $beforeOne->save();

        $beforeThree = AlertSetting::firstOrNew([
            'schedule_title' => 'before three hours'
        ]);

        $beforeThree->schedule_title = 'before three hours';
        $beforeThree->interval_value = $beforeThreeInt;
        $beforeThree->interval_types = $beforeThreeType;
        $beforeThree->interval_endpoint = $beforeThreeCount;
        $beforeThree->medium = 'viber';
        $beforeThree->save();

        $arrival = AlertSetting::firstOrNew([
            'schedule_title' => 'arrival confirmation'
        ]);
        $arrival->schedule_title = 'arrival confirmation';
        $arrival->interval_value = $arrivalInt;
        $arrival->interval_types = $arrivalType;
        $arrival->interval_endpoint = $arrivalCount;
        $arrival->medium = 'viber';
        $arrival->save();

        Session::flash('success', trans('employee.Settingsuccessfullysaved!'));
        return redirect()->route('viberAlert');
    }

    public function sendAlertResidenceExpiry()
    {
        $employees = Raw::getEmployeeResidenceExpiry();

        foreach ($employees as $employee) {
            $sender['sender_type'] = 'psi_number';
            $sender['sender_identity'] = $employee->psi_number;
            $sender['sender_message'] = 'alert message';
            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => "https://hrms.jp/viber_send_msg",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                CURLOPT_POSTFIELDS => $sender,
                CURLOPT_HTTPHEADER => array(
                    "Cache-Control: no-cache"
                )
            ));

            $response = curl_exec($curl);
            $err = curl_error($curl);

            curl_close($curl);

            if ($err) {
                return "cURL Error #:" . $err;
            } else {
                return $response;
            }
        }
        // dd($employees);
    }

    public function sendAlertOneDayBefore()
    {
        $employees = Raw::getEmployeeOneDayBefore();

        foreach ($employees as $employee) {
            $sender['sender_type'] = 'psi_number';
            $sender['sender_identity'] = $employee->staff_no;
            $sender['sender_message'] = 'alert message';

            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => "https://hrms.jp/viber_send_msg",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                CURLOPT_POSTFIELDS => $sender,
                CURLOPT_HTTPHEADER => array(
                    "Cache-Control: no-cache"
                )
            ));

            $response = curl_exec($curl);
            $err = curl_error($curl);

            curl_close($curl);

            if ($err) {
                return "cURL Error #:" . $err;
            } else {
                return $response;
            }
        }
    }

    public function sendAlertThreeHoursAgo()
    {
        $employees = Raw::getEmployeeThreeHoursAgo();

        foreach ($employees as $employee) {
            $sender['sender_type'] = 'psi_number';
            $sender['sender_identity'] = $employee->staff_no;
            $sender['sender_message'] = 'alert message';
            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => "https://hrms.jp/viber_send_msg",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => "",
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 30,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                CURLOPT_POSTFIELDS => $sender,
                CURLOPT_HTTPHEADER => array(
                    "Cache-Control: no-cache"
                )
            ));

            $response = curl_exec($curl);
            $err = curl_error($curl);

            curl_close($curl);

            if ($err) {
                return "cURL Error #:" . $err;
            } else {
                return $response;
            }
        }
    }

    public function cron_process()
    {
        Log::info('Showing user profile for user');

        $current_date = date('Y-m-d');
        $cron_obj = new Cron();
        $all_data = AlertSetting::whereRaw("app_url!=''")->get();
        foreach ($all_data as $row) {
            $last_run_statement = Raw::last_run_date($row->id);
            $last_run = $last_run_statement[0]->min_date;
            $convert_to_sec = strtotime($last_run);
            $interval_time = $row->interval_value * 60;
            $next_run = $convert_to_sec + $interval_time;

            $next_run_time = date("Y-m-d H:i", $next_run);
            $current_run_time = date("Y-m-d H:i");

            $url = $row->app_url;

            $start_date = $row->start_date;
            $end_date = $row->end_date;
            $period = $row->cron_run_period;

            $alert_update_obj = AlertSetting::find($row->id);
            $alert_update_obj->start_date = $current_date;
            $alert_update_obj->end_date = date('Y-m-d', strtotime($current_date . " + {$period} days"));
            $store_date_period = $alert_update_obj->save();
            if ($current_date === $end_date) {
                $this->modifyALertDate($row->id, $period, $current_date);
            }

            $exits = $cron_obj::where('setting_id', $row->id)->whereRaw("date(created_at) between date('$start_date') AND date('$end_date')");
            if ($exits->count() <= $row->interval_endpoint) {

                if ($next_run_time == $current_run_time) {
                    $cron_obj->setting_id = $row->id;
                    $cron_obj->save();
                    $response = $this->$url();
                    Log::info('settings id:' . $row->id . ' with ' . $response);
                }
            }
        }
    }

    private function modifyALertDate($id, $period, $current_date)
    {
        $alert_update_obj = AlertSetting::find($id);
        $alert_update_obj->start_date = $current_date;
        $alert_update_obj->end_date = date('Y-m-d', strtotime($current_date . " + {$period} days"));
        $store_date_period = $alert_update_obj->save();
        Log::info('new date has been change ' . $store_date_period);
    }
}
