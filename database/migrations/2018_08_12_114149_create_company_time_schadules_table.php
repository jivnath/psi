<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCompanyTimeSchadulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('company_time_schadules', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('companyTT_id')->unsigned();
            $table->date('ate');
            $table->time('start_time');
            $table->time('end_time');
            $table->integer('normal');
            $table->integer('help');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('company_time_schadules');
    }
}
