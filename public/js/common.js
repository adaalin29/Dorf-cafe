 $(document).ready(function() {

	$(window).scroll(function() {
        if($(window).scrollTop() > 0) {
            $(".scroll-up").css("display","block");
        } else {
            $(".scroll-up").css("display","none");
        }
    }); 

    $(".scroll-up").click(function() {
      $("html, body").animate({ scrollTop: 0 }, "slow");
      return false;
    });


	$('.data-selectata').datepicker({
		language: 'de',
		minDate: new Date() // Now can select only dates, which goes after today
	})

	$('.time-picker').clockTimePicker({
		duration: true,
		durationNegative: true,
		precision: 5,

		i18n: {
			cancelButton: 'Abbrechen'
		},
	});

	// $('.toggle-off-canvas').click(function(){
	// 	var pageBody = $('body');
	// 	var offCanvas = $('#off-canvas');
	// 	var pageWrapper = $('#wrapper');

	// 	if(pageBody.hasClass('off-canvas-enabled')){
	// 		offCanvas.addClass('animation-leave');
	// 		setTimeout(function(){
	// 			offCanvas.removeClass('animation-enter animation-enter-active').addClass('animation-leave-active');
	// 			pageWrapper.removeClass('animation-enter-active-wrapper').addClass('animation-leave-active-wrapper');

	// 			setTimeout(function(){
	// 				pageBody.removeClass('off-canvas-enabled');
	// 				pageWrapper.removeClass('animation-leave-active-wrapper');
	// 				offCanvas.removeClass('animation-leave animation-leave-active');
	// 			}, 500);

	// 		}, 250);
	// 	}
	// 	else{
	// 		pageBody.addClass('off-canvas-enabled');
	// 		offCanvas.addClass('animation-enter');
	// 		setTimeout(function() {
	// 			offCanvas.addClass('animation-enter-active');
	// 			pageWrapper.addClass('animation-enter-active-wrapper');
	// 		}, 250);
	// 	}
	// });
	$galleryitemsslides = 1;
	// if(screen.width<=768)
	// $galleryitemsslides = 2;
	var GalleryItems = new Swiper('.gallery-categories-swiper .swiper-container', {
		slidesPerView: $galleryitemsslides,
		spaceBetween: 30,
		pagination: {
		  el: '.swiper-pagination',
		  clickable: true,
		},
	  });
	var swiper = new Swiper('.banner .swiper-container', {
		spaceBetween: 30,
		effect: 'fade',
		pagination: {
		  el: '.swiper-pagination',
		  clickable: true,
		},
		navigation: {
		  nextEl: '.swiper-button-next',
		  prevEl: '.swiper-button-prev',
		},
	  });
	var MenuSwiper = new Swiper('.menu-swiper .swiper-container', {
		pagination: {
		  el: '.swiper-pagination',
		  dynamicBullets: true,
		},
	  });

	  var swiperShowcase = new Swiper('.swiper-showcase .swiper-container', {
		autoplay: {
			delay: 2000,
		  },
		pagination: {
		  el: '.swiper-pagination',
		  dynamicBullets: true,
		},
	  });
	  var aboutSwiper = new Swiper('.about-swiper .swiper-container', {
		pagination: {
		  el: '.swiper-pagination',
		  dynamicBullets: true,
		},
	  });
	  var NewsSwiper = new Swiper('.events-container .swiper-container', {
		  slidesPerView: 3,
			spaceBetween: 30,
		pagination: {
			
		  el: '.swiper-pagination',
		  dynamicBullets: true,
		},
	  });
	  var slider = '-800px';
	  if(screen.width<=1024){
		  slider = '100%';
	  }
	//   $(".toggle-off-canvas").click(function(){
	// 	if($(this).hasClass('meniu-reservation-opened')){
	// 			$(".left-container").css('left','0');
	// 			$(".reservation-small").css('left','680px');
	// 			$(this).removeClass('meniu-reservation-opened');

	// 	} else{
	// 		$(".left-container").css('left',slider);
	// 		$(".reservation-small").css('left','680px');
	// 		$(this).addClass('meniu-reservation-opened');
	// 	}
	// 	if(screen.width<=1024){
	// 		var screenWidth = screen.width-100;
	// 		console.log(screenWidth);
	// 		$(".left-container").css('left','0');
	// 		$(".reservation-small").css('left',screenWidth + "px");
	// 	}
	// 	$('.close-reservation').click(function(){
	// 		$(".left-container").css('left','-1024px');
	// 		$(".reservation-small").css('left','905px');
	// 		$(this).addClass('meniu-reservation-opened');
	// 	})
	//   });
	var width_container_left = -600;
	var left_item_button = width_container_left;
	if(screen.width <= 1024){
		width_container_left = screen.width;
		left_item_button = -width_container_left;
		$(".close-reservation").click(function(){
			if($('.left-container').hasClass('afisat')){
				$('.left-container').removeClass('afisat');
				$(".left-container").css({left:left_item_button+'px'});
			}
		});
	}
	$(".toggle-off-canvas").click(function(){
		if($('.left-container').hasClass('afisat')){
			$('.left-container').removeClass('afisat');
			$(".left-container").css({left: left_item_button+'px'});
		} else{
			$('.left-container').addClass('afisat');
			$(".left-container").css({left:'0'});
		}
	});
	$(".close-reservation").click(function(){
		if($('.left-container').hasClass('afisat')){
			$('.left-container').removeClass('afisat');
			$(".left-container").css({left:'-600px'});
		}
	});
    
});

var width = 760;

if (screen.width <= 1366)
	width = 350;
function changeMenu(x) {
	var mobileWidth = 780;
	$(".sidenav").css('width',mobileWidth + 'px');
}
function closeNav() {
	$(".sidenav").css('width','0px');
	
}

if(screen.width<=1024){
	width = 100;
	function changeMenu(x) {
		$(".sidenav").css('width',width + '%');
		$('.toggle-off-canvas').css('right','50px');
	}
	function closeNav() {
		$(".sidenav").css('width','0px');
		$('.toggle-off-canvas').css('right','-50px');
	}
}
