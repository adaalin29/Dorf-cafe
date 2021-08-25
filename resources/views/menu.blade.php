@extends('parts.template') @section('content')
<div class="banner-custom"></div>
<div class="container">
        <div class="menu-title-container events-hidden-title-container desktop-hidden-flex">
                <div class="exceptional-linie"></div>
                <div class="exceptional-menu-title events-hidden-title">{{ __('site.events-title') }}</div>
                <div class="exceptional-linie"></div>
            </div>
    <div class="events-container">
        @foreach($menuItem as $item)
        <div class="event-item menu-item overflow-class" onclick='change()'>
            <div class="event-picture animation-picture">
                <img class="full-width full-height image-object-fit"
                    src="{{ route('thumb', ['width:1920',($item->Image)]) }}">
            </div>
            <div class="news-text">
                <div class="news-title catering-title">{{$item->Title}}</div>
                <div class="news-content menu-content">{!!$item->Content!!}</div>
            </div>
        <a target="_blank"  style="text-decoration: none;" href="{{$item->pdf}}">
                <div class="find-button" style="background-color:#001631">
                    <div class="find-button-text exceptional-find-button-text">{{ __('site.menu') }}</div>
                </div>
            </a>
        </div>
        @endforeach
    </div>
    @endsection

    @push('scripts')
    @endpush