

function error() {
    swal({
        type: 'error',
        title: 'Oops...',
        text: "Var vänlig och fyll i alla fälten!"

    })
}

function Botherror() {
    swal({
        type: 'error',
        title: 'Oops...',
        text: "Det finns ett konto redan registerat med både det här Namet och Email!"

    })
}

function Emailerror() {
    swal({
        type: 'error',
        title: 'Oops...',
        text: "Det finns ett konto redan registerat med det här Email!"

    })
}

function Nameerror() {
    swal({
        type: 'error',
        title: 'Oops...',
        text: "Det finns ett konto redan registerat med det här namnet!"

    })
}

function Passerror() {
    swal({
        type: 'error',
        title: 'Oops...',
        text: "Lösenorden Matchar inte!"

    })
}

function success() {
    swal("Info!", "Du har skapat ett konto" + "</br>" + "<a href='Login.aspx'>Logga in</a>", "success", "LogIn");
}