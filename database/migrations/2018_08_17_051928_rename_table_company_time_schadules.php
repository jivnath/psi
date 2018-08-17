<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RenameTableCompanyTimeSchadules extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('company_time_schadules', function (Blueprint $table) {
            Schema::rename('company_time_schadules', 'company_time_schedules');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('company_time_schadules', function (Blueprint $table) {
            //
        });
    }
}
