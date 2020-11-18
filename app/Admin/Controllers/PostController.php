<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Post;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class PostController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Post(), function (Grid $grid) {
            $grid->column('id')->sortable();
            $grid->column('author');
            $grid->column('title');
            $grid->column('slug');
            $grid->column('summary');
            $grid->column('content');
            $grid->column('html_content');
            $grid->column('seo_keyword');
            $grid->column('seo_description');
            $grid->column('category_id');
            $grid->column('status');
            $grid->column('cover');
            $grid->column('is_hot');
            $grid->column('is_recommend');
            $grid->column('deleted_at');
            $grid->column('published_at');
            $grid->column('created_at');
            $grid->column('updated_at');

            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');

            });
        });
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        return Show::make($id, new Post(), function (Show $show) {
            $show->field('id');
            $show->field('author');
            $show->field('title');
            $show->field('slug');
            $show->field('summary');
            $show->field('content');
            $show->field('html_content');
            $show->field('seo_keyword');
            $show->field('seo_description');
            $show->field('category_id');
            $show->field('status');
            $show->field('cover');
            $show->field('is_hot');
            $show->field('is_recommend');
            $show->field('deleted_at');
            $show->field('published_at');
            $show->field('created_at');
            $show->field('updated_at');
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new Post(), function (Form $form) {
            $form->display('id');
            $form->text('author');
            $form->text('title');
            $form->text('slug');
            $form->text('summary');
            $form->text('content');
            $form->text('html_content');
            $form->text('seo_keyword');
            $form->text('seo_description');
            $form->text('category_id');
            $form->text('status');
            $form->text('cover');
            $form->text('is_hot');
            $form->text('is_recommend');
            $form->text('deleted_at');
            $form->text('published_at');
            $form->text('created_at');
            $form->text('updated_at');
        });
    }
}
