CheckScroll();

$(function () {
    var navbar = $('.navbar');
    var win = $(window);
    win.scroll(function () {
        if (win.scrollTop() <= const_scroll_top) {
            navbar.removeClass('navbar-scroll');
        } else {
            navbar.addClass('navbar-scroll');
        }
        CheckScroll();
    });
});

function CheckScroll() {
    var win = $(window);
    var height = window.innerHeight;
    if (win.scrollTop() > height * 0.1) {
        $(".about-a").addClass("no-tr");
    }
    if (win.scrollTop() > height * 0.3) {
        $(".symbols-a").addClass("no-tr");
    }
}

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
      
    } else if (num == 20) {
        msg = "Vänligen fyll i alla fälten.";
    } else if (num == 21) {
        msg = "Du har angett fel lösenord!";
    } else if (num == 22) {
        msg = "Det nya Lösenordet och bekräftelsen matchar inte!";
    } else if (num == 23) {
        msg = "Du har angett fel Användarnamn eller Lösenord!";
    } else if (num == 24) {
        msg = "Du har angtt en felaktig aktiveringskod, var vänlig och kolla igen på din inbox";
    }
    showError_(msg, _title);
}


 
 
