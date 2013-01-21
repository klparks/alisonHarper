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
<div class="container">
	<hgroup>
		<h1 id="logo"><img src="/wp-content/themes/alisonHarper/logo.png" alt="Alison Harper and Company"/>Alison Harper and Company</h1>
		<h2 id="tagline" class="lowercase"> <?php echo get_bloginfo ( 'description' ); ?></h2>
	</hgroup>
	<nav class="topHomeNav"><ul>
		<li><a href="<?php echo get_page_link(19); ?>">Blog</a></li>
		<li><a href="<?php echo get_page_link(16); ?>">Contact</a></li>
	</ul></nav>
	<header><p><span class="lowercase headline">Hello Friend!</span><span class="lowercase subline">Please select your closest location.</span></p></header>
	<nav class="locationsList"><ul>
		<li><h3>Maryland</h3></li>
		<li><a href="#">Annapolis</a></li>
		<li><a href="#">Baltimore</a></li>
		<li><a href="#">Central Maryland</a></li>
		<li><h3>District of Columbia</h3></li>
		<li><a href="#">Washington</a></li>
		<li><h3>Virginia</h3></li>
		<li><a href="#">Alexandria</a></li>
		<li><a href="#">Arlington</a></li>
		<li><a href="#">Charlottesville</a></li>
		<li><a href="#">Leesburg</a></li>
		<li><a href="#">Hampton Roads</a></li>
		<li><a href="#">Richmond</a></li>
		<li><h3>North Carolina</h3></li>
		<li><a href="#">Outter Banks</a></li>
	</ul></nav>


<?php get_footer(); ?>