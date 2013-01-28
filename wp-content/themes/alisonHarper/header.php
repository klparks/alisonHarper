<head>
    <meta charset="utf-8" name="viewport" content="width=device-width">
    <title><?php wp_title('|', 1, 'right'); ?> <?php bloginfo('name'); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Le styles -->
    <link href="<?php bloginfo('stylesheet_url'); ?>" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
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
                        echo "<a href='" . site_url() . "'>not right?</a>";
                    }
                    ?>
              
                </form>
                </div>
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
