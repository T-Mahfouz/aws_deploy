
$(document).ready(function() {
    // $('#language-change').change(function (e) {
    //     console.log("contact")
    //     $('#language-change').val(e.target.value);
    //     window.location.replace(`${window.location.pathname}?locale=${e.target.value}`);
    // })
    $('#new_booking').on('ajax:success', function (e, data, status, xhr) {
        $(".submit").addClass("loading");
        setTimeout(function () {
            $(".submit").addClass("hide-loading");
            // For failed icon just replace ".done" with ".failed"
            if ($('.notice').length > 0) {
                $(".failed").addClass("finish");
            }
            else if ($('.notice').length == 0) {
                $(".done").addClass("finish");
            }
        }, 3000);
        setTimeout(function () {
            $(".submit").removeClass("loading");
            $(".submit").removeClass("hide-loading");
            $(".done").removeClass("finish");
            $(".failed").removeClass("finish");
        }, 5000);



    });
    $('#booking_country_name').on("click", function () {
        var name = $('#booking_country_name').val();
        if (name == 'Egypt'){
            $('#country-code').val('0020');
            $('#booking_phone').val('');
        }
        if (name == 'Saudi Arabia') {
            $('#country-code').val('00966');
            $('#booking_phone').val('');
        }
        if (name == 'Kuwait'){
            $('#country-code').val('00965');
            $('#booking_phone').val('');
        }
        if (name == 'United Arab Emirates') {
            $('#country-code').val('00971');
            $('#booking_phone').val('');
        }

            if (name == 'Qatar'){
                $('#country-code').val('00974');
                $('#booking_phone').val('');
            }

        if (name == 'Bahrain'){
            $('#country-code').val('00973');
            $('#booking_phone').val('');
        }

        if (name == 'Oman'){
            $('#country-code').val('00968');
            $('#booking_phone').val('');
        }

        if (name == 'Jordan'){
            $('#country-code').val('00962');
            $('#booking_phone').val('');
        }


        if (name == 'Yemen'){
            $('#country-code').val('00967');
            $('#booking_phone').val('');
        }

        if (name == 'Iraq'){
            $('#country-code').val('00964');
            $('#booking_phone').val('');
        }

        if (name == 'Lebanon'){
            $('#country-code').val('00961');
            $('#booking-phone').val('');
        }

        if (name == 'Algeria'){
            $('#country-code').val('00213');
            $('#booking_phone').val('');
        }


        if (name == 'Tunisia'){
            $('#country-code').val('00216');
            $('#booking_phone').val('');
        }

        if (name == 'Libya'){
            $('#country-code').val('00218');
            $('#booking_phone').val('');
        }

        if (name == 'Morocco'){
            $('#country-code').val('00212');
            $('#booking_phone').val('');
        }


    });

    $('#booking_phone').on("click", function (){
        $('#booking_phone').val('');
        var code = $('#country-code').val();
        var phone = $('#booking_phone').val();
        $('#booking_phone').val('');
        $('#booking_phone').val(code + "-" + phone);
    });

});




