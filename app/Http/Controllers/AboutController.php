<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Statice;
use App\AboutBanner;

class AboutController extends Controller
{
    public function index()
    {

      $aboutBanner = AboutBanner::get();
      // Administrative Text
      $missionImage1 = Statice::where("key","about-mission-image")->first();
      $missionTitle = Statice::where("key","mission-title")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $missionText = Statice::where("key","mission-text")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $storyTitle = Statice::where("key","story-title")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $StoryContent = Statice::where("key","story-content")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $StoryImage = Statice::where("key","story-image")->first();
      $FindUsTitle = Statice::where("key","find-us-title")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $FindUsSubtitle = Statice::where("key","find-us-subtitle")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $imageHeadline = Statice::where("key","about-us-banner")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      // dd($imageHeadline);
      $aboutHeadline = Statice::where("key","about-us-title-big")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $aboutSubtitle = Statice::where("key","about-us-subtitle")->withTranslations()->first()->translate(\App::getLocale(), 'de');

      return view('about-us',[
        'missionImage1' =>$missionImage1,
        'missionTitle' =>$missionTitle,
        'missionText' =>$missionText,
        'storyTitle' =>$storyTitle,
        'StoryContent' =>$StoryContent,
        'StoryImage' =>$StoryImage,
        'FindUsTitle' =>$FindUsTitle,
        'FindUsSubtitle' =>$FindUsSubtitle,
        'aboutBanner' =>$aboutBanner,
        'imageHeadline' =>$imageHeadline,
        'aboutHeadline' =>$aboutHeadline,
        'aboutSubtitle' =>$aboutSubtitle,
      ]);
    }
}
