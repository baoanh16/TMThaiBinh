$(function() {
	var owl = $('.canhcam-breadcrumb-7 .owl-carousel');
	if ($(owl).length) {
		$(owl).owlCarousel({
			items: 1,
			loop: true,
			center: true,
			padding: 0,
			margin: 0,
			navText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
			nav: false,
			dots: false,
			// autoplay: true,
			autoplayTimeout: 3000,
			autoplayHoverPause: true,
			callbacks: true,
			responsive: {
				768: {
					nav: true,
					// dots: false
				}
			}
		});
	}

});

$(document).ready(function(){
	getHeightBannerHome();
});

function getHeightBannerHome() {
	let getHeightHeader = $('header').outerHeight()
	let setHeightBannerHome = $(".canhcam-breadcrumb-7 .list-items .owl-item .item");
	$(".canhcam-breadcrumb-7 .list-items .item").each((i, e) => {
		$(e).css({
			'height': 'calc(100vh - ' + getHeightHeader + 'px)'
		})
	})
}

