<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePsiAlertSettings extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('psi_alert_settings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('schedule_title');
            $table->string('interval_value')->comment('10,21,XXX');
            $table->string('interval_types')->comment('year,month,day,second');
            $table->string('interval_endpoint')
                ->default('no')
                ->comment('count to be halt');
            $table->string('medium')->comment('viber/sms/email');
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
        Schema::dropIfExists('psi_alert_settings');
    }
}
