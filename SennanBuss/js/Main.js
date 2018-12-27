
$(function () {
    var navbar = $('.navbar');
    $(window).scroll(function () {
        if ($(window).scrollTop() <= const_scroll_top) {
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

function ALogout() {
    const msg = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 5000,
        html: '<h4>Du har loggat ut!</h4><div id=\"logout_animation\" style=\"height: 80px; width: 80px; margin: 0 auto;\"></div>',
        footer: '<img/>'
    });
    msg({
        type: 'info',
        title: 'Meddelande'
    });
    playAnimation('logout_animation', 'skipping.json', false, 0.5);
}

function playAnimation(objId, path, loop=true, speed=1) {
    lottie.loadAnimation({
        container: document.getElementById(objId),
        renderer: 'svg',
        loop: loop,
        autoplay: true,
        path: '../Data/animations/' + path
    }).setSpeed(speed);
}