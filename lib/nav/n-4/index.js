

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
$(document).ready(function(){
	if($(window).width() < CANHCAM_APP.CHANGE_GRID){
		scrollNav();
	}
});