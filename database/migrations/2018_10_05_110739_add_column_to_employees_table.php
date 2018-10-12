<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnToEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('employees', function (Blueprint $table) {
            $table->string('account');
            $table->string('input');
            $table->string('operating_status');
            $table->string('office');
            $table->string('old_double_registration');
            $table->string('lane_employee_no');
            $table->string('phonetic');
            $table->boolean('viber_install');
            $table->string('email');
            $table->string('school_information');
            $table->string('place');
            $table->string('financial_institution');
            $table->string('branch_name');
            $table->string('account_number');
            $table->string('account_holder');
            $table->string('expiration_date');
            $table->string('account_registration');
          
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('employees', function (Blueprint $table) {
            //
        });
    }
}
