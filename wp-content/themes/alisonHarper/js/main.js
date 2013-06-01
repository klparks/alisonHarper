jQuery(document).ready(function($) {
  // Code using $ as usual goes here.
    $("select").customSelect();
    $("input.date").datepicker();
    $("input[type=submit], button" ).button();
    if(!$("aside.left .current_page_item")){
    var ancestors = $(".headerContents nav .current_page_ancestor");
    $.each(ancestors, function(idx, e){
        if(!$(e).hasClass("current_page_parent")){
            $(e).addClass("noHighlight");
        }
    });
}
});