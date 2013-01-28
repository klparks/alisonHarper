
<?php

/*
Template Name: City
*/

?>
<div class="container city">
<?php get_header(); ?>

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
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
        <?php the_content(); ?>
    <?php endwhile; else: ?> 
        <p>Sorry, this page does not exist.</p> 
    <?php endif; ?>
        
    <!-- FEATURED POSTS -->
    <?php getRecentPosts(3);?>
    </div>
    </div>

<?php  get_footer(); ?>