jQuery(document).ready(function($) {
  // Code using $ as usual goes here.
    $("select").customSelect();
    //$("input.date").pickadate();
    //$("input.time").pickatime();
    $("input[type=submit], button" ).button();
    if($("aside.left .current_page_item").length == 0){
        var ancestors = $(".headerContents nav .current_page_parent");
        $.each(ancestors, function(idx, e){
                $(e).addClass("noHighlight");
        });
    }
    $('body').on('contextmenu', 'img', function(e){ return false; });
    var toggleCollapse = function(target){
        $(target).toggleClass("collapsed")
        $(target).siblings(".collapsable").toggle( "blind" );
        $(target).siblings(".collapsable").toggleClass("collapsed")
    }
    $(".comments-title").click(function(e){
        toggleCollapse(e.target)
    })
    $(".collapseState").click(function(e){
        toggleCollapse(e.target.parentNode)
    })
});