<?php
/*
Template Name: Home Page
*/
?>
<head>
  <meta charset="utf-8">
  <title><?php wp_title('|',1,'right'); ?> <?php bloginfo('name'); ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!-- Le styles -->
  <link href="<?php bloginfo('stylesheet_url');?>" rel="stylesheet">

  <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <?php wp_enqueue_script("jquery"); ?>
</head>
<body>
<div class="container landingContainer">
	<header>
		<nav class="topHomeNav uppercase"><ul>
			<li><a href="<?php echo get_page_link(19); ?>">Blog</a></li>
			<li><a href="<?php echo get_page_link(16); ?>">Contact</a></li>
		</ul></nav>
		<hgroup>
			<h1 id="logo"><img src="/wp-content/themes/alisonHarper/images/logo.jpg" alt="Alison Harper and Company"/><span>Alison Harper and Company</span></h1>
			<h2 id="tagline" class="lowercase"> <?php echo get_bloginfo ( 'description' ); ?></h2>
		</hgroup>
		<p><span class="lowercase headline">Hello Friend!</span><span class="lowercase subline">Please select your closest location.</span></p>
	</header>
	<nav class="locationsList"><ul>
		<?php 
			$categories = get_categories( array( 'child_of'=>2, 'parent'=>2, 'hide_empty'=>0 ) ); 
			foreach($categories as $category) {
				$list = '<li><h3>' . $category->name . '</h3></li>';
				$currentLocationId = $category->cat_ID;
				$locations = get_posts('numberposts=-1&category=' . $currentLocationId . '&orderby=title&order=ASC&post_type=page');
				foreach( $locations as $location ) {
					$list .= '<li><a href="' . get_page_link( $location->ID ) . '">' . $location->post_title . '</a></li>';
				}
				echo $list;
			}
		?>
	</ul></nav>
</div>


<div class="container">
<?php get_footer(); ?>