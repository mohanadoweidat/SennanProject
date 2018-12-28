

function Botherror() {
    swal({
        type: 'error',
        title: 'Oops...',
        text: "Det finns ett konto redan registerat med både det här Namet och Email!"

    })
}

function success() {
    swal("Info!", "Du har skapat ett konto" + "</br>", "success", "LogIn");
}


$(document).tooltip({
    selector: "[ToolTip]",
    placement: "top",
    trigger: "focus",
    animation: false
}); 




  