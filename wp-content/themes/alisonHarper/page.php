<?php get_header("nav"); ?>
<div class="container city">
    <div class="bodyContent clear">
        <!-- SIDE NAVIGATION -->
        <aside class="uppercase left">
            <?php listLocationNav(); ?>
        </aside>

        <!-- PAGE CONTENT (context sensitive) -->
        <?php if (getCityHomepage() && getCityHomepage()->ID == $post->ID) { ?>
            <!-- Home Page -->
            <?php get_template_part("page-templates/page", "cityHome"); ?>
        <?php } else if (getSlug() == TEAM_PAGE_SLUG) { ?>
            <!-- Team Page -->
            <?php get_template_part("page-templates/page", "team"); ?>
        <?php } else if (getSlug() == PORTFOLIO_PAGE_SLUG) { ?>
            <!-- Portfolio Page -->
            <?php get_template_part("page-templates/page", "portfolio"); ?>
        <?php } else { ?>
            <!-- Default Layout -->
            <?php get_template_part("page-templates/page", "default"); ?>
        <?php } ?>
    </div>
</div>
<?php get_footer(); ?>