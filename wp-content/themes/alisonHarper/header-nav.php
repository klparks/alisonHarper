<?php get_template_part("page-templates/header", "head"); ?>
<body<?php
    if (!getCurrentCity("cat_name")) {
        echo "class='noLocation'";
    }
    ?>>
    <span id="responsiveTest" style="display: none;"></span>
    <div class="container city">
        <header>

            <?php get_template_part("page-templates/header", "logo"); ?>

            <div class="headerContents left">   
                <div class="right">
                    <?php get_template_part("page-templates/header", "search"); ?>

                    <ul class="left mobile-hidden">


                        <li><div class="socialMedia left"><?php get_template_part("page-templates/header", "socialMedia"); ?></div></li>
                    </ul>





                    <div class="mobile-hidden globalNav"><?php get_template_part("page-templates/header", "nav"); ?></div>
                    <?php /*
                    //Welcome to city link
                    if (getCurrentCity("cat_name")) {
                        echo "<div class='location uppercase'>";
                        echo "Welcome to " . getCurrentCity("cat_name");
                        echo "<a class='mobile-button notRight' href='" . site_url() . "'>not right?</a>";
                        echo "</div>";
                    } */
                    ?>


                </div>
            </div>
        </header>
    </div>
