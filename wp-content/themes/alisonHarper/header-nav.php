<?php get_template_part("page-templates/header", "head"); ?>
<body>
    <div class="container city">
        <header>
        
            <?php get_template_part("page-templates/header", "logo"); ?>
        
         <div class="headerContents left">   
            <div class="right">
            <?php get_template_part("page-templates/header", "search"); ?>

            <div class="socialMedia left"><ul><?php get_template_part("page-templates/header", "socialMedia"); ?></ul></div>
            </div>
            
                        <?php
                //Welcome to city link
                if (getCurrentCity("cat_name")) {
                    echo "<div class='location clear'>";
                    echo "Welcome to " . getCurrentCity("cat_name");
                    echo "<a href='" . site_url() . "'>not right?</a>";
                    echo "</div>";
                }
            ?>
            <?php get_template_part("page-templates/header", "nav"); ?>
            </div>
        </header>
        