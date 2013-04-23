
<div class="container city">
    <?php get_header(); ?>
    <div class="bodyContent">
        <!-- SIDE NAVIGATION -->
        <aside class="uppercase left">
            <?php listLocationNav(); ?>
        </aside>

        <!-- PAGE CONTENT (context sensitive) -->
        <?php if (getCityHomepage()->ID == $post->ID) { ?>
            <!-- Home Page -->
            <?php get_template_part("page", "cityHome"); ?>
        <?php } else if (getSlug() == TEAM_PAGE_SLUG) { ?>
            <!-- Team Page -->
            <?php get_template_part("page", "team"); ?>
        <?php } else { ?>
            <!-- Default Layout -->
            <?php get_template_part("page", "default"); ?>
        <?php } ?>
    </div>
</div>
<?php get_footer(); ?>