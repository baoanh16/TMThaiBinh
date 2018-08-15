$(document).ready(function() {

    $(".canhcam-gallery-3 .gallery-details .gallery-lists .item .boxzoom").lightGallery({
        width: '700px',
        height: '470px',
        mode: 'lg-fade',
        addClass: 'canhcam-gallery-3 canhcam-video-fixed-size',
        counter: false,
        download: false,
        startClass: '',
        enableSwipe: false,
        enableDrag: false,
        speed: 500,
        thumbnail: true,
        animateThumb: false,
        showThumbByDefault: false,
    });

    $('.canhcam-gallery-3 .gallery-details .gallery-lists .item').each(function() {
        $(this).click(function() {
            $(this).find('.boxzoom a:first-child').trigger('click')
        })
    });
});