<?php

namespace App\Admin\Repositories;

use App\Models\Friend as Model;
use Dcat\Admin\Repositories\EloquentRepository;

class Friend extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = Model::class;
}
