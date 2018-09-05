<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSelfSheetCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('psi_self_sheet_comments', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('self_id');
            $table->text('comments');
            $table->string('msg_status');
            $table->string('msg_medium');
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
        Schema::dropIfExists('psi_self_sheet_comments');
    }
}
