<?php get_header("nav"); ?>
<?php if(have_posts()) { ?><div class="container city">
    <div class="bodyContent blog featuredText clear">
	<aside class="left">
    	<section class="sidebar">
    	<h3>Archives</h3>
    <ul>
    	<?php wp_get_archives('type=monthly'); ?>
    </ul>
    </section>
    
<!--    <section class="sidebar">
    <h3>Categories</h3>
    <ul>
	<?php wp_list_categories(); ?>
    </ul>
    </section>-->
    
    </aside>
        <?php } ?>

<div class="container city">
    <div class="content left">
        <?php if(have_posts()) { ?>
            <header> <h2>The Harper Blog</h2></header> 
        <?php } ?>
        <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
        
            <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>	
            <p class="timestamp"><?php the_time('l, F jS, Y'); ?><span class="right"><?php comments_number( 'no comments', 'one comment', '% comments' ); ?>.</span></p>
            <p><?php the_content(); ?><!-- <?the_excerpt(); ?> --></p>
            <p>
            <ul class="socialMedia">
                <li>
                    <!-- Facebook Like Code --><div id="fb-root"></div><script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script><fb:like href="<?php echo get_permalink(); ?>" show_faces="true" width="450"></fb:like></p>
                </li>
                <li>
                    <!-- Twitter Tweet Code --><iframe allowtransparency="true" frameborder="0" scrolling="no" src="http://platform.twitter.com/widgets/tweet_button.html?url=<?php the_permalink(); ?>&via=xtapit&text=<?php the_title(); ?>" style="width:115px; height:21px;"></iframe>
                </li>
            </ul>
            <p><?php $withcomments = 1; comments_template(); ?></p>
        <?php endwhile; else: ?> 
            <?php get_template_part("page-templates/index", "notFound"); ?>
        <?php endif; ?>
    </div>
 </div>
 </div>
 </div>
 </div>
    
<?php get_footer(); ?>