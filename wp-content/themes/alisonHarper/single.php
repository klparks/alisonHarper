<!-- Single blog post template -->
<?php get_header("nav"); ?>
<div class="container city">
    <div class="bodyContent blog featuredText clear">
<span id="selectedItemHack" style="display:none"></span>


<aside class="left">
    <section class="sidebar">
    <h3>Archives</h3>
    <ul class="mobile-hidden">
    	<?php wp_get_archives(array(
            'type'            => 'monthly',
            'limit'           => '',
            'format'          => 'html', 
            'before'          => '',
            'after'           => '',
            'show_post_count' => false,
            'echo'            => 1,
            'order'           => 'DESC')); ?>
    </ul>
    <select id ="archivesSelect" class="desktop-hidden">
        <option value="" selected>Archives</option>
        <?php wp_get_archives(array(
            'type'            => 'monthly',
            'limit'           => '',
            'format'          => 'option', 
            'before'          => '',
            'after'           => '',
            'show_post_count' => false,
            'echo'            => 1,
            'order'           => 'DESC')); ?>
    </select>
    </section>
</aside>
<div class="content left">
<header><h2>The Harper Blog</h2></header>
<?php get_template_part("page-templates/header", "noNav"); ?>
    <nav class="nav-single">
            <span class="nav-previous"><?php previous_post_link( '%link', '<span class="meta-nav">' . _x( '<<', 'Previous post link') . '</span> %title' ); ?></span>
            <span class="nav-next"><?php next_post_link( '%link', '%title <span class="meta-nav">' . _x( '>>', 'Next post link') . '</span>' ); ?></span>
    </nav><!-- .nav-single -->

    <?php if (have_posts()) : while (have_posts()) : the_post(); ?> 
            <h3><?php the_title(); ?></h3> 
            <p class="timestamp"><?php the_time('l, F jS, Y'); ?></p> 
            <?php the_content(); ?> 
            <ul class="socialMedia">
                <li>
                    <!-- Facebook Like Code --><div id="fb-root"></div><script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script><fb:like href="<?php echo get_permalink(); ?>" show_faces="true" width="450"></fb:like></p>
                </li>
                <li>
                    <!-- Twitter Tweet Code --><iframe allowtransparency="true" frameborder="0" scrolling="no" src="http://platform.twitter.com/widgets/tweet_button.html?url=<?php the_permalink(); ?>&via=xtapit&text=<?php the_title(); ?>" style="width:115px; height:21px;"></iframe>
                </li>
            </ul>
            <?php comments_template(); ?> 
    <?php endwhile; else: ?> 
        <p><?php _e('Sorry, this page does not exist.'); ?></p> 
    <?php endif; ?>
    </div>


</div>
</div>
<div class="mobile-hidden globalNavFooter desktop-hidden"><?php get_template_part("page-templates/header", "nav"); ?></div>
                        <?php
                //Welcome to city link
                if (getCurrentCity("cat_name")) {
                    echo "<div class='location uppercase'>";
                    echo "Welcome to " . getCurrentCity("cat_name");
                    echo "<a class='mobile-button notRight' href='" . site_url() . "'>not right?</a>";
                    echo "</div>";
                }
            ?>
           
           
</div> 


<?php get_footer(); ?>