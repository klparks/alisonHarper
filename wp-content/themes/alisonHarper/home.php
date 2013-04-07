
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


    <div class="content left">
   
	    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?> 
        <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>	
	<p><em><?php the_time('l, F jS, Y'); ?></em></p>
        <hr>
    <?php endwhile; else: ?> 
        <p><?php _e('Sorry, there are no posts.'); ?></p> 
    <?php endif; ?>
	

		

		</div>
	</div>
 </div>
</div>
    
<?php get_footer(); ?>