<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RenameColumnsOfAvailabilityTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('employee_availabilities', function (Blueprint $table) {
            $table->renameColumn('tues', 'tue');
            $table->renameColumn('wednes', 'wed');
            $table->renameColumn('thurs', 'thu');
            $table->renameColumn('satur', 'sat');
        });
        //
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('employee_availabilities', function (Blueprint $table) {
            $table->renameColumn('tue', 'tues');
            $table->renameColumn('wed', 'wednes');
            $table->renameColumn('thu', 'thurs');
            $table->renameColumn('sat', 'satur');
        });
        //
    }
}
