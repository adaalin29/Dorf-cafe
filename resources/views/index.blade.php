@extends('parts.template') @section('content')
<div class="banner-container">
    <div class="banner index-banner">
        <div class="swiper-container" style="height:100%;">
            <div class="swiper-wrapper">
                @foreach($bannerImages as $banner)
                <div class="swiper-slide">
                    <div class="img-banner">
                        <div class="banner-image">
                            <img class="full-width full-height image-object-fit"
                                src="{{ route('thumb', ['width:1920',($banner->image)]) }}">
                            <div class="banner-overlay"></div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>
            <div class="banner-content">
                <div class="banner-container-inside">
                    <div data-aos="fade-right" class="banner-logo">
                        <a style="display:block;" href="/">
                            <img class="header-logo-mobile index-header-logo index-logo-rezolutie"
                                src="images/dorflogo.png">
                        </a>
                    </div>
                    <div data-aos="fade-left" class="banner-text mobile-hidden">{!!$indexTitle->content!!}</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="about-us">
        <div data-aos="fade-right" class="about-text-element">
            <div class="about-title-container">
                <div class="about-title-linie"></div>
                <div class="about-title">{!!$aboutUsTitle->content!!}</div>
            </div>
            <div class="about-text">{!!$aboutUsContent->content!!}</div>
            <a style="text-decoration: none;" href="/about-us">
                <div class="find-button">
                    <div class="find-button-text">{{ __('site.find-more') }}</div>
                </div>
            </a>
        </div>
        <div data-aos="fade-left" class="about-picture-element">
            <img class="full-width" src="{{ route('thumb', ['width:800',json_decode($aboutUsImage->images)[0]])}}">
        </div>
    </div>
    <div class="menu-container overflow-class">
        <div class="menu-element menu-element-picture-mobile animation-picture" data-aos="fade-right">
            <img class="full-width full-height image-object-fit"
                src="{{ route('thumb', ['width:800',json_decode($menuPicture->images)[0]])}}">
        </div>
        <div class="menu-element menu-padding" data-aos="fade-left">
            <div class="menu-title">{!!$menuTitle1->content!!}</div>
            <div class="menu-text">{!!$menuText1->content!!}</div>
            <div class="menu-title">{!!$menuTitle2->content!!}</div>
            <div class="menu-text">{!!$menuText2->content!!}</div>
            <div class="menu-title">{!!$menuTitle3->content!!}</div>
            <div class="menu-text">{!!$menuText3->content!!}</div>
        </div>
    </div>

    <div class="exceptional-menu">
        <div class="menu-title-container">
            <div class="exceptional-linie"></div>
            <div class="exceptional-menu-title">{!!$exceptionalMenuTitle->content!!}</div>
            <div class="exceptional-linie"></div>
        </div>
        <div class="exceptional-menu-text">{!!$exceptionalMenuText->content!!}</div>
        <div class="exceptional-button">
            <a style="text-decoration: none;" href="/menu">
                <div class="find-button">
                    <div class="find-button-text exceptional-find-button-text">{{ __('site.see-menu') }}</div>
                </div>
            </a>
        </div>
    </div>

    <div class="swiper-showcase">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                @foreach($showcaseImages as $showcase)
                <div class="swiper-slide"><img class="full-width image-object-fit showcase-height"
                        src="{{ route('thumb', ['width:1200',($showcase->image)]) }}"></div>
                @endforeach

            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>
        </div>
    </div>

    <div class="exceptional-menu">
        <div class="menu-title-container">
            <div class="exceptional-linie"></div>
            <div class="exceptional-menu-title">{!!$indexGalleryTitle->content!!}</div>
            <div class="exceptional-linie"></div>
        </div>
    </div>

    <div class="gallery-container">
        <div class="gallery-item">
            <a class="fancybox-width" data-fancybox="gallery"
                href="{{ route('thumb', ['width:1920',json_decode($galleryPicture1->images)[0]])}}">
                <img class="full-width"
                    src="{{ route('thumb', ['width:1920',json_decode($galleryPicture1->images)[0]])}}">
            </a>
        </div>
        <div class="gallery-item">
            <a class="fancybox-width" data-fancybox="gallery"
                href="{{ route('thumb', ['width:1920',json_decode($galleryPicture2->images)[0]])}}">
                <img class="full-width"
                    src="{{ route('thumb', ['width:1920',json_decode($galleryPicture2->images)[0]])}}">
            </a>
        </div>
        <div class="gallery-item">
            <a class="fancybox-width" data-fancybox="gallery"
                href="{{ route('thumb', ['width:1920',json_decode($galleryPicture3->images)[0]])}}">
                <img class="full-width"
                    src="{{ route('thumb', ['width:1920',json_decode($galleryPicture3->images)[0]])}}">
            </a>
        </div>
        <div class="gallery-item">
            <a class="fancybox-width" data-fancybox="gallery"
                href="{{ route('thumb', ['width:1920',json_decode($galleryPicture4->images)[0]])}}">
                <img class="full-width"
                    src="{{ route('thumb', ['width:1920',json_decode($galleryPicture4->images)[0]])}}">
            </a>
        </div>
    </div>
</div>
@endsection
@push('scripts')
<script>
    $(document).ready(function () {
        var scrollPos = 0;
        var scrollOverflow = 0;
    if(screen.width>=1025){
        window.addEventListener('scroll', function (e) {
            if ((document.body.getBoundingClientRect()).top > scrollPos) {
                scrollOverflow += 20;
            } else {
                scrollOverflow -= 20;
            }
            $('.about-text-element').css('transform', 'translate(0,' + scrollOverflow + 'px)');
            scrollPos = (document.body.getBoundingClientRect()).top;
        });
    }
    });

    AOS.init();
</script>
@endpush