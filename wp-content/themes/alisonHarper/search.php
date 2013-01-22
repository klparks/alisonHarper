<?php get_header(); ?>

	<section id="primary" class="site-content">
		<div id="content" role="main">

		<?php if ( have_posts() ) : ?>

			<header class="page-header">
				<h1 class="page-title">Search Results for: <span><?php echo get_search_query(); ?></span></h1>
			</header>

			<?php /* Start the Loop */ ?>
			<?php while ( have_posts() ) : the_post(); ?>
				<?php get_template_part( 'content', get_post_format() ); ?>
			<?php endwhile; ?>

		<?php else : ?>

			<article id="post-0" class="post no-results not-found">
				<header class="entry-header">
					<h1 class="entry-title">Nothing Found</h1>
				</header>
				<div class="entry-content">
					<p>Sorry, but nothing matched your search criteria. Please try again with some different keywords.</p>
					<?php get_search_form(); ?>
				</div>
			</article>

		<?php endif; ?>

		</div>
	</section>
<?php get_footer(); ?>