<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Friend;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class FriendController extends AdminController
{
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Friend(), function (Grid $grid) {
            $grid->column('id')->sortable();
            $grid->column('type');
            $grid->column('link_name');
            $grid->column('link_url');
            $grid->column('link_logo');
            $grid->column('link_description');
            $grid->column('is_show');
            $grid->column('created_at');
            $grid->column('updated_at')->sortable();
        
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
        return Show::make($id, new Friend(), function (Show $show) {
            $show->field('id');
            $show->field('type');
            $show->field('link_name');
            $show->field('link_url');
            $show->field('link_logo');
            $show->field('link_description');
            $show->field('is_show');
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
        return Form::make(new Friend(), function (Form $form) {
            $form->display('id');
            $form->text('type');
            $form->text('link_name');
            $form->text('link_url');
            $form->text('link_logo');
            $form->text('link_description');
            $form->text('is_show');
        
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
