$(document).ready(function ()  {
    $('.count').each(function () {
        $(this).prop('Counter',0).animate({
            Counter: $(this).text()
        }, {
            duration: 2000,
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

        $("html, body").animate({scrollTop: 0}, 900);
    })
    var getUrlParameter = function getUrlParameter(sParam) {
        var sPageURL = window.location.search.substring(1),
            sURLVariables = sPageURL.split('&'),
            sParameterName,
            i;

        for (i = 0; i < sURLVariables.length; i++) {
            sParameterName = sURLVariables[i].split('=');

            if (sParameterName[0] === sParam) {
                return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
            }
        }
    };
    var local = getUrlParameter('locale');
    if(local) {
        $('#language-change').val(local);
    }
});
