<head>
    <meta charset="utf-8" name="viewport" content="width=device-width">
    <title><?php wp_title('|', 1, 'right'); ?> <?php bloginfo('name'); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Le styles -->
    
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,200,500,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href="<?php bloginfo('stylesheet_url'); ?>" rel="stylesheet">
    

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
     

    <?php wp_enqueue_scripts(); ?>
    <?php wp_head(); ?>
</head>
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
                    }
                    ?>

                </form>
                </div>
                              
                
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
                </div>


</header>
</body>
