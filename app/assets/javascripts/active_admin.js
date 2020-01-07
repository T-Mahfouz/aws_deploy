//= require active_admin/base
//= require activeadmin/quill_editor/quill
//= require activeadmin/quill_editor_input

$(document).ready(function () {
    var tbodyy = $("#index_table_privacy_policies tbody");
    if (tbodyy.length > 0) {
        if (tbodyy.children().length == 1) {
            $("#titlebar_right").hide();
        }
        else if (tbodyy.children().length == 0) {
            $("#titlebar_right").show();
        }
    } else {


        var tbody = $("#index_table_terms_and_conditions tbody");

        if (tbody.children().length == 1) {
            $("#titlebar_right").hide();
        }
        else if (tbody.children().length == 0) {
            $("#titlebar_right").show();
        }
    }

});