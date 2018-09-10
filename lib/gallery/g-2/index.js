$(document).ready(function() {

	$(".canhcam-gallery-2 .gallery-details .gallery-lists").lightGallery({
		youtubePlayerParams: {
			modestbranding: 1,
			showinfo: 0,
			rel: 0,
			controls: 1
		},
		width: '700px',
		height: '470px',
		mode: 'lg-fade',
		addClass: 'canhcam-gallery-2 canhcam-video-fixed-size',
		counter: false,
		download: false,
		startClass: '',
		enableSwipe: false,
		enableDrag: false,
		speed: 500,
		loadYoutubeThumbnail: true,
		youtubeThumbSize: 'default',
		thumbnail: true,
		actualSize: false,
		animateThumb: false,
		showThumbByDefault: false,
		zoom: false,
		fullScreen: false,
		autoplay: false,
		// fourceAutoplay: false,
		progressBar: false,
		// controls: false,
		selector: '.item'
	});

});
