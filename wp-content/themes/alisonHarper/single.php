<!-- Single blog post template -->
<?php get_header("noNav"); ?>
<div class="container city">
<?php get_template_part("page-templates/header", "noNav"); ?>
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?> 
            <h1><?php the_title(); ?></h1> 
            <p><em><?php the_time('l, F jS, Y'); ?></em></p> 
            <?php the_content(); ?> 
            <hr> 
            <?php comments_template(); ?> 
    <?php endwhile; else: ?> 
        <p><?php _e('Sorry, this page does not exist.'); ?></p> 
    <?php endif; ?>

</div>
<?php get_footer(); ?>