
$(document).ready(function() {
    // $('#language-change').change(function (e) {
    //     console.log("contact")
    //     $('#language-change').val(e.target.value);
    //     window.location.replace(`${window.location.pathname}?locale=${e.target.value}`);
    // })
    $('#new_booking').on('ajax:success', function(e, data, status, xhr){
        $(".submit").addClass("loading");
        setTimeout(function() {
            $(".submit").addClass("hide-loading");
            // For failed icon just replace ".done" with ".failed"
            if ($('.notice').length > 0) {
                $(".failed").addClass("finish");
            }
            else if($('.notice').length == 0)  {
                $(".done").addClass("finish");
            }
        }, 3000);
        setTimeout(function() {
            $(".submit").removeClass("loading");
            $(".submit").removeClass("hide-loading");
            $(".done").removeClass("finish");
            $(".failed").removeClass("finish");
        }, 5000);
    });
});




