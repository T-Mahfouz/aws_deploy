$(document).ready(function ()  {
    $('.count').each(function () {
        $(this).prop('Counter',0).animate({
            Counter: $(this).text()
        }, {
            duration: 5000,
            easing: 'swing',
            step: function (now) {
                $(this).text(Math.ceil(now));
            }
        });
    });

    $(window).scroll(function () {

        var height = $(window).scrollTop();

        if(height > document.body.clientHeight){
            $('.move-up').css('display','flex')
        }
        else{
            $('.move-up').css('display','none')
        }
    });
    $('.move-up').click(function () {
        $("html, body").animate({scrollTop: 0}, 400);
    })


});
