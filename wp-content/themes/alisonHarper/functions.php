<?php
ini_set ( 'display_errors', 'On' );
error_reporting ( E_ALL );

// Constants to use throughout the application
// User Ids
define ( "ADMIN_USER_ID", "1" );
// Category Ids
define ( "HIRING_CAT_ID", "19" );
define ( "LOCATION_ROOT_ID", "2" );
define ( "NEW_CAT_ID", "18" );
// Non-Location Page Ids
define ( "BLOG_PAGE_ID", "19" );
define ( "CAREERS_PAGE_ID", "245" );
define ( "CONTACT_PAGE_ID", "16" );
define ( "PORTFOLIO_PAGE_ID", "95" );
define ( "TEAM_PAGE_ID", "252" );
// Page Slugs
define ( "CAREERS_PAGE_SLUG", "careers" );
define ( "CONTACT_PAGE_SLUG", "contact-us" );
define ( "PORTFOLIO_PAGE_SLUG", "portfolio" );
define ( "TEAM_PAGE_SLUG", "team" );
define ( "ABOUT_ALISON_PAGE_SLUG", "alison" );
define ( "SERVICES_PAGE_SLUG", "services" );

add_theme_support ( 'post-thumbnails' );

// Load necessary scripts on page load
add_action ( 'wp_enqueue_scripts', 'enqueueScripts' );
add_action ( 'genesis_meta', 'wpb_add_google_fonts', 5 );
add_filter ( 'comment_post_redirect', 'redirect_after_comment' );

// Modify the WordPress read more link
add_filter ( 'excerpt_more', 'more_link' );
add_filter ( 'the_content_more_link', 'more_link' );

$currentLocation = null;

function more_link() {
	return '&hellip; <a class="more-link mobile-button" href="' . get_permalink () . '"> read more</a>';
}

// Add a current item highlight class to a selected archive
function theme_get_archives_link($link_html) {
	global $wp;
	static $current_url;
	if (empty ( $current_url )) {
		if (isset ( $_SERVER ['QUERY_STRING'] )) {
			$current_url = add_query_arg ( $_SERVER ['QUERY_STRING'], '', home_url ( $wp->request . '/' ) );
		} else {
			$current_url = home_url ( $wp->request . '/' );
		}
	}
	if (stristr ( $link_html, $current_url ) !== false) {
		$link_html = preg_replace ( '/(<[^\s>]+)/', '\1 class="current_page_item"', $link_html, 1 );
	}
	return $link_html;
}
add_filter ( 'get_archives_link', 'theme_get_archives_link' );
function custom_excerpt_length($length) {
	return 40;
}
add_filter ( 'excerpt_length', 'custom_excerpt_length', 999 );
function redirect_after_comment($location) {
	return $_SERVER ["HTTP_REFERER"];
}
function wpb_add_google_fonts() {
	echo '<link href="http://fonts.googleapis.com/css?family=Raleway:400,200,500,300,600,700,800" rel="stylesheet" type="text/css">';
	echo '<link href="http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic" rel="stylesheet" type="text/css">';
}
add_filter ( 'comment_form_default_fields', 'url_filtered' );
function url_filtered($fields) {
	if (isset ( $fields ['url'] ))
		unset ( $fields ['url'] );
	return $fields;
}
function enqueueScripts() {
	if (! is_admin ()) {
		// wp_enqueue_script('bootstrap', get_template_directory_uri() . '/bootstrap/js/bootstrap.js', array('jquery', 'jquery-ui-core','jquery-ui-button', 'jquery-effects-core', 'jquery-ui-widget'));
		wp_enqueue_script ( 'customselect', get_template_directory_uri () . '/js/plugins/customSelect/customSelect.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'pickadate', get_template_directory_uri () . '/js/plugins/pickadate/picker.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'pickadateDate', get_template_directory_uri () . '/js/plugins/pickadate/picker.date.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'pickadateTime', get_template_directory_uri () . '/js/plugins/pickadate/picker.time.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'legacy', get_template_directory_uri () . '/js/plugins/pickadate/legacy.js', array (
				'jquery' 
		) );
		wp_enqueue_script ( 'main', get_template_directory_uri () . '/js/main.js', array (
				'jquery',
				'jquery-ui-core',
				'jquery-ui-datepicker',
				'jquery-ui-button',
				'jquery-effects-core',
				'jquery-effects-blind',
				'customselect' 
		) );
	}
}

