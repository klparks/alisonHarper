<?php get_header(); ?>
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
        <h1><?php the_title(); ?></h1>	
	<?php the_content(); ?>
    <?php endwhile; else: ?> 
        <p><?php _e('Sorry, this page does not exist.'); ?></p> 
    <?php endif; ?>
<?php 
$page_id = 68;

$page_data = get_page( $page_id );

echo apply_filters('the_content', $page_data->post_content); ?>
</div>
<?php get_footer(); ?>