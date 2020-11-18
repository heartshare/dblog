<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFriendsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('friends', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('type');
            $table->string('link_name')->default('');
            $table->string('link_url')->default('');
            $table->string('link_logo')->default('');
            $table->string('link_description')->default('');
            $table->tinyInteger('is_show');
            $table->integer('created_at')->default('0')->comment('创建时间');
            $table->integer('updated_at')->default('0')->comment('更新时间');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('friends');
    }
}
