
<div class="container city">
<?php get_header(); ?>
<div class="bodyContent">
    <!-- SIDE NAVIGATION -->
    <aside class="uppercase left">
        <ul>
            <li><?php getLocationOpenAnchor(PORTFOLIO_PAGE_SLUG, PORTFOLIO_PAGE_ID)?>View our portfolio</a></li>
            <li><?php getLocationOpenAnchor(CONTACT_PAGE_SLUG, CONTACT_PAGE_ID)?>Drop us a note</a></li>
            <li><?php getLocationOpenAnchor(TEAM_PAGE_SLUG, TEAM_PAGE_ID)?>Meet the team</a></li>
            <?php if(isLocationHiring()){ ?>
                <li><?php getLocationOpenAnchor(CAREERS_PAGE_SLUG, CAREERS_PAGE_ID)?>We're hiring!</a></li>
            <?php } ?>
        </ul>
    </aside>
    
    <!-- PAGE CONTENT -->
    <div class="content left">
    <div class="featuredImage"><figure class="mainHome"></figure></div>
    <section class="featuredText"><?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
        <?php the_content(); ?>
    <?php endwhile; else: ?> 
        <p>Sorry, this page does not exist.</p> 
    <?php endif; ?></section>
    <article class="column leftSide">
    <h2>Featured Artist</h2>
    <?php echo gcb(22);?>
    </article>
    <?php if(getCityHomepage()->ID == $post->ID){ ?>
    	<article class="column RightSide">
        <h2>From the Blog</h2>
    	<?php getRecentPosts(3);?>
    	</article>
<?php }?>
    </div>
    </div>
	</div>
    
<?php  get_footer(); ?>