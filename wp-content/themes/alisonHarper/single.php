<!-- Single blog post template -->
<?php get_header("noNav"); ?>
<div class="bodyContent city blog clear">
<aside class="left">
    <section class="sidebar">
    <h3>Archives</h3>
    <ul>
    	<li>March 2013</li>
        <li>February 2013</li>
        <li>January 2013</li>
    </ul>
    </section>
    
    <section class="sidebar">
    <h3>Categories</h3>
    <ul>
		<li>All</li>
		<li>Alison Harper Style</li>
		<li>Business</li>
		<li>Personal</li>
		<li>Photo Shoot</li>
		<li>Real Wedding</li>
		<li>Video Q & A</li>
		<li>Wedding Inspiration</li>
    </ul>
    </section>
    
    </aside>
<section class="featuredText">
<h2>The Harper Blog</h2>
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
<?php get_footer(); ?>