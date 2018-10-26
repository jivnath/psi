<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePsiInboxTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('psi_inbox', function (Blueprint $table) {
            $table->increments('id');
            $table->string('message_type');
            $table->string('request_message');
            $table->integer('roleid')->unsigned();
            $table->integer('employeeid')->unsigned();
            $table->dateTime('message_date');
            $table->string('response_message')->nullable();
            $table->integer('response_by_userid')->unsigned()->nullable();
            $table->dateTime('response_date')->nullable();
            $table->string('file_upload_path');
            $table->boolean('status');
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
        Schema::dropIfExists('psi_inbox');
    }
}
