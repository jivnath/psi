<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DropColumnTimestampsFromUsertypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('usertypes', function (Blueprint $table) {
            $table->dropColumn(['created_at', 'updated_at']);
            //
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('usertypes', function (Blueprint $table) {
            $table->timestamps();
            //
        });
    }
}
