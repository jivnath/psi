<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DropMasterCompanyColumn extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('companies', function (Blueprint $table) {
            $table->dropColumn('master_company');
            $table->dropColumn('status');
            $table->integer('master_id')->unsigned()->after('name');
            $table->string('section1')->nullable()->after('master_id');
            $table->string('section2')->nullable()->after('section1');
            $table->string('address')->nullable()->after('section2');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('companies', function (Blueprint $table) {
            $table->string('master_company');
            $table->string('status');
            $table->dropColumn('section1');
            $table->dropColumn('section2');
            $table->dropColumn('address');
            $table->dropColumn('master_id');
        });
    }
}
