<?php get_template_part("page-templates/header", "head"); ?>
<body>
    <div class="container city">
        <header>
        
            <?php get_template_part("page-templates/header", "logo"); ?>
        
         <div class="headerContents left">   
            <div class="right">
            <?php get_template_part("page-templates/header", "search"); ?>
            
        	<ul class="left">
            
            	
            	<li><div class="socialMedia left"><?php get_template_part("page-templates/header", "socialMedia"); ?></div></li>
        	</ul>
            
            
          
          <?php get_template_part("page-templates/header", "nav"); ?>
                        <?php
                //Welcome to city link
                if (getCurrentCity("cat_name")) {
                    echo "<div class='location uppercase'>";
                    echo "Welcome to " . getCurrentCity("cat_name");
                    echo "<a href='" . site_url() . "'>not right?</a>";
                    echo "</div>";
                }
            ?>
           
           
         	</div>
         </div>
        </header>
        