// Load necessary styles on page load
add_action ( 'wp_enqueue_scripts', 'enqueueStyles' );
function enqueueStyles() {
	wp_enqueue_style ( 'bootstrap', get_template_directory_uri () . '/bootstrap/css/bootstrap.min.css' );
	wp_enqueue_style ( 'bootstrap-responsive', get_template_directory_uri () . '/bootstrap/css/bootstrap-responsive.min.css' );
	// wp_enqueue_style('datepicker', 'http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css');
	wp_enqueue_style ( 'pickadateDefault', get_template_directory_uri () . '/js/plugins/pickadate/themes/default.css' );
	wp_enqueue_style ( 'pickdateDefaultDate', get_template_directory_uri () . '/js/plugins/pickadate/themes/default.date.css' );
	wp_enqueue_style ( 'pickadateDefaultTime', get_template_directory_uri () . '/js/plugins/pickadate/themes/default.time.css' );
	wp_enqueue_style ( 'ahLocal', get_template_directory_uri () . '/css/style.css' );
	$ua = getBrowser ();
	if ($ua ['platform'] == "windows") {
		wp_enqueue_style ( 'win', get_template_directory_uri () . '/css/win.css' );
	}
	if ($ua ['platform'] == "mac") {
		wp_enqueue_style ( 'mac', get_template_directory_uri () . '/css/mac.css' );
	}
	if ($ua ['name'] == "Internet Explorer") {
		wp_enqueue_style ( 'msie', get_template_directory_uri () . '/css/msie.css' );
	}
	if ($ua ['name'] == "Mozilla Firefox") {
		wp_enqueue_style ( 'ff', get_template_directory_uri () . '/css/ff.css' );
	}
	if ($ua ['name'] == "Google Chrome") {
		wp_enqueue_style ( 'chrome', get_template_directory_uri () . '/css/chrome.css' );
	}
	if ($ua ['name'] == "Apple Safari") {
		wp_enqueue_style ( 'safari', get_template_directory_uri () . '/css/safari.css' );
	}
	
	// wp_enqueue_style('fonts', get_template_directory_uri() . '/MyFontsWebfontsOrderM4523650.css');
	// TODO: REMOVE ON PROD
	// wp_enqueue_style('bsLocal', 'http://josie-pc/wp-content/themes/alisonHarper/bootstrap/css/bootstrap.min.css');
	// wp_enqueue_style('baResponsiveLocal', 'http://josie-pc/wp-content/themes/alisonHarper/bootstrap/css/bootstrap-responsive.min.css');
	// wp_enqueue_style('ahLocal', 'http://josie-pc/wp-content/themes/alisonHarper/style.css');
	
	// TODO: REMOVE ON PROD
	// uncomment the following for device development, comment it for local
	
	// wp_enqueue_style('bsLocal', 'http://kparks/wp-content/themes/alisonHarper/bootstrap/css/bootstrap.min.css');
	// wp_enqueue_style('baResponsiveLocal', 'http://kparks/wp-content/themes/alisonHarper/bootstrap/css/bootstrap-responsive.min.css');
	// wp_enqueue_style('ahLocal', 'http://kparks/wp-content/themes/alisonHarper/style.css');
}
function getBrowser() {
	$u_agent = $_SERVER ['HTTP_USER_AGENT'];
	$bname = 'Unknown';
	$platform = 'Unknown';
	$version = "";
	
	// First get the platform?
	if (preg_match ( '/linux/i', $u_agent )) {
		$platform = 'linux';
	} elseif (preg_match ( '/macintosh|mac os x/i', $u_agent )) {
		$platform = 'mac';
	} elseif (preg_match ( '/windows|win32/i', $u_agent )) {
		$platform = 'windows';
	}
	// Next get the name of the useragent yes seperately and for good reason
	if (preg_match ( '/MSIE/i', $u_agent ) && ! preg_match ( '/Opera/i', $u_agent ) || preg_match ( '/Trident/i', $u_agent )) {
		$bname = 'Internet Explorer';
		$ub = "MSIE";
	} elseif (preg_match ( '/Firefox/i', $u_agent )) {
		$bname = 'Mozilla Firefox';
		$ub = "Firefox";
	} elseif (preg_match ( '/Chrome/i', $u_agent )) {
		$bname = 'Google Chrome';
		$ub = "Chrome";
	} elseif (preg_match ( '/Safari/i', $u_agent )) {
		$bname = 'Apple Safari';
		$ub = "Safari";
	} elseif (preg_match ( '/Opera/i', $u_agent )) {
		$bname = 'Opera';
		$ub = "Opera";
	} elseif (preg_match ( '/Netscape/i', $u_agent )) {
		$bname = 'Netscape';
		$ub = "Netscape";
	}
	
	// finally get the correct version number
	if($ub){
		$known = array (
				'Version',
				$ub,
				'other' 
		);
		$pattern = '#(?<browser>' . join ( '|', $known ) . ')[/ ]+(?<version>[0-9.|a-zA-Z.]*)#';
		if (! preg_match_all ( $pattern, $u_agent, $matches )) {
			// we have no matching number just continue
		}
		
		// see how many we have
		$i = count ( $matches ['browser'] );
		if ($i != 1) {
			// we will have two since we are not using 'other' argument yet
			// see if version is before or after the name
			if (strripos ( $u_agent, "Version" ) < strripos ( $u_agent, $ub )) {
				if (sizeof ( $matches ['version'] ) > 0) {
					$version = $matches ['version'] [0];
				}
			} else {
				if (sizeof ( $matches ['version'] ) > 1) {
					$version = $matches ['version'] [1];
				}
			}
		} else {
			
			if (sizeof ( $matches ['version'] ) > 0) {
				$version = $matches ['version'] [0];
			}
		}
		
		// check if we have a number
		if ($version == null || $version == "") {
			$version = "?";
		}
	}
	return array (
			'userAgent' => $u_agent,
			'name' => $bname,
			'version' => $version,
			'platform' => $platform,
			'pattern' => $pattern 
	);
}

