<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('nickname');
            $table->string('password_hash');
            $table->string('salt',6);
            $table->tinyInteger('sex');
            $table->text('description');
            $table->tinyInteger('status');
            $table->string('wechat');
            $table->string('github');
            $table->string('qq');
            $table->string('mobile',32);
            $table->string('address');
            $table->string('company');
            $table->integer('birthday');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('nickname');
            $table->dropColumn('password_hash');
            $table->dropColumn('salt');
            $table->dropColumn('sex');
            $table->dropColumn('description');
            $table->dropColumn('status');
            $table->dropColumn('wechat');
            $table->dropColumn('github');
            $table->dropColumn('qq');
            $table->dropColumn('mobile');
            $table->dropColumn('address');
            $table->dropColumn('company');
            $table->dropColumn('birthday');
        });
    }
}
