<div class="content left">
    <?php if (has_post_thumbnail()) { ?>
        <div class="featuredImage">
            <figure class="mainHome">
                <?php the_post_thumbnail('full'); ?>
            </figure>
        </div>
    <?php } ?>
    <section class="featuredText">
        <?php if (have_posts()) : while (have_posts()) : the_post(); 
                the_content(); 
              endwhile;
              else: ?> 
            <p>Sorry, this page does not exist.</p> 
        <?php endif; ?>
    </section>
	
    <section class="featuredLinks clearfix">
        
        <!-- <?php echo gcb(34); ?> -->
        <div class="left"><a href="about/alison"><img src="http://alisonHarper.dev/wp-content/uploads/2013/11/meetAlisonHarper.png" alt="meetAlisonHarper" width="369" height="215" class="alignleft size-full wp-image-1404" /></a></a></div>
        <div class="center left"><a href="services"><a href="<?php echo get_page_link(getLocationPage(SERVICES_PAGE_SLUG)->ID) ?>"><img src="http://alisonHarper.dev/wp-content/uploads/2013/11/reviewOurServices.png" alt="reviewOurServices" width="235" height="211" class="alignleft size-full wp-image-1406" /></a></a></div>
        <div class="left"><a href="/blog/"><a href="/blog/"><img src="http://alisonHarper.dev/wp-content/uploads/2013/11/readTheBlog.png" alt="readTheBlog" width="292" height="204" class="alignleft size-full wp-image-1405" /></a></a></div>
    </section>
    <section class="awards"><?php echo gcb(36); ?></section>
    
      <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Pinterest Widget Area') ) : ?>  
      <?php endif; ?>  


    <article class="column leftSide clear">
        <div><!--about alison !-->
            <?php echo gcb(22); ?>
            <a title="Read On" href="<?php echo get_page_link(getLocationPage(ABOUT_ALISON_PAGE_SLUG)->ID)?>">read on</a>.
        </div>
        <!--<?php get_pins_feed_list('alisonharperco', 'hair-inspiration', 10, 1, 'newwindow', 'yes', 125, 125, 'large'); ?> -->
    </article>

    <article class="column RightSide">
        <h2>From the Blog </h2>
        <?php getRecentPosts(3); ?>
    </article>
</div>
