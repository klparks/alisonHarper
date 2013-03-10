
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
    <section class="featuredText"><?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
        <?php the_content(); ?>
    <?php endwhile; else: ?> 
        <p>Sorry, this page does not exist.</p> 
    <?php endif; ?>
    </section>
    <article class="column leftSide">
       
    <?php if(getCityHomepage()->ID == $post->ID){ ?>
        <!-- This stuff only shows on the homepage -->
        <h2>Featured Artist</h2>
        <?php echo gcb(22);?>
        </article>
    
    	<article class="column RightSide">
        <h2>From the Blog</h2>
    	<?php getRecentPosts(3);?>
    	</article>
<?php }?>
    </div>
    </div>
	</div>
    
<?php  get_footer(); ?>