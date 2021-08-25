<!DOCTYPE html>
<html>

<head>
  <base href="{{ URL::to('/') }}" />
  <title>DorfCafe</title>
  <meta charset="utf-8" />
  <meta name="description" content="@yield('description')" />
  <meta name="keywords" content="@yield('keywords')" />
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <link href="css/style.css" rel="stylesheet" type="text/css" />
  <link href="css/responsive.css" rel="stylesheet" type="text/css" />
  <link href="css/swiper.min.css" rel="stylesheet" type="text/css" />
  <link href="css/fancybox.min.css" rel="stylesheet" type="text/css" />
  <link href="css/aos.css" rel="stylesheet" type="text/css" />
  <link href="css/datepicker.min.css" rel="stylesheet" type="text/css" />
  @stack('styles')
</head>

<body>

  <div id="page">
    <div class="left-container">
      <div class="reservation-form">
          <div class="reservation-small toggle-off-canvas">
            <img class = "reservation-image desktop-hidden" src = "images/reservation.svg">
            <div class = "reservation-text mobile-hidden">{{ __('site.reservations') }}</div>
          </div>
        <div class = "close-reservation"><img class = "close-button-img" src = "/images/x.svg"></div>
        <div class="reservation-form-text">{!! __('site.reservation-text') !!}</div>
        <div class="reservation-form-container">
          <form class="reservations">
            <div class="container-element-line-formular">
              <div class="form-reservation-text">Name</div>
              <input type="text" id="fname" name="name" class="border-input">
            </div>
            <div class="container-element-line-formular">
              <div class="form-reservation-text">{{ __('site.phone') }}</div>
              <input type="number" id="fname" name="phone" class="border-input">
            </div>
            <div class="container-element-line-formular">
              <div class="form-reservation-text">Email</div>
              <input type="email" id="fname" name="email" class="border-input">
            </div>
             <div class="container-element-line-formular">
              <div class="form-reservation-text">{{ __('site.number-of') }}</div>
              <input type="number" id="fname" name="nr" class="border-input">
            </div>
            <div class="container-element-line-formular">
              <div class="form-reservation-text">{{ __('site.date') }}</div>
              <input id="date_element" class="border-input data-selectata" type='text' name = 'date' data-position="top left"
                data-language='de' onkeypress="return false;">
            </div>
            <div class="container-element-line-formular">
              <div class="form-reservation-text">{{ __('site.hour') }}</div>
              <input id="fname" class="border-input time-picker"  name = 'hour' type="text" data-precision="5">
            </div>
          </form>
        </div>
        <div class="reservation-button">
          <button type="button" class="buton-submit" id = "reservation-button">
            <div class="find-button center-button" style="background-color:#BD8880;border: 1px solid #BD8880;">
              <div class="find-button-text exceptional-find-button-text contact-button-text"
                style="color:white;text-transform:uppercase;">{{ __('site.send') }}</div>
            </div>
          </button>
        </div>
      </div>
    </div>
    @include('parts.header')
    <main id="content">
      @yield('content')
    </main>
    @include('parts.footer')
  </div>
  <button class="scroll-up"> <img src="images/arrow.png"> </button>

  <!--[if lt IE 9]> <script src="js/html5shiv.js"></script> <![endif]-->
  <script src="js/jquery.js" type="text/javascript"></script>
  <script src="js/datepicker.js" type="text/javascript"></script>
  <script src="js/datepicker.en.js" type="text/javascript"></script>
  <script src="js/datepicker.de.js" type="text/javascript"></script>
  <script src="js/jquery-clock-timepicker.js" type="text/javascript"></script>
  <script src="js/common.js" type="text/javascript"></script>
  <script src="js/swiper.min.js" type="text/javascript"></script>
  <script src="js/fancybox.min.js" type="text/javascript"></script>
  <script src="js/cookies.js" type="text/javascript"></script>
  <script src="js/aos.js" type="text/javascript"></script>
  <script src="js/notify.min.js" type="text/javascript"></script>

  <script>
    document.addEventListener("DOMContentLoaded", function () {
      $.ajaxSetup({

        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
        }
      });
      var $formContact = $('.reservations');
      $('#reservation-button').on('click', function (event) {
        event.preventDefault();
        $.ajax({
          method: 'POST',
          url: '{{ action("ContactController@send_reservation") }}',
          data: $formContact.serializeArray(),
          context: this,
          async: true,
          cache: false,
          dataType: 'json'
        }).done(function (res) {
          console.log(res);
          if (res.success == true) {
            $.notify(res.successMessage, "success");
            $( ".close-reservation" ).trigger( "click" );
            $(".reservations")[0].reset();
          } else {
            var eroare = res.error;
            for (var i = 0; i < eroare.length; i++) {
              eroare[i] = eroare[i] + "\n";
            }
            $.notify(res.error, {
              type: "error",
              breakNewLines: true,
              gap: 2
            });
          }
        });
        return;
      });

    });
  </script>

  @stack('scripts')
</body>

</html>