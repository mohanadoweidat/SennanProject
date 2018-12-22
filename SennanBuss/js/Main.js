

$(function () {
    var navbar = $('.navbar');
    $(window).scroll(function () {
        if ($(window).scrollTop() <= 40) {
            navbar.removeClass('navbar-scroll');
        } else {
            navbar.addClass('navbar-scroll');
        }
    });
});

function Logout() {
    var button = document.getElementById('Btn');
    button.click();
}
