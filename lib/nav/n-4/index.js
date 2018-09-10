

function scrollNav(){
	$('.canhcam-nav-4 ul.nav').hide();
	$('.canhcam-nav-4 .trigger-btn').on('click', function() {
		if ($('.canhcam-nav-4 nav').is(':hidden') === true) {
			$('.canhcam-nav-4 nav').slideDown('slow')
			$(this).addClass('active')
		} else {
			$('.canhcam-nav-4 nav').slideUp('slow')
			$(this).removeClass('active')
		}

	})
	$('.canhcam-nav-4 ul.nav').removeAttr( "style" )
}

function checkMenuScroll() {
	var e = $(window).scrollTop(),
		m = $('header').outerHeight(),
		n = $('.canhcam-nav-4').offset().top,
		l = $(window).height()
	if (((n - m) - e) <= 0) {
		if ($('header').hasClass("active") == true) {
			$('.canhcam-nav-4').addClass('active').css({
				"top": (m - 1) + "px"
			})
		}
	} else {
		$('.canhcam-nav-4').removeClass('active').removeAttr('style')
	}

	$('.canhcam-nav-4 nav li').each(function() {
		var u = $(this).find('a').attr('data-link')
		var s = $('#' + u).offset().top
		if (((l + e) - 400) >= s) {
			$('.canhcam-nav-4 nav li a').removeClass('active')
			$(this).find('a').addClass('active')
		}
	})
}

$(document).ready(function(){
	if($(window).width() < CANHCAM_APP.CHANGE_GRID){
		scrollNav();
	}


	$('.canhcam-nav-4 nav li a').removeClass('active')
	$('.canhcam-nav-4 nav li:first-child a').addClass('active')
	$('.canhcam-nav-4 nav li a').on('click', function() {
		$('.canhcam-nav-4 nav li a').removeClass('active')
		$(this).addClass('active')
		$('html, body').animate({
			scrollTop: $('#' + $(this).attr('data-link')).offset().top - $('.canhcam-nav-4').outerHeight() - 20
		}, 500);

		return false;
	})

	setTimeout(() => {
		if ($('header').hasClass("active") == true) {
			var m = $('header').outerHeight()
			$('.canhcam-nav-4').addClass('active').css({
				"top": (m - 1) + "px"
			})
		}
	}, 500);
});

$(window).on('scroll', function() {
	if ($('.canhcam-nav-4').length > 0) {
		checkMenuScroll()
	}
})
