
<div class="content left">
    <?php if (has_post_thumbnail()) { ?>
    <div class="featuredImage">
        <figure class="mainHome">
            <?php the_post_thumbnail('full'); ?>
        </figure>
    </div>
    <?php } ?>
    <section class="featuredText">
        <?php
        if (have_posts()) : while (have_posts()) : the_post();
            the_content();
        endwhile;
        else: ?> 
            <p>Sorry, this page does not exist.</p> 
        <?php endif; ?>
    </section>

    <article class="column leftSide clear">
</div>