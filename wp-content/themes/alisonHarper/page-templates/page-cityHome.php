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
        <a href="/about/alison"><div id="aboutAlison" class="left"><p class="desktop-hidden">About Alison Harper</p></div></a>
        <a href="/services<?php /*echo get_page_link(getLocationPage(SERVICES_PAGE_SLUG)->ID);*/ ?>"><div id="reviewServices" class="center left"><p class="desktop-hidden">Review Our Services</p></div></a>
        <a href="/blog/"><div id="readBlog" class="left"><p class="desktop-hidden">Read the Blog</p></div></a>
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

    <article class="column">
        <h2>From the Blog </h2>
        <?php getRecentPosts(3); ?>
    </article>
</div>
