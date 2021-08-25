<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Statice;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $language = \App::getLocale();
        $phone = Statice::where("key","phone")->withTranslations()->first()->translate($language, 'de');
        $copy = Statice::where("key","copy")->withTranslations()->first()->translate($language, 'de');
        // dd($weekdays = Statice::where("key","weekdays")->withTranslations()->first()->translate('de', 'de'));

        \View::share('phone', $phone);
        \View::share('copy', $copy);

    }
}
