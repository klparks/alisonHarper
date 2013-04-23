<?php get_template_part("page-templates/header", "head"); ?>
<body>

    <header>
                    <div class="brand left"><?php getLocationHomeOpenAnchor(); ?>
                        <hgroup>
                            <h1 id="logo"><img src="/wp-content/themes/alisonHarper/images/logo.jpg" alt="Alison Harper and Company"/><span>Alison Harper and Company</span></h1>
                            <h2 id="tagline" class="lowercase"> <?php echo get_bloginfo('description'); ?></h2>
                        </hgroup>
                    </a>
                    </div>
                   
                    <div class="global left">
 					<div class="search right">
                        <?php get_search_form(); ?>
                    </div>
            
                    <?php
                    if (getCurrentCity("cat_name")) {
                        echo "<div class='location'>";
                        echo "Welcome to " . getCurrentCity("cat_name");
                        echo "<a href='" . site_url() . "'>[not right?]</a>";
                        echo "</div>";
                        
                    }
                    ?>
                              
                
               <div class="clear"> <ul class="socialMedia right">
                    <li><a target="_blank" href="http://facebook.com/<?php echo get_user_meta(ADMIN_USER_ID, 'facebook', true); ?>" class="facebook" title="Follow <?php echo get_user_meta(ADMIN_USER_ID, 'facebook', true); ?> on Facebook"><img src="/wp-content/themes/alisonHarper/images/facebook.png" alt="Follow <?php echo get_user_meta(ADMIN_USER_ID, 'facebook', true); ?> on Facebook"/></a></li>
                    <li><a target="_blank" href="https://twitter.com/intent/follow?screen_name=<?php echo get_user_meta(ADMIN_USER_ID, 'twitter', true); ?>" class="twitter" title="Follow @<?php echo get_user_meta(ADMIN_USER_ID, 'twitter', true); ?> on Twitter"><img src="/wp-content/themes/alisonHarper/images/twitter.png" alt="Follow @<?php echo get_user_meta(ADMIN_USER_ID, 'twitter', true); ?> on Twitter"/></a></li>
                    <li><a target="_blank" href="http://pinterest.com/<?php echo get_user_meta(ADMIN_USER_ID, 'pinterest', true); ?>" class="pinterest" title="Follow <?php echo get_user_meta(ADMIN_USER_ID, 'pinterest', true); ?> on Pinterest"><img src="/wp-content/themes/alisonHarper/images/pinterest.png" alt="Follow <?php echo get_user_meta(ADMIN_USER_ID, 'pinterest', true); ?> on Pinterest"/></a></li>
                    <li><a target="_blank" href="http://www.youtube.com/subscription_center?add_user=<?php echo get_user_meta(ADMIN_USER_ID, 'youtube', true); ?>" class="youtube" title="Subscribe to <?php echo get_user_meta(ADMIN_USER_ID, 'youtube', true); ?> on YouTube"><img src="/wp-content/themes/alisonHarper/images/youTube.png" alt="Subscribe <?php echo get_user_meta(ADMIN_USER_ID, 'youtube', true); ?> on YouTube"/></a></li>
                </li></ul></div>
        
                <nav class="nav-collapse collapse clear">
                    <ul class="nav uppercase">
                        <?php
                        //If we're on a location, list the child pages
                        if (getCurrentCity("cat_name")) {
                            listCityChildrenPages();
                        } else {//Otherwise link to the global pages
                            $exclude = getAllLocationPageIds();
                            $exclude[] = CAREERS_PAGE_ID;
                            wp_list_pages(array('title_li' => '', 'exclude' => implode(',', $exclude), 'depth' => '1'));
                        }
                        ?>
                    </ul>
                </nav><!--/.nav-collapse -->
</header>
