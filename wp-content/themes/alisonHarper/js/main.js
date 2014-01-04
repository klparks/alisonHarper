jQuery(document).ready(function($) {
  // Code using $ as usual goes here.
    $("select").customSelect();
    $("input.date").pickadate();
    $("input.time").pickatime();
    $("input[type=submit], button" ).button();
    if($("aside.left .current_page_item").length == 0){
        
        if(!$("#selectedItemHack")){
            var ancestors = $(".headerContents nav .current_page_parent");
            $.each(ancestors, function(idx, e){
                    $(e).addClass("noHighlight");
            });
        }
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
    $("#archivesSelect").val("").change();
    $("#archivesSelect").change(function(e){
        if(this.options[this.selectedIndex].value != "")document.location.href=this.options[this.selectedIndex].value;
    })
    
    var longTextPrev = jQuery(".nav-previous a").html();
    var longTextNext = jQuery(".nav-next a").html();
    var shortTextPrev = "<span class='meta-nav'>&lt;&lt;</span> last";
    var shortTextNext = "next <span class='meta-nav'>&gt;&gt;</span>";
    var shortenBlogNavText = function(){
        jQuery(".nav-previous a").html(shortTextPrev);
        jQuery(".nav-next a").html(shortTextNext);
    }
    var restoreBlogNavText = function(){
        jQuery(".nav-previous a").html(longTextPrev);
        jQuery(".nav-next a").html(longTextNext);
    }
    
    var doResponsiveLayoutDesktop = function(){
        restoreBlogNavText();
    }
    var doResponsiveLayoutPhone = function(){
        shortenBlogNavText();
    }
    var doResponsiveLayoutTablet = function(){
        shortenBlogNavText();
    }
    //This is a nice way to do some simple responsive layout work.  If we need much more lets import a librarys such as jRespond
    var handleResponsiveLayout = function() {
        if ($("#responsiveTest").css("background-color") == "rgb(0, 0, 0)" ){
		doResponsiveLayoutDesktop();
	} else if ($("#responsiveTest").css("background-color") == "rgb(255, 0, 0)" ){
		doResponsiveLayoutPhone();
	} else if ($("#responsiveTest").css("background-color") == "rgb(0, 128, 0)" ){
            doResponsiveLayoutTablet();
        }
    }
    
    handleResponsiveLayout();
    
    $(window).resize(function(){	
	handleResponsiveLayout();
    });
    
});