<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->default('')->comment('名称');
            $table->integer('pid')->comment('父级');
            $table->string('url')->default('')->comment('链接');
            $table->integer('sort_by')->comment('排序');
            $table->tinyInteger('is_show')->comment('显示');
            $table->integer('depth')->comment('深度');
            $table->tinyInteger('status')->comment('状态');
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
        Schema::dropIfExists('categories');
    }
}
