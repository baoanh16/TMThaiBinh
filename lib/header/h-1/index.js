function searchbox() {
    $('header .menu-wrap .bottom .search .toggle-menu').click(function() {
        $('header .menu-wrap .bottom .search .Module').toggleClass('show');
    });
}

function toggleMenu() {
    $('header .toggle-menu').click(function() {
        $('header .menu-wrap').toggleClass('show');
    });
}
$(document).ready(function() {
    toggleMenu();
    searchbox();
})