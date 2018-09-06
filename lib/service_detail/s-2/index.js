$(function() {
	if ($('.canhcam-service-detail-2 .owl-carousel,.canhcam-news-details-2 .list-item').length) {
		$('.canhcam-service-detail-2 .owl-carousel,.canhcam-news-details-2 .list-item').owlCarousel({
			animateIn: 'fadeIn',
			animateOut: 'fadeOut',
			items: 1,
			loop: true,
			center: false,
			padding: 10,
			mouseDrag: false,
			touchDrag: false,
			margin: 30,
			navText: ['<i class="mdi mdi-arrow-left"></i>', '<i class="mdi mdi-arrow-right"></i>'],
			nav: true,
			dots: false,
			// autoplay: true,
			autoplayTimeout: 3000,
			autoplayHoverPause: false,
			callbacks: true,
			responsive: {
				480: {
					items: 2
				},
				768: {
					items: 3
				},
				992: {
					items: 5
				},
				1140: {
					items: 5
				}
			}
		});
	}

});
