<?php

namespace App\Models;

use Dcat\Admin\Traits\HasDateTimeFormatter;

use Illuminate\Database\Eloquent\Model;

class PostTag extends Model
{
	use HasDateTimeFormatter;
    protected $table = 'post_tags';
    public $timestamps = false;

}
