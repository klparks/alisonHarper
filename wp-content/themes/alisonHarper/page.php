<div class="container city">
<?php get_header(); ?>
<div class="bodyContent">
    <!-- SIDE NAVIGATION -->
    <aside class="uppercase left">
        <?php listLocationNav() ?>
    </aside>
    
    <!-- PAGE CONTENT -->
    <div class="content left">
    <div class="featuredImage"><figure class="mainHome"></figure></div>
    <article class="column">
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
        <?php the_content(); ?>
    <?php endwhile; else: ?> 
        <p>Sorry, this page does not exist.</p> 
    <?php endif; ?>
    </article>
    <?php if(getCityHomepage()->ID == $post->ID){ ?>
        <article class="column">
        <?php getRecentPosts(3);?>
        </article>
    <?php } ?>
    </div>
    </div>
	</div>
    
<?php  get_footer(); ?>