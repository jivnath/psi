<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class ShiftMasterData extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $table = "shift_master_datas";

    // public $fillable = ['shift'];
    public function company()
    {
        $this->belongsTo('App\Models\Company', 'company_id');
    }
}
