<div class="content left">
    <?php if (has_post_thumbnail()) { ?>
        <div class="featuredImage">
            <figure class="mainHome">
                <?php the_post_thumbnail('full'); ?>
            </figure>
        </div>
    <?php } ?>
    <section class="featuredText">
        <?php if (have_posts()) : while (have_posts()) : the_post(); 
                the_content(); 
              endwhile;
              else: ?> 
            <p>Sorry, this page does not exist.</p> 
        <?php endif; ?>
    </section>
	
        <section class="featuredLinks clearfix">
        <div class="left">Make me pretty!</div>
        <div class="center left">Read our Reviews</div>
        <div class="left">Check out our Services</div>
    </section>
    <section class="awards"><h2>Recent Accolades</h2><div class="awardsLogos"></div></section>


    <article class="column leftSide clear">
        <?php echo gcb(22); ?>
    </article>

    <article class="column RightSide">
        <h2>From the Blog </h2>
        <?php getRecentPosts(3); ?>
    </article>
</div>
