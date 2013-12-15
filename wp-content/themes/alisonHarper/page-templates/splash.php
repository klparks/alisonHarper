<?php
/*
  Template Name: Splash Page
 */
?>
<?php get_template_part("page-templates/header", "head"); ?>
<body class="landingBody gradient">
    
	<div class="goldRule"></div>

    <div class="container">

            <hgroup>
                <h1 id="logo"><img src="/wp-content/themes/alisonHarper/images/logo.jpg" alt="Alison Harper and Company"/><span>Alison Harper and Company</span></h1>
                <h2 id="tagline" class="uppercase"> <?php echo get_bloginfo('description'); ?></h2>
            </hgroup>
            <nav class="topHomeNav uppercase">
        <ul>
            
            <li><a href="<?php echo get_page_link(BLOG_PAGE_ID); ?>">Blog</a></li>
            <li><a href="<?php echo get_page_link(CONTACT_PAGE_ID); ?>">Contact</a></li>
            <li><?php get_template_part("page-templates/header", "socialMedia"); ?></li>
        </ul>
    		</nav>

     <div>
     		<figure id="ladies" class="left"></figure>
            <aside class="left">
            <div class="helloFriend">
                <p class="headline ">Hello Friend!</p>
                <p class="lowercase subline">Please select your closest location.</p>
            </div>
            
                <nav class="locationsList uppercase clear"><ul>
            
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
