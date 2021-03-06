<?php get_header("nav"); ?>
<div class="container city">
    <div class="bodyContent clear">
        <!-- SIDE NAVIGATION -->
       <?php listLocationNav(); ?>

        <!-- PAGE CONTENT (context sensitive) -->
        <?php if ($post->ID == WELCOME_PAGE_ID ){ /* getCityHomepage() && getCityHomepage()->ID == $post->ID) { */?>
            <!-- Home Page -->
            <?php get_template_part("page-templates/page", "cityHome"); ?>
        <?php } else if ($post->ID == TEAM_PAGE_ID) { ?>
            <!-- Team Page -->
            <?php get_template_part("page-templates/page", "team"); ?>
        <?php } else { ?>
            <!-- Default Layout -->
            <?php get_template_part("page-templates/page", "default"); ?>
        <?php } ?>
    </div>
</div>
<div class="desktop-hidden tablet-hidden headerContents" style="width:100%;"><?php get_template_part("page-templates/header", "nav"); ?></div>

<aside class="uppercase left desktop-hidden mobile-hidden">
    &nbsp; <?php listLocationNav(); ?>
</aside>

<?php get_footer(); ?>