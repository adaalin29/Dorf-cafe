@extends('parts.template') @section('content')
<div class="banner-custom"></div>

<div class = "top-container">

</div>
<div class="contact-map-container">
  <div id="map-canvas" style="height:100%"></div>
  <div class="pop-up-contact-container">
    <div class="container-title-container">
      <div class="contact-linie"></div>
      <div class="contact-title">{{ __('site.contact') }}</div>
    </div>
      <div class = "contact-textinfo">{{ __('site.contact-text') }}</div>
    <form class="formular-contact">
      <input type="text" id="fname" name="name" placeholder="NAME" class="contact-input">
      <input type="number" id="number" name="phone" placeholder="{{ __('site.phone') }}" class="contact-input">
      <div class="form-text form-text-modified">{{ __('site.contact-message') }}</div>
      <textarea name="message"></textarea>
      <div class="checkbox-container">
        <div class="round">
          <input type="checkbox" id="checkbox" name='termeni' />
          <label for="checkbox"></label>
        </div>
        <div class="form-text checkbox-modified">{{ __('site.form') }}</div>
      </div>
      <button type="button" class="buton-submit buton-mai-lung" id = "contact-button">
        <div class="find-button center-button buton-jmecher" style="border: 2px solid #BD8880;">
          <div class="find-button-text exceptional-find-button-text contact-button-text"
            style="color:BD8880;text-transform:uppercase;">{{ __('site.send') }}</div>
        </div>
      </button>
    </form>
  </div>
</div>
@endsection
@push('scripts')
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCmM1P-D5Zka0kPEbZSrsR90gpBlDxgm18"></script>
<script>
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

@push("scripts")
<script>
  document.addEventListener("DOMContentLoaded", function () {
    $.ajaxSetup({

      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
      }
    });
    var $formContact = $('.formular-contact');
    $('#contact-button').on('click', function (event) {
      event.preventDefault();
      $.ajax({
        method: 'POST',
        url: '{{ action("ContactController@send_message") }}',
        data: $formContact.serializeArray(),
        context: this,
        async: true,
        cache: false,
        dataType: 'json'
      }).done(function (res) {
        console.log(res);
        if (res.success == true) {
          $.notify(res.successMessage, "success");
          setTimeout(function () {
            window.location.reload();
          
          }, 4000);
        } else {
          var eroare = res.error;
        for (var i = 0; i < eroare.length; i++) {
          eroare[i] = eroare[i] + "\n";
        }
          $.notify(res.error, {
            type: "error",
            breakNewLines: true,
            gap:2
          });
        }
      });
      return;
    });

  });
</script>
<script>
  $( document ).ready(function() {
    if(screen.width<=1024)
    $(".pop-up-contact-container").appendTo(".top-container");
});
</script>
@endpush