

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
    //$('.alert').modal('hide');
}