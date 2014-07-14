<?php get_template_part("page-templates/header", "head"); ?>
<body<?php
    //if (!getCurrentCity("cat_name")) {
        echo "class='noLocation'";
    //}
    ?>>
    <div class="container city">
        <header>
                             <?php get_template_part("page-templates/header", "logo"); ?>
         <div class="headerContents left">   

            <div class="right">

            <?php get_template_part("page-templates/header", "search"); ?>
            <div class="socialMedia left"><ul><?php get_template_part("page-templates/header", "socialMedia"); ?></ul></div>
            </div>
            </div>
        </header>
    </div>
        