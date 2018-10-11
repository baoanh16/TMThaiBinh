function changeNewsDetail1() {
	$(".canhcam-news-details-1 .news-read").lightGallery({
		thumbnail: true,
		animateThumb: false,
		showThumbByDefault: false,
		selector: '.item-news-read'
	});
}

function createNewsSocial1() {
	var newsFullPath = document.URL
	var newsFullPathEncode = encodeURIComponent(document.URL)
	$('.fb-share-button').attr('data-href', newsFullPath)
	$('.fb-share-button .fb-xfbml-parse-ignore').attr('href', 'https://www.facebook.com/sharer/sharer.php?u=' + newsFullPathEncode + '&src=sdkpreparse')
	$('.twitter-share-button').attr('data-url', newsFullPath)
}

function changeIMGtoDiv1() {
	$('.canhcam-news-details-1 .othernews .item figure').each(function() {
		var tmp = $(this).find('img').attr('src')
		$(this).append('<div class="thumb"></div>')
		$(this).find('.thumb').css({
			"background-image": "url(" + tmp + ")",
			"background-position": "center center",
			"background-size": "cover"
		})
	})
}

$(function() {
	if ($('.canhcam-news-details-2 .list-slide , .canhcam-project-detail-2 .list-slide').length) {
		$('.canhcam-news-details-2 .list-slide , .canhcam-project-detail-2 .list-slide').owlCarousel({
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
				992: {
					items: 1,
					nav: false,
					dots: true
				},
				1140: {
					items: 1,
					nav: false,
					dots: true
				}
			}
		});
	}

});

$(document).ready(function() {
	changeNewsDetail1()
	createNewsSocial1()
	$('.tm-form').appendTo('#tm-form');
		// changeIMGtoDiv1()
	$('.canhcam-job-form').slideUp();
	$('#tm-download').on('click',function(e){
		e.preventDefault()
		$('.canhcam-job-form').slideDown();
	})
});

$(window).resize(function() {
	// changeIMGtoDiv1()
})