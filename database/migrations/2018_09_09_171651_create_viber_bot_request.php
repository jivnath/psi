<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateViberBotRequest extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('psi_vbier_bot', function (Blueprint $table) {
            $table->increments('id');
            $table->string('sender_id');
            $table->string('psis_no');
            $table->string('sender_name');
            $table->text('display_picutre');
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
        Schema::dropIfExists('psi_vbier_bot');
    }
}
