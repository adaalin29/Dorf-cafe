@extends('parts.template') @section('content')
<div class="banner-custom"></div>
<div class="container">
    <div class="events-container">
        @foreach($news as $item)
        <div class="event-item overflow-class" onclick='change()'>
            <div class="event-picture animation-picture">
                <img class="full-width full-height image-object-fit"
                    src="{{ route('thumb', ['width:1920',($item->image)]) }}">
            </div>
            <div class="news-text">
                <div class="news-title">{{$item->title}}</div>
                <div class="news-content">{!!$item->description!!}</div>
            </div>
        </div>
        @endforeach
    </div>

    <div class="event-element">
        <div class="event-text-container">
            <div class="event-title-container">
                <div class="event-linie mobile-hidden"></div>
                <div class="event-title event-title-modificat">{!!$cateringTitle->content!!}</div>
            </div>
            <img class="desktop-hidden full-width image-object-fit full-height"
            src="{{ route('thumb', ['width:800',json_decode($cateringImage->images)[0]])}}">
            <div class="event-text">{!!$cateringDescription->content!!}</div>
            <a style="text-decoration: none;" href="/contact">
                <div class="find-button" style="background-color:#001631">
                    <div class="find-button-text exceptional-find-button-text">{{ __('site.contact-us') }}</div>
                </div>
            </a>
        </div>
        <div data-aos="fade-left" class="main-event-picture mobile-hidden">
            <img class=" full-width image-object-fit full-height"
                src="{{ route('thumb', ['width:800',json_decode($cateringImage->images)[0]])}}">
        </div>
    </div>
    @endsection

    @push('scripts')
    <script>
            AOS.init();
          </script>
    @endpush