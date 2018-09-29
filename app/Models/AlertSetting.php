<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AlertSetting extends Model
{
    protected $table = 'psi_alert_settings';

    protected $fillable = ['schedule_title'];
}
