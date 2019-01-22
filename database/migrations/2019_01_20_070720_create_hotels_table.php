<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHotelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hotels', function (Blueprint $table) {
            $table->increments('id');
            $table->date('update_date')->nullable();
            $table->string('registration_officer')->nullable();
            $table->string('duplicate_name_and_employee_number')->nullable();
            $table->string('for_work')->nullable();
            $table->date('hire_date')->nullable();
            $table->date('retirement_date')->nullable();
            $table->string('operational_status')->nullable();
            $table->string('contract_collection')->nullable();
            $table->string('residence_card_expiration')->nullable();
            $table->string('employee_number');
            $table->string('country_of_citizenship')->nullable();
            $table->string('record_in_kanji')->nullable();
            $table->string('name');
            $table->date('birthday')->nullable();
            $table->string('gender')->nullable();
            $table->string('phone_number')->nullable();
            $table->string('viber_install')->nullable();
            $table->string('email')->nullable();
            $table->string('student')->nullable();
            $table->string('work_location')->nullable();
            $table->string('postal_code')->nullable();
            $table->string('address')->nullable();
            $table->string('residence_card_duplication')->nullable();
            $table->date('residence_card_expiration_date')->nullable();
            $table->string('business_content')->nullable();
            $table->string('dispatch_destination')->nullable();
            $table->string('name_of_facility')->nullable();
            $table->string('personal_payment_hourly_wage')->nullable();
            $table->string('path')->nullable();
            $table->string('one_way_rate')->nullable();
            $table->string('residence_card_number')->nullable();
            $table->string('financial_institution')->nullable();
            $table->string('branch_name')->nullable();
            $table->string('account_number')->nullable();
            $table->string('account_holder')->nullable();
            $table->string('hourly_wage')->nullable();
            $table->string('after_renewal_hourly_wage')->nullable();
            $table->string('work_update_date')->nullable();
            $table->string('pass_price')->nullable();
            $table->string('hourly_employee')->nullable();
            $table->string('residence_status')->nullable();
            $table->string('dependent_exemption')->nullable();
            $table->string('memo')->nullable();
            $table->string('phonetic')->nullable();
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
        Schema::dropIfExists('hotels');
    }
}
