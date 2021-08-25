<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class MenuCategory extends Model
{
    use Translatable;
    protected $table = 'menu_categories';
    protected $translatable = ['Title','Content'];
}
