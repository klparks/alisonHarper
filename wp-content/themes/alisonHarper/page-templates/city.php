<?php
/*
Template Name: City
*/
?>
<?php get_header(); ?>
<div class="row">
    <!-- SIDE NAVIGATION -->
    <nav class="uppercase">
        <ul>
            <li><?php getLocationOpenAnchor(PORTFOLIO_PAGE_SLUG, PORTFOLIO_PAGE_ID)?>View our portfolio</a></li>
            <li><?php getLocationOpenAnchor(CONTACT_PAGE_SLUG, CONTACT_PAGE_ID)?>Drop us a note</a></li>
            <li><?php getLocationOpenAnchor(TEAM_PAGE_SLUG, TEAM_PAGE_ID)?>Meet the team</a></li>
            <?php if(isLocationHiring()){ ?>
                <li><?php getLocationOpenAnchor(CAREERS_PAGE_SLUG, CAREERS_PAGE_ID)?>We're hiring!</a></li>
            <?php } ?>
        </ul>
    </nav>
    
    <!-- PAGE CONTENT -->
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
        <h1><?php the_title(); ?></h1>	
        <?php the_content(); ?>
    <?php endwhile; else: ?> 
        <p>Sorry, this page does not exist.</p> 
    <?php endif; ?>
        
    <!-- RECENT POSTS -->
    <?php 
//        $args = array(
//                'post_type' => 'post',
//                'meta_query' => array(
//                        array(
//                                'key' => 'featured',
//                                'value' => 'yes',
//                        )
//                )
//         );
//        $postslist = get_posts( $args );
//        var_dump($postslist);
    ?>
</div>
<?php get_footer(); ?>