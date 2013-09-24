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
        <?php echo gcb(34); ?>
    </section>
    <section class="awards"><h2>Recent Accolades</h2><div class="awardsLogos"></div></section>
    
        <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar('Pinterest Widget Area') ) : ?>  
      <?php endif; ?>  


    <article class="column leftSide clear">
        <?php echo gcb(22); ?>
<!--      <?php get_pins_feed_list('alisonharperco', 'hair-inspiration', 10, 1, 'newwindow', 'yes', 125, 125, 'large'); ?> 
 -->    </article>

    <article class="column RightSide">
        <h2>From the Blog </h2>
        <?php getRecentPosts(3); ?>
    </article>
</div>
