<?php
/*
  Template Name: Splash Page
 */
?>
<?php get_template_part("page-templates/header", "head"); ?>
<body class="landingBody gradient">
    
     	<ul class="desktop-hidden uppercase topHomeNav">
             
            <li class="mobile-button"><a href="<?php echo get_page_link(BLOG_PAGE_ID); ?>">Blog</a></li>
            <li class="mobile-button"><a href="<?php echo get_page_link(CONTACT_PAGE_ID); ?>">Contact</a></li>
     	</ul>
   
	<div class="goldRule"></div>

    <div class="container">
		<div class="brand">
            <hgroup>
                <h1 id="logo"><img class="mobile-hidden" src="/wp-content/themes/alisonHarper/images/logo.jpg" alt="Alison Harper and Company"/><span>Alison Harper and Company</span></h1>
                <h2 id="tagline" class="uppercase"> <?php echo get_bloginfo('description'); ?></h2>
            </hgroup>
        </div>
        <nav class="topHomeNav">
        <ul class="mobile-hidden">
            
            <li class="mobile-hidden uppercase"><a href="<?php echo get_page_link(BLOG_PAGE_ID); ?>">Blog</a></li>
            <li class="mobile-hidden uppercase"><a href="<?php echo get_page_link(CONTACT_PAGE_ID); ?>">Contact</a></li>
            <?php get_template_part("page-templates/header", "socialMedia"); ?>
        </ul>
        <ul class="desktop-hidden locationSelect">
            <li class="headline clearfix">Hello Friend!</li>
            <li class="subline">Please select your closest location</li>
            <li><?php get_template_part("page-templates/footer", "select"); ?></li>
            <li id="ladies"></li>
        </ul>
        
    </nav>

     <div class="landingLocations">
     		<figure id="ladies" class="left mobile-hidden"></figure>
            <aside class="left">
     <div class="helloFriend mobile-hidden">
                <p class="headline ">Hello Friend!</p>
                <p class="lowercase subline">Please select your closest location.</p>
     </div>

            
                <nav class="locationsList mobile-hidden uppercase clear"><ul>
            
            <?php
            $regions = getLocations();
            foreach ($regions as $r) {
                echo '<li><h3>' . $r->name . '</h3></li>';
                foreach ($r->cities as $city) {
                    echo '<li><a href="' . $city->url . '">' . $city->name . '</a></li>';
                }
            }
            ?>
            <br><li> Don't see your location? <a href="http://alisonharper.dev/contact-us/">Contact us.</a></li>
        </ul>
    </nav>
            </aside>
   

    </div>
     </div>
    <?php get_footer(); ?>
</body>
