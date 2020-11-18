<?php

use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;
use Dcat\Admin\Admin;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('post', 'PostController');
    $router->resource('page', 'PageController');
    $router->resource('setting', 'SettingController');
    $router->resource('category', 'CategoryController');
    $router->resource('tag', 'TagController');
    $router->resource('friend', 'FriendController');

});