add_image_size ( 'featured', 400, 900 );
if (function_exists ( 'register_sidebar' )) {
	register_sidebar ( array (
			'name' => 'Pinterest Widget Area',
			'id' => 'pinterestWidgetArea',
			'description' => 'Place the Pinterest RSS feed plugin here',
			'before_widget' => '<div id="one" class="two">',
			'after_widget' => '</div>',
			'before_title' => '<h2>',
			'after_title' => '</h2>' 
	) );
}

// This adds more user contact methods to the admin page
add_filter ( 'user_contactmethods', 'customContactMethods' );
function customContactMethods($user_contactmethods) {
	$user_contactmethods ['phone'] = 'Phone Number';
	$user_contactmethods ['facebook'] = 'Facebook Username';
	$user_contactmethods ['twitter'] = 'Twitter Username';
	$user_contactmethods ['pinterest'] = 'Pinterest Username';
	$user_contactmethods ['youtube'] = 'YouTube Username';
	$user_contactmethods ['instagram'] = 'Instagram Username';
	$user_contactmethods ['gplus'] = 'Google+ URL';
	
	return $user_contactmethods;
}

// This hides the admin bar, always
add_filter ( 'show_admin_bar', '__return_false' );
function getCurrentCity($property) {
	global $currentLocation;
	if($currentLocation){
		if ($property) {
			return $currentLocation->$property;
		} else {
			return $currentLocation;
		}
	}
	$ignoreIds = array ();
	$ignoreIds [] = LOCATION_ROOT_ID;
	$regions = get_categories ( array (
			'child_of' => LOCATION_ROOT_ID,
			'parent' => LOCATION_ROOT_ID,
			'hide_empty' => 0 
	) );
	foreach ( $regions as $region ) {
		$ignoreIds [] = $region->cat_ID;
	}
	$cats = get_the_category ();
	foreach ( $cats as $category ) {
		if (! in_array ( $category->cat_ID, $ignoreIds ) && cat_is_ancestor_of ( LOCATION_ROOT_ID, $category->cat_ID )) {
			$currentLocation = $category;
			if ($property) {
				return $category->$property;
			} else {
				return $category;
			}
		}
	}
	return "";
}
function getAllLocationPageIds() {
	$ids = array ();
	$regionPages = get_posts ( 'numberposts=-1&category=' . LOCATION_ROOT_ID . '&orderby=title&order=ASC&post_type=page' );
	foreach ( $regionPages as $page ) {
		$ids [] = $page->ID;
	}
	return $ids;
}
function cmpCats($a, $b) {
	return $a->name > $b->name;
}
function getLocations() {
	$allLocations = array ();
	$regions = get_categories ( array (
			'child_of' => LOCATION_ROOT_ID,
			'parent' => LOCATION_ROOT_ID,
			'hide_empty' => 0 
	) );
	
	// It's really stupid that I couldn't get the parameters on get_categories to work. TODO: fix
	uasort ( $regions, 'cmpCats' );
	
	foreach ( $regions as $region ) {
		$cities = array ();
		$currentRegionId = $region->cat_ID;
		$cityPages = get_posts ( 'numberposts=-1&category=' . $currentRegionId . '&orderby=title&order=ASC&post_type=page' );
		
		// get the region page and check that it's not in draft
		foreach ( $cityPages as $page ) {
			if (in_category ( LOCATION_ROOT_ID, $page ) && in_category ( $currentRegionId, $page )) {
				$city = null;
				$city->url = get_page_link ( $page->ID );
				$city->name = $page->post_title;
				$cities [] = $city;
			}
		}
		if (count ( $cities ) > 0) {
			$newRegion = null;
			$newRegion->name = $region->name;
			$newRegion->cities = $cities;
			$allLocations [] = $newRegion;
		}
	}
	return $allLocations;
}
function getCityHomePage($cityId = "") {
	if (! $cityId) {
		$cityId = getCurrentCity ( "cat_ID" );
	}
	
	$locationPages = get_posts ( 'numberposts=-1&category=' . LOCATION_ROOT_ID . '&orderby=title&order=ASC&post_type=page' );
	
	foreach ( $locationPages as $page ) {
		if (in_category ( ( string ) LOCATION_ROOT_ID, $page ) && in_category ( $cityId, $page )) {
			return $page;
		}
	}
}
function listCityChildrenPages() {
	// Args for home
	$locationHomePage = getCityHomePage ();
	if (! $locationHomePage) {
		return;
	}
	$excludes = '';
	if (getLocationPage ( CAREERS_PAGE_SLUG )) {
		$excludes = getLocationPage ( CAREERS_PAGE_SLUG )->ID;
	}
	$homeArgs = array (
			'title_li' => '',
			'depth' => '1',
			'include' => $locationHomePage->ID 
	);
	$cityArgs = array (
			'title_li' => '',
			'depth' => '1',
			'child_of' => $locationHomePage->ID,
			'exclude' => $excludes 
	);
	$blogArgs = array (
			'title_li' => '',
			'depth' => '1',
			'include' => BLOG_PAGE_ID 
	);
	wp_list_pages ( $homeArgs );
	wp_list_pages ( $cityArgs );
	wp_list_pages ( $blogArgs );
}
function getLocationHomeOpenAnchor() {
	if (getCurrentCity ( "cat_name" )) {
		echo '<a class="brand" href="' . get_page_link ( getCityHomepage ()->ID ) . '">';
	} else {
		echo '<a class="brand" href="' . site_url () . '">';
	}
}
function getLocationPage($slug) {
	if (getCurrentCity ( "cat_name" )) {
		// Get the contact page id
		$cityPage = getCityHomepage ();
		if (! $cityPage) {
			return null;
		}
		// echo "City page found";
		// Set up the objects needed
		$query = new WP_Query ();
		$all_wp_pages = $query->query ( array (
				'post_type' => 'page',
				'nopaging' => true,
				'posts_per_page' => - 1 
		) );
		// Filter through all pages and find Portfolio's children
		$city_children = get_page_children ( $cityPage->ID, $all_wp_pages );
		foreach ( $city_children as $page ) {
			if ($page->post_name == $slug) {
				return $page;
			}
		}
	}
}
function getLocationOpenAnchor($slug, $defaultId) {
	if (getCurrentCity ( "cat_name" )) {
		// Get the contact page id
		$cityPage = getCityHomepage ();
		$query = new WP_Query ();
		$contactPage = $query->query ( array (
				'post_type' => 'page',
				'post_parent' => $cityPage->ID 
		) );
		foreach ( $contactPage as $page ) {
			if ($page->post_name == $slug) {
				
				echo '<a class="uppercase" href="' . get_page_link ( $page->ID ) . '">';
				break;
			} else {
				echo '<a class="uppercase" href="' . get_page_link ( $defaultId ) . '">';
			}
		}
	} else {
		echo '<a class="uppercase" href="' . get_page_link ( $defaultId ) . '">';
	}
}
function isLocationHiring() {
	// customer request: all locations always hiring. See ticket #70
	return true;
	// if location has the category
	$currentCityPage = getCityHomePage ();
	if ($currentCityPage && (in_category ( HIRING_CAT_ID, $currentCityPage->ID ) || in_category ( HIRING_CAT_ID, $currentCityPage->post_parent ))) {
		return true;
	} else {
		return false;
	}
}
function getRecentPosts($numToShow = 3) {
	$sticky = get_option ( 'sticky_posts' );
	$args = array (
			'posts_per_page' => $numToShow,
			'post__in' => $sticky,
			'ignore_sticky_posts' => 1 
	);
	$the_query = new WP_Query ( $args );
	if ($sticky && $sticky [0]) {
		$content = "";
		while ( $the_query->have_posts () ) :
			$the_query->the_post ();
			
			$link = get_permalink ();
			$title = get_the_title ();
			$id = get_the_ID ();
			$thumbnail = get_the_post_thumbnail ( $id, array (
					120,
					120 
			) );
			
			$content .= "<div class='clear miniBlog clearfix'>";
			$content .= "<h3><a href='$link' target='_top'>$title</a></h3>\n";
			$content .= "<p class='blogSnipPic'>" . $thumbnail . "</p>";
			$content .= "<p class='excerpt'>" . get_the_excerpt () . "</p>";
			$content .= "</div>";
		endwhile
		;
		echo $content; // For use as widget
	} else {
		echo "<div>Hello friend! We don't have anything fresh excerpts for you here, but feel free to head over to the <a href='" . get_permalink ( BLOG_PAGE_ID ) . "'>blog</a> to see what's new.";
	}
	wp_reset_query ();
}
function listLocationNav() {
	$currentPage = get_page ( get_the_ID () );
	$rootPage = $currentPage;
	// Args for home
	if (getCityHomePage () && $rootPage->ID == getCityHomePage ()->ID) {
		echo '<aside class="uppercase left noSidebar">&nbsp;';
		echo '<ul>';
		if (getLocationPage ( PORTFOLIO_PAGE_SLUG )) {
			echo '<li class="page_item"><a href="' . get_page_link ( getLocationPage ( PORTFOLIO_PAGE_SLUG )->ID ) . '">View our portfolio</a></li>';
		}
		if (getLocationPage ( CONTACT_PAGE_SLUG )) {
			echo '<li class="page_item"><a href="' . get_page_link ( getLocationPage ( CONTACT_PAGE_SLUG )->ID ) . '">Drop us a note</a></li>';
		}
		if (getLocationPage ( TEAM_PAGE_SLUG )) {
			echo '<li class="page_item"><a href="' . get_page_link ( getLocationPage ( TEAM_PAGE_SLUG )->ID ) . '">Meet the team</a></li>';
		}
		if (isLocationHiring () && getLocationPage ( CAREERS_PAGE_SLUG )) {
			echo '<li class="page_item"><a href="' . get_page_link ( getLocationPage ( CAREERS_PAGE_SLUG )->ID ) . '">We\'re Hiring</a></li>';
		} else {
			echo '<li class="page_item"><a href="' . get_page_link ( CAREERS_PAGE_ID ) . '">We\'re Hiring</a></li>';
		}
	} else if (! getCityHomePage ()) {
		echo '<aside class="uppercase left noSidebar">&nbsp;';
		echo '<ul>';
		if ($currentPage->post_name == CONTACT_PAGE_SLUG) { // contact page is special too
		                                                  // list contact info
			echo '<li><a href="mailto:' . get_userdata ( ADMIN_USER_ID )->user_email . '">' . get_userdata ( ADMIN_USER_ID )->user_email . '</a></li>';
			echo '<li><a class="noLinkStyle" href="tel:' . get_user_meta ( ADMIN_USER_ID, 'phone', true ) . '">' . get_user_meta ( ADMIN_USER_ID, 'phone', true ) . '</a></li>';
		}
	} else {
		// make sure we're at the top level page
		while ( ! in_category ( LOCATION_ROOT_ID, $rootPage->post_parent ) ) {
			$rootPage = get_page ( $rootPage->post_parent );
		}
		if ($currentPage->post_name == SERVICES_PAGE_SLUG || $currentPage->post_name == PORTFOLIO_PAGE_SLUG || $currentPage->post_name == CONTACT_PAGE_SLUG) {
			echo '<aside class="uppercase left noSidebar">&nbsp;';
			echo '<ul>';
		} else {
			echo '<aside class="uppercase left">&nbsp;';
			echo '<ul>';
		}
		if ($currentPage->post_name == CONTACT_PAGE_SLUG) { // contact page is special too
		                                                  // list contact info
			echo '<li><a href="mailto:' . get_userdata ( ADMIN_USER_ID )->user_email . '">' . get_userdata ( ADMIN_USER_ID )->user_email . '</a></li>';
			echo '<li><a class="noLinkStyle" href="tel:' . get_user_meta ( ADMIN_USER_ID, 'phone', true ) . '">' . get_user_meta ( ADMIN_USER_ID, 'phone', true ) . '</a></li>';
		} else {
			$childArgs = array (
					'title_li' => '',
					'depth' => '1',
					'child_of' => $rootPage->ID 
			);
			wp_list_pages ( $childArgs );
		}
	}
	echo '</aside></ul>';
}
function getSlug() {
	global $wp_query;
	$post_obj = $wp_query->get_queried_object ();
	return $post_obj->post_name;
}
function getPortfolioPages() {
	// The Query
	$the_query = new WP_Query ( array (
			'post_type' => 'page',
			'post_parent' => get_the_ID (),
			'posts_per_page' => - 1 
	) );
	$pages = array ();
	// The Loop
	while ( $the_query->have_posts () ) :
		$the_query->the_post ();
		$page = null;
		$page->title = get_the_title ();
		$page->slug = basename ( get_permalink () );
		$page->link = get_permalink ();
		$pages [] = $page;
	endwhile
	;
	
	/*
	 * Restore original Post Data NB: Because we are using new WP_Query we aren't stomping on the original $wp_query and it does not need to be reset.
	 */
	wp_reset_postdata ();
	return $pages;
}
function listTeamMembers() {
	
	// The Query
	$city = getCurrentCity ( "cat_name" );
	$the_query = new WP_Query ( array (
			'post_type' => 'page',
			'post_parent' => TEAM_PAGE_ID,
			'category_name' => $city,
			'posts_per_page' => - 1,
			'orderby' => 'title',
			'order' => 'ASC' 
	) );
	if ($the_query->have_posts ()) {
		echo "<ul class='teamMemberList'>";
		// The Loop
		while ( $the_query->have_posts () ) :
			$the_query->the_post ();
			echo "<li class='teamMemberBio clearfix'>";
			echo "<h4>" . get_the_title () . "</h4>";
			echo the_post_thumbnail ( 'thumbnail' );
			echo do_shortcode ( get_the_content () );
			echo "</li>";
		endwhile
		;
		echo "</ul>";
	} else {
		echo "<p class='comingSoon'>Team bios coming soon!</p>";
	}
	
	/*
	 * Restore original Post Data NB: Because we are using new WP_Query we aren't stomping on the original $wp_query and it does not need to be reset.
	 */
	wp_reset_postdata ();
}