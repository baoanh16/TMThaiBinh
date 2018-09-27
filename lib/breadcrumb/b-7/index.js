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
			dots: true,
			autoplay: true,
			autoplayTimeout: 3000,
			autoplayHoverPause: true,
			callbacks: true,
			responsive: {
				768: {
					nav: true,
					dots: false
				}
			}
		});
	}

});
