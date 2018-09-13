<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;


class DessertSheet extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;


    protected $table = 'psi_dessert_entry';

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
    public function cts()
    {
        $this->belongsTo('App\Models\CompanyTimeSchedule', 'cts_id');
    }

    public function employee()
    {
        $this->belongsTo('App\Models\Employee', psi_num);
    }

    /**
     * Get the comments for the self sheet.
     */
    public function comments()
    {
        return $this->hasMany('App\Models\PsiSelfSheetComments', 'self_id');
    }
}
