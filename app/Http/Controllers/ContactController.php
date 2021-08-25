<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Mail\SendMessage;
use App\Mail\SendReservation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Statice;
use Validator;

class ContactController extends Controller
{
    public function index()
    {
      $contactTitle = Statice::where("key","contact-title")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      $contactSubtitle = Statice::where("key","contact-subtitle")->withTranslations()->first()->translate(\App::getLocale(), 'de');
      return view('contact',[
        'contactTitle'=>$contactTitle,
        'contactSubtitle'=>$contactSubtitle,
      ]);
    }

    public function send_message(Request $request){
      $contact_email = setting('site.contact-mail');

      $form_data = $request->only(['name', 'message','termeni']);
      $validationRules = [
          'name'    => ['required','min:3'],
          'message'   => ['required','min:10'],           
          'termeni'   => ['required'],
        
      ];
      $validator = Validator::make($form_data, $validationRules);
      if ($validator->fails())
          return ['success' => false, 'error' => $validator->errors()->all()];  
      else{
          // $date_de_salvat = MessageContact::create($request->all()); 
          Mail::to(strip_tags($contact_email))->send(new SendMessage($request->all()));

          return ['success' => true,'successMessage'=>  __('site.message')];
      }      
  }
    public function send_reservation(Request $request){
      $contact_email = setting('site.contact-mail');

      $form_data = $request->only(['name', 'phone','email','date','hour','nr']);
      $validationRules = [
          'name'    => ['required','min:3'],
          'phone'   => ['required','min:10'],           
          'email'   => ['required','min:1'],           
          'date'   => ['required','min:3'],           
          'hour'   => ['required','min:2'],           
          'nr'   => ['required','min:1'],           
        
      ];
      $validator = Validator::make($form_data, $validationRules);
      if ($validator->fails())
          return ['success' => false, 'error' => $validator->errors()->all()];  
      else{
          // $date_de_salvat = MessageContact::create($request->all()); 
          Mail::to(strip_tags($contact_email))->send(new SendReservation($request->all()));

          return ['success' => true,'successMessage'=> __('site.reservation')];
      }      
  }
}
