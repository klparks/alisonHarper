<div class="container city">

<?php get_template_part("header", "noNav"); ?>

<div class="bodyContent blog clear">

    
    
    
    
    
    <div class="content left">
	    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
        <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>	
	<p class="timestamp"><?php the_time('l, F jS, Y'); ?><span class="right"># of comments</span></p>
    <p>put total blog content here</p>
    <p>put excerpts of the month's blogs below</p>
    <p>put the comment box here</p>
    <p>put the facebook "like" thing and "tweet" here</p>
        
    <?php endwhile; else: ?> 
        <p><?php _e('Sorry, there are no posts.'); ?></p> 
    <?php endif; ?>
	</div>
    
    
    <aside class="right">
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
    
    
 </div>
</div>
    
<?php get_footer(); ?>