<?php
/*
  Template Name: Splash Page
 */
?>
<?php get_template_part("page-templates/header", "head"); ?>
<body class="landingBody gradient">
    <nav class="topHomeNav uppercase shadow">
        <ul>
            <li><?php get_template_part("page-templates/header", "socialMedia"); ?></li>
            <li><a href="<?php echo get_page_link(BLOG_PAGE_ID); ?>">Blog</a></li>
            <li><a href="<?php echo get_page_link(CONTACT_PAGE_ID); ?>">Contact</a></li>
        </ul>
    </nav>


    <div class="container">
        <header>
            <hgroup>
                <h1 id="logo"><img src="/wp-content/themes/alisonHarper/images/logo.jpg" alt="Alison Harper and Company"/><span>Alison Harper and Company</span></h1>
                <h2 id="tagline" class="lowercase"> <?php echo get_bloginfo('description'); ?></h2>
            </hgroup>
            <aside>
                <p class="lowercase headline ">Hello Friend!</p>
                <p class="lowercase subline">Please select your closest location.</p>
            </aside>
        </header>
    </div>

    <nav class="locationsList uppercase"><ul>
            <?php
            $regions = getLocations();
            foreach ($regions as $r) {
                echo '<li><h3>' . $r->name . '</h3></li>';
                foreach ($r->cities as $city) {
                    echo '<li><a href="' . $city->url . '">' . $city->name . '</a></li>';
                }
            }
            ?>
        </ul>
    </nav>
    <?php get_footer(); ?>
</body>
