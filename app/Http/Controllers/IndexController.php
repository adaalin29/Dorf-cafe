<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Banner;
use App\Statice;
use App\Showcase;

class IndexController extends Controller
{
    public function index()
    {
      // Administrative Text
      $exceptionalMenuTitle = Statice::where("key","exceptional-menu-title")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $exceptionalMenuText = Statice::where("key","exceptional-menu-text")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $aboutUsImage = Statice::where("key","about-us-image")->first();
      $menuPicture = Statice::where("key","index-menu-picture")->first();
      $aboutUsTitle = Statice::where("key","about-us-title")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      // dd($aboutUsTitle);

      
      $aboutUsContent = Statice::where("key","about-us-content")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $menuTitle1 = Statice::where("key","menu-title1")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $menuTitle2 = Statice::where("key","menu-title2")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $menuTitle3 = Statice::where("key","menu-title3")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $menuText1 = Statice::where("key","menu-text1")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $menuText2 = Statice::where("key","menu-text2")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $menuText3 = Statice::where("key","menu-text3")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $galleryPicture1 = Statice::where("key","gallery-picture1")->first();
      $galleryPicture2 = Statice::where("key","gallery-picture2")->first();
      $galleryPicture3 = Statice::where("key","gallery-picture3")->first();
      $galleryPicture4 = Statice::where("key","gallery-picture4")->first();
      $indexGalleryTitle = Statice::where("key","index-gallery-title")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $indexTitle = Statice::where("key","index-header-title")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      
      // $aboutUsImage = $aboutUsImage->images[2];
      // dd($aboutUsImage);

      // *******************
      $bannerImages = Banner::get();
      $showcaseImages = Showcase::get();
      // dd($bannerImages);
      return view('index',[
        'bannerImages' =>$bannerImages,
        'showcaseImages' =>$showcaseImages,


        'aboutUsImage' =>$aboutUsImage,
        'aboutUsTitle' =>$aboutUsTitle,
        'aboutUsContent' =>$aboutUsContent,
        'menuPicture' =>$menuPicture,
        'menuTitle1' =>$menuTitle1,
        'menuTitle2' =>$menuTitle2,
        'menuTitle3' =>$menuTitle3,
        'menuText1' =>$menuText1,
        'menuText2' =>$menuText2,
        'menuText3' =>$menuText3,
        'exceptionalMenuTitle' =>$exceptionalMenuTitle,
        'exceptionalMenuText' =>$exceptionalMenuText,
        'galleryPicture1' =>$galleryPicture1,
        'galleryPicture2' =>$galleryPicture2,
        'galleryPicture3' =>$galleryPicture3,
        'galleryPicture4' =>$galleryPicture4,
        'indexGalleryTitle' =>$indexGalleryTitle,
        'indexTitle' =>$indexTitle,
      ]);
    }
    
    
}
