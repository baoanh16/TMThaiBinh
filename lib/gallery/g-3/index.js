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

        $(".canhcam-gallery-3 .gallery-list .item .hidden").lightGallery({
            thumbnail:true
        });

        $('.canhcam-gallery-3 .gallery-list .item').each(function() {
            $(this).click(function(){
                $(this).find('.hidden a:first-child').trigger('click')
            })
        });


    $(".canhcam-gallery-2 .gallery-details .gallery-lists").lightGallery({
        youtubePlayerParams: {
            modestbranding: 1,
            showinfo: 0,
            rel: 0,
            controls: 0
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
        animateThumb: false,
        showThumbByDefault: false,
        selector: '.item'
    });
});