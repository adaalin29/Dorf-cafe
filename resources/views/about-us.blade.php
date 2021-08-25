@extends('parts.template') @section('content')
<div class="banner-container">
    <div class="banner index-banner">
        <div class="img-banner">
            <div class="banner-image">
                <img class="full-width full-height image-object-fit"
                    src="{{ route('thumb', ['width:1920',json_decode($imageHeadline->images)[0]])}}">
                <div class="banner-overlay"></div>
            </div>
        </div>
    </div>
    <div class="banner-content">
            <div class="banner-container-inside mai-jos">
            <div class="banner-title-mare-de-tot">{!!$aboutHeadline->content!!}</div>
            <div class="banner-text mobile-hidden">{!!$aboutSubtitle->content!!}</div>
            </div>
        </div>
</div>
        
<div class="container">
    <div class="mission-container">
        <div class="mission-element">
            <div data-aos="fade-right" class="mission-pictures">
                <div class="mission-picture"><img class="full-width full-height image-object-fit"
                        src="{{ route('thumb', ['width:1000',json_decode($missionImage1->images)[0]])}}"></div>
            </div>
        </div>


        <div class="mission-element">
            <div class="mission-element-text-container">
                <div class="about-title-container">
                    <div class="about-title-linie"></div>
                    <div class="about-title">{!!$missionTitle->content!!}</div>
                </div>
                <div class="about-text">{!!$missionText->content!!}</div>
            </div>
        </div>
    </div>

    <div class="mission-container column-container">
        <div class="mission-element">
            <div class="mission-element-text-container">
                <div class="about-title-container">
                    <div class="about-title-linie"></div>
                    <div class="about-title titlu-special">{!!$storyTitle->content!!}</div>
                </div>
                <div class="about-text">{!!$StoryContent->content!!}</div>
            </div>
        </div>
        <div data-aos="fade-left" class="mission-element">
            <img class="full-width full-height image-object-fit"
                src="{{ route('thumb', ['width:800',json_decode($StoryImage->images)[0]])}}">
        </div>
    </div>

    <div class="exceptional-menu">
        <div class="menu-title-container">
            <div class="exceptional-linie"></div>
            <div class="exceptional-menu-title about-find-us">{!!$FindUsTitle->content!!}</div>
            <div class="exceptional-linie"></div>
        </div>
        <div class="exceptional-menu-text">{!!$FindUsSubtitle->content!!}</div>
        <div class="contact-container">
            <div class="exceptional-contact-text">{{ __('site.phone') }}: {{setting('site.phone-number')}}</div>
            <div class="exceptional-contact-text">{!! __('site.weekdays') !!}</div>
            <div class="exceptional-contact-text">{!! __('site.weekends') !!}</div>
        </div>
    </div>

    <div class="map-container">
        <div id="map-canvas" onclick="mapsSelector()" style="height:450px"></div>
    </div>
</div>
@endsection
@push('scripts')
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCmM1P-D5Zka0kPEbZSrsR90gpBlDxgm18"></script>
<script>
    AOS.init();
    function initialize() {

        // 				var geocoder;

        //         var address = "{{setting('site.adresa')}}";

        // # Get marker data

        var defaultMarkerLat = "{{setting('site.latitude')}}";

        var defaultMarkerLng = "{{setting('site.longitude')}}";

        var markerImg = '../images/marker.png';

        var markerTitle = "{{setting('site.title')}}";



        // # Show map

        var myLatlng = new google.maps.LatLng(defaultMarkerLat, defaultMarkerLng);

        var mapOptions = {

            zoom: 17,

            center: myLatlng,

            scrollwheel: false,

            mapTypeId: google.maps.MapTypeId.ROADMAP,

            disableDefaultUI: true

        }

        var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

        // # Show marker

        var marker = new google.maps.Marker({



            position: myLatlng,

            map: map,

            // 					icon:{markerImg} ,
            icon: {
                url: "images/marker.png",
                scaledSize: new google.maps.Size(64, 64)
            },

            title: markerTitle
        });

    }

    google.maps.event.addDomListener(window, 'load', initialize);


    function mapsSelector() {
        if /* if we're on iOS, open in Apple Maps */ ((navigator.platform.indexOf("iPhone") != -1) ||
            (navigator.platform.indexOf("iPad") != -1) ||
            (navigator.platform.indexOf("iPod") != -1))
            window.open(
                "http://maps.apple.com/?ll={{setting('site.latitude')}},{{setting('site.longitude')}}"
            );
        //      window.open("https://maps.google.com/maps?daddr={{setting('contact.contact-latitudine')}},{{setting('contact.contact-longitudine')}}&amp;ll=");
        else /* else use Google */
            window.open(
                "https://maps.google.com/maps?daddr={{setting('site.latitude')}},{{setting('site.longitude')}}&amp;ll="
            );
    }
</script>
@endpush