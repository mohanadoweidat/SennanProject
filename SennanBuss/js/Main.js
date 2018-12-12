$(document).ready(function () {

    $(".nitem").on('mouseover', function () {
        this.innerHTML = ">" + this.innerHTML;
    });

    $(".nitem").on('mouseout', function () {
        this.innerHTML = this.innerHTML.substr(4, this.innerHTML.length-1);
    });
});