<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Picture;
use App\Statice;
use App\MenuCategory;

class MenuController extends Controller
{
    public function index()
    {
      $menuSubtitle = Statice::where("key","menu-subtitle")->first();

      $menuPhotos = Picture::get();
      $menuItem = MenuCategory::withTranslations()->get();
      $menuItem = $menuItem->translate(\App::getLocale(), 'en');
      return view('menu',[
        'menuPhotos'=>$menuPhotos,
        'menuSubtitle'=>$menuSubtitle,
        'menuItem'=>$menuItem,
      ]);
    }
}
