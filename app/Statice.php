<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Statice extends Model
{
    use Translatable;
    protected $table = 'statice';
    protected $translatable = ['name', 'content'];
}
