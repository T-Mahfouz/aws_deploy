$(document).on('ready',function () {
    $("#submit-button").on('click',function(){
        $.ajax({
            type: "POST",
            url : "home/contact",
            data : $(".new_booking").serialize(),
            success: function(){
                alert("submitted");
            },
            error: function(data){
                var r = jQuery.parseJSON(data.responseText);
                alert("Message: " + r.Message);

            }
        });
    });


});