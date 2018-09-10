<?php
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateViberMessageDetail extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('psi_viber_message_details', function (Blueprint $table) {
            $table->increments('id');
            $table->string('setype');
            $table->string('related_to');
            $table->text('messages');
            $table->string('message_state')->comment('send,draft');
            $table->string('sender_id');
            $table->string('operator');
            $table->json('response');
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
        Schema::dropIfExists('psi_viber_message_details');
    }
}
