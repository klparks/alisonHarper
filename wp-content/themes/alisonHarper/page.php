
<div class="container city">
<?php get_header(); ?>
<div class="bodyContent">
    <!-- SIDE NAVIGATION -->
    <aside class="uppercase left">
        <?php listLocationNav() ?>
    </aside>
    
    <!-- PAGE CONTENT -->
    <div class="content left">
    <?php if ( has_post_thumbnail() ) {?>
        <div class="featuredImage"><figure class="mainHome">
	<?php the_post_thumbnail('full');?>
        </figure></div>
    <?php }?>
    <section class="featuredText">
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
        <?php the_content(); ?>
    <?php endwhile; else: ?> 
        <p>Sorry, this page does not exist.</p> 
    <?php endif; ?>
    </section>
    
    <section class="featuredLinks">
    	<div class="left">Make me pretty!</div>
        <div class="center left">Read our Reviews</div>
        <div class="left">Check out our Services</div>
    </section>
    
    <article class="column leftSide clear">
       
    <?php if(getCityHomepage()->ID == $post->ID){ ?>
        <!-- This stuff only shows on the homepage -->
        <?php echo gcb(22);?>
        </article>
    
    	<article class="column RightSide">
        <h2>From the Blog </h2>
    	<?php getRecentPosts(3);?>
    	</article>
<?php }?>
    </div>
    </div>
	</div>
    
<?php  get_footer(); ?>