<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Statice;
use App\Category;
use App\Photo;

class GalleryController extends Controller
{
    public function index()
    {

        $categorii =Category::withTranslations()->select('id','name')->get();
        $categorii = $categorii->translate(\App::getLocale(), 'en');
        $gallery = Photo::get();
        // dd(count($gallery));
      foreach($gallery as &$gal){
        $gal->image = json_decode($gal->image, true);
      }
      return view('gallery',[
        'categorii' =>$categorii,
        'gallery' =>$gallery,

      ]);
    }
}
