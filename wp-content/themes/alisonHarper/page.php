<?php
/*
  Template Name: Home Page
 */
?>
<head>
    <meta charset="utf-8">
    <title><?php wp_title('|', 1, 'right'); ?> <?php bloginfo('name'); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Le styles -->
    <link href="<?php bloginfo('stylesheet_url'); ?>" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
    <![endif]-->
    
    <!--[if gte IE 9]>
  <style type="text/css">
    .gradient {
       filter: none;
    }
  </style>
<![endif]-->

    <?php wp_enqueue_scripts(); ?>
</head>
<body class="landingBody gradient">
<nav class="topHomeNav uppercase shadow"><ul>
                    <li><a href="<?php echo get_page_link(BLOG_PAGE_ID); ?>">Blog</a></li>
                    <li><a href="<?php echo get_page_link(CONTACT_PAGE_ID); ?>">Contact</a></li>
                </ul></nav>


    <div class="container">
        <header>
            
            <hgroup>
                <h1 id="logo"><img src="/wp-content/themes/alisonHarper/images/logo.jpg" alt="Alison Harper and Company"/><span>Alison Harper and Company</span></h1>
                <h2 id="tagline" class="lowercase"> <?php echo get_bloginfo('description'); ?></h2>
            </hgroup>
            <aside>
            	<p class="lowercase headline">Hello Friend!</p>
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
            </ul></nav>
  
        <?php get_footer(); ?>
		</body>
       