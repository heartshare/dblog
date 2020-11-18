<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pages', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('author')->comment('作者');
            $table->string('title')->default('')->comment('标题');
            $table->string('slug')->default('')->comment('slug');
            $table->string('summary')->default('')->comment('摘要');
            $table->string('content')->default('')->comment('MarkDown内容');
            $table->string('html_content')->default('')->comment('HTML内容');
            $table->string('seo_keyword')->default('')->comment('SEO关键词');
            $table->string('seo_description')->default('')->comment('SEO描述');
            $table->tinyInteger('status')->comment('状态');
            $table->integer('deleted_at')->default('0')->comment('删除时间');
            $table->integer('published_at')->default('0')->comment('发布时间');
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
        Schema::dropIfExists('pages');
    }
}
