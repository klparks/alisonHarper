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
        <div id="aboutAlison" class="left"><a href="about/alison"><p class="desktop-hidden">About Alison Harper</p></a></a></div>
        <div id="reviewServices" class="center left"><a href="services"><a href="<?php echo get_page_link(getLocationPage(SERVICES_PAGE_SLUG)->ID) ?>"><p class="desktop-hidden">Review Our Services</p></a></a></div>
        <div id="readBlog" class="left"><a href="/blog/"><a href="/blog/"><p class="desktop-hidden">Read the Blog</p></a></a></div>
    </section>
    <section class="awards"><?php echo gcb(36); ?></section>
    
      <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Pinterest Widget Area') ) : ?>  
      <?php endif; ?>  


    <article class="column leftSide clear">
        <div><!--about alison !-->
            <?php echo gcb(22); ?>
            <a class="more-link mobile-button" title="read more" href="about/alison">read more</a>.
        </div>
        <!--<?php get_pins_feed_list('alisonharperco', 'hair-inspiration', 10, 1, 'newwindow', 'yes', 125, 125, 'large'); ?> -->
    </article>

    <article class="column RightSide">
        <h2>From the Blog </h2>
        <?php getRecentPosts(3); ?>
    </article>
</div>
