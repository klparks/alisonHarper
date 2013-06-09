<div class="container city">
<?php get_header('nav'); ?>

<div class="bodyContent clear">
    <div class="content left">
		<?php if ( have_posts() ) : ?>

			<header>
				<h2 >Search Results for: <span><?php echo get_search_query(); ?></span></h2>
			</header>

			<?php /* Start the Loop */ ?>
			<?php while ( have_posts() ) : the_post(); ?>
				<?php get_template_part( 'content', get_post_format() ); ?>
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