
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

function AddClassesToNav(_id) {
    $("#" + _id).addClass("current excl");
    $('#' + _id).attr("href","#");
}

function ALogout() {
    const msg = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 5000,
        html: '<h4>Du har just loggat ut!</h4><div id=\"logout_animation\" style=\"height: 80px; width: 80px; margin: 0 auto;\"></div>',
        footer: '<img/>'
    });
    msg({
        type: 'info',
        title: 'Meddelande'
    });
    playAnimation('logout_animation', 'skipping.json', false, 0.5);
}

function playAnimation(_objId, path, loop=true, speed=1) {
    lottie.loadAnimation({
        container: document.getElementById(_objId),
        renderer: 'svg',
        loop: loop,
        autoplay: true,
        path: '../Data/animations/' + path
    }).setSpeed(speed);
}

function showError_(_msg, _title="Oops!") {
    swal({
        type: 'error',
        title: _title,
        text: _msg
    });
}

function showError(num, _title="Oops!") {
    var msg;
    if (num == 1) {
        msg = "Var vänlig och fyll i alla fälten!";
    } else if (num == 2) {
        msg = "Lösenorden matchar inte!";
    } else if (num == 3) {
        msg = "Det finns ett konto redan registerat med det här namnet!";
    } else if (num == 4) {
        msg = "Det finns ett konto redan registerat med det här Email!";
    }
    showError_(msg, _title);
}
