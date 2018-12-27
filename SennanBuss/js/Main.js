

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

function Dismiss() {
    var button = document.getElementById('Btn1');
    button.click();
}

function Run() {
    const msg = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        footer: '<img src=\'../images/slider/slider_1.jpg\' style=\'height: 50px;\'/>'
    });
    msg({
        type: 'info',
        title: 'Signed in successfully '
    })
}
