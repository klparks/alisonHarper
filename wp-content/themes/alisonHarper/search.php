<div class="container city">
<?php get_header('nav'); ?>

<div class="container city blog bodyContent clear">
    <div class="content left">
		<?php if ( have_posts() ) : ?>

			<header>
				<h2 >Search Results for: <span class="bold"><?php echo get_search_query(); ?></span></h2>
			</header>
<br>

			<?php /* Start the Loop */ ?>
			<?php while ( have_posts() ) : the_post(); ?>
				<h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                                <p class="timestamp"><?php the_time('l, F jS, Y'); ?></p>
                                <p><?php the_excerpt(); ?></p>
<br>
			<?php endwhile; ?>

		<?php else : ?>

			<article id="post-0" class="post no-results not-found">
				<header>
					<h2>Nothing Found</h2>
				</header>
				<div class="entry-content">
					<p>Sorry, but nothing matched your search criteria. Please try again with some different keywords.</p>
					<?php get_search_form(); ?>
				
			</article>

		<?php endif; ?>

		</div>
	</div>
 </div>
 </div>
    
<?php get_footer(); ?>