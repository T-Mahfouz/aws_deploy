
$(document).ready(function() {
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




