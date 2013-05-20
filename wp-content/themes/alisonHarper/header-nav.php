<?php get_template_part("page-templates/header", "head"); ?>
<body>
    <div class="container city">
        <header>
            <?php get_template_part("page-templates/header", "logo"); ?>
            <?php get_template_part("page-templates/header", "search"); ?>
            <?php
                //Welcome to city link
                if (getCurrentCity("cat_name")) {
                    echo "<div class='location'>";
                    echo "Welcome to " . getCurrentCity("cat_name");
                    echo "<a href='" . site_url() . "'>[not right?]</a>";
                    echo "</div>";
                }
            ?>
            <?php get_template_part("page-templates/header", "socialMedia"); ?>
            <?php get_template_part("page-templates/header", "nav"); ?>
        </header>
        