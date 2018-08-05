<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeeAvailabilitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employee_availabilities', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('psi_number')->unsigned();
            $table->integer('sun')->unsigned();
            $table->integer('mon')->unsigned();
            $table->integer('tues')->unsigned();
            $table->integer('wednes')->unsigned();
            $table->integer('thurs')->unsigned();
            $table->integer('fri')->unsigned();
            $table->integer('satur')->unsigned();
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
        Schema::dropIfExists('employee_availabilities');
    }
}
