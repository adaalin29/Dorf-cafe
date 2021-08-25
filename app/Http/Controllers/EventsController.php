<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Event;
use App\Statice;

class EventsController extends Controller
{
    public function index()
    {
        $cateringTitle = Statice::where("key","catering-title")->withTranslations()->first()->translate(\App::getLocale(), 'de');
        $cateringDescription = Statice::where("key","catering-description")->withTranslations()->first()->translate(\App::getLocale(), 'de');
        $cateringImage = Statice::where("key","catering-image")->first();

        $news =Event::withTranslations()->get();
        $news = $news->translate(\App::getLocale(), 'en');
          // dd($news);
      return view('events',[

          'news' =>$news,
          'cateringTitle' =>$cateringTitle,
          'cateringDescription' =>$cateringDescription,
          'cateringImage' =>$cateringImage,

      ]);
    }
}
