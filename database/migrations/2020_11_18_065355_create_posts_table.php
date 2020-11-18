<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('author')->comment('作者');
            $table->string('title')->default('')->comment('标题');
            $table->string('slug')->default('')->comment('slug');
            $table->string('summary')->default('')->comment('摘要');
            $table->string('content')->default('')->comment('MarkDown内容');
            $table->string('html_content')->default('')->comment('HTML内容');
            $table->string('seo_keyword')->default('')->comment('SEO关键词');
            $table->string('seo_description')->default('')->comment('SEO描述');
            $table->integer('category_id')->comment('类型');
            $table->tinyInteger('status')->comment('状态');
            $table->string('cover')->default('')->comment('封面');
            $table->tinyInteger('is_hot')->default('1')->comment('热门');
            $table->tinyInteger('is_recommend')->default('1')->comment('推荐');
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
        Schema::dropIfExists('posts');
    }
}
