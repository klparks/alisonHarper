jQuery(document).ready(function($) {
  // Code using $ as usual goes here.
    $("select").customSelect();
    $("input.date").datepicker();
    $("input[type=submit], button" ).button();
    if($("aside.left .current_page_item").length == 0){
        var ancestors = $(".headerContents nav .current_page_ancestor");
        $.each(ancestors, function(idx, e){
                $(e).addClass("noHighlight");
        });
    }
    $('body').on('contextmenu', 'img', function(e){ return false; });
    $(".comments-title").click(function(e){
        $(e.target).toggleClass("collapsed")
  $(e.target).siblings(".collapsable").toggle( "blind" );
        $(e.target).siblings(".collapsable").toggleClass("collapsed")
        
//        if($(e.target).siblings(".collapsable.collapsed").length > 0){
//            $(e.target).siblings(".collapsable").hide('blind', 400)
//        } else {
//            $(e.target).siblings(".collapsable").show('blind', 400)
//        }
    })
});