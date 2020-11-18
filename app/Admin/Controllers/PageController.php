<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Page;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class PageController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Page(), function (Grid $grid) {
            $grid->column('id')->sortable();
            $grid->column('author');
            $grid->column('content');
            $grid->column('html_content');
            $grid->column('published_at');
            $grid->column('seo_description');
            $grid->column('seo_keyword');
            $grid->column('slug');
            $grid->column('status');
            $grid->column('summary');
            $grid->column('title');
        
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
        return Show::make($id, new Page(), function (Show $show) {
            $show->field('id');
            $show->field('author');
            $show->field('content');
            $show->field('html_content');
            $show->field('published_at');
            $show->field('seo_description');
            $show->field('seo_keyword');
            $show->field('slug');
            $show->field('status');
            $show->field('summary');
            $show->field('title');
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new Page(), function (Form $form) {
            $form->display('id');
            $form->text('author');
            $form->text('content');
            $form->text('html_content');
            $form->text('published_at');
            $form->text('seo_description');
            $form->text('seo_keyword');
            $form->text('slug');
            $form->text('status');
            $form->text('summary');
            $form->text('title');
        });
    }
}
