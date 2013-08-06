<!-- Single blog post template -->
<?php get_header("nav"); ?>
<div class="container city">
    <div class="bodyContent clear">
<div class="content left">
<div class="bodyContent city blog clear">
<section class="featuredText">
<h2>The Harper Blog</h2>
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
<div class="content left">
<?php get_template_part("page-templates/header", "noNav"); ?>
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?> 
            <h3><?php the_title(); ?></h3> 
            <p class="timestamp"><?php the_time('l, F jS, Y'); ?></p> 
            <?php the_content(); ?> 
            <hr> 
            <?php comments_template(); ?> 
    <?php endwhile; else: ?> 
        <p><?php _e('Sorry, this page does not exist.'); ?></p> 
    <?php endif; ?>
    </div>
</section>
</div>
</div>
</div>
<?php get_footer(); ?>