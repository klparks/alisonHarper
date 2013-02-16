<?php

ini_set('display_errors', 'On');
error_reporting(E_ALL);

//Constants to use throughout the application
//User Ids
define("ADMIN_USER_ID", "1");
//Category Ids
define("HIRING_CAT_ID", "19");
define("LOCATION_ROOT_ID", "2");
define("NEW_CAT_ID", "18");
//Page Ids
define("BLOG_PAGE_ID", "19");
define("CAREERS_PAGE_ID", "81");
define("CONTACT_PAGE_ID", "16");
define("PORTFOLIO_PAGE_ID", "81");
define("TEAM_PAGE_ID", "81");
//Page Slugs
define("CAREERS_PAGE_SLUG", "careers");
define("CONTACT_PAGE_SLUG", "contact-us");
define("PORTFOLIO_PAGE_SLUG", "portfolio");
define("TEAM_PAGE_SLUG", "careers");

 add_theme_support( 'post-thumbnails' );
 
//Load necessary scripts on page load
add_action('wp_enqueue_scripts', 'enqueueScripts');
function enqueueScripts() {
    // Register the script like this for a theme:
    wp_enqueue_script('bootstrap', get_template_directory_uri() . '/bootstrap/js/bootstrap.js', array('jquery'));
    wp_enqueue_script('customselect', get_template_directory_uri() . '/js/plugins/customSelect/customSelect.js', array('jquery'));
    wp_enqueue_script('main', get_template_directory_uri() . '/js/main.js', array('jquery', 'jquery-ui-core')); 
    //TODO: REMOVE ON PROD
//    wp_enqueue_script('bsLocalJs', 'http://josie-pc/wp-content/themes/alisonHarper/bootstrap/js/bootstrap.js', array('jquery'));
//    wp_enqueue_script('csLocalJs', 'http://josie-pc/wp-content/themes/alisonHarper/js/plugins/customSelect/customSelect.js', array('jquery'));
//    wp_enqueue_script('mainLocalJs', 'http://josie-pc/wp-content/themes/alisonHarper/js/main.js', array('jquery', 'jquery-ui-core')); 

	//TODO: REMOVE ON PROD
	//uncomment the following for device development, comment it for local
	
    /*wp_enqueue_script('bsLocalJs','http://kparks/wp-content/themes/alisonHarper/bootstrap/js/bootstrap.js', array('jquery'));
    wp_enqueue_script('csLocalJs','http://kparks/wp-content/themes/alisonHarper/js/plugins/customSelect/customSelect.js', array('jquery'));
    wp_enqueue_script('mainLocalJs', 'http://kparks/wp-content/themes/alisonHarper/js/main.js', array('jquery', 'jquery-ui-core')); 
*/
}

//Load necessary styles on page load
add_action('wp_enqueue_scripts', 'enqueueStyles');
function enqueueStyles() {
    wp_enqueue_style('bootstrap', get_template_directory_uri() . '/bootstrap/css/bootstrap.min.css');
    wp_enqueue_style('bootstrap-responsive', get_template_directory_uri() . '/bootstrap/css/bootstrap-responsive.min.css');
    //TODO: REMOVE ON PROD
//    wp_enqueue_style('bsLocal', 'http://josie-pc/wp-content/themes/alisonHarper/bootstrap/css/bootstrap.min.css');
//    wp_enqueue_style('baResponsiveLocal', 'http://josie-pc/wp-content/themes/alisonHarper/bootstrap/css/bootstrap-responsive.min.css');
//    wp_enqueue_style('ahLocal', 'http://josie-pc/wp-content/themes/alisonHarper/style.css');

	//TODO: REMOVE ON PROD
    //uncomment the following for device development, comment it for local
	
	/*wp_enqueue_style('bsLocal', 'http://kparks/wp-content/themes/alisonHarper/bootstrap/css/bootstrap.min.css');
    wp_enqueue_style('baResponsiveLocal', 'http://kparks/wp-content/themes/alisonHarper/bootstrap/css/bootstrap-responsive.min.css');
    wp_enqueue_style('ahLocal', 'http://kparks/wp-content/themes/alisonHarper/style.css');
*/
}

if (function_exists('register_sidebar')) {
    register_sidebar(array(
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '<h3>',
        'after_title' => '</h3>',
    ));
    register_sidebar(array(
        'name' => 'City Homepage Featured Blog Posts',
        'id'=>"city-home-featured",
        'description' => 'This is where featured blog posts are chosen',
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget'  => '</div>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));
}

//This adds more user contact methods to the admin page
add_filter('user_contactmethods', 'coustomContactMethods');

function customContactMethods($user_contactmethods) {

    $user_contactmethods['phone'] = 'Phone Number';
    $user_contactmethods['facebook'] = 'Facebook Username';
    $user_contactmethods['twitter'] = 'Twitter Username';
    $user_contactmethods['pinterest'] = 'Pinterest Username';
    $user_contactmethods['youtube'] = 'YouTube Username';

    return $user_contactmethods;
}

//This hides the admin bar, always
add_filter('show_admin_bar', '__return_false');

function getCurrentCity($property) {
    $ignoreIds = array();
    $ignoreIds[] = LOCATION_ROOT_ID;
    $regions = get_categories(array('child_of' => LOCATION_ROOT_ID, 'parent' =>LOCATION_ROOT_ID, 'hide_empty' => 0));
    foreach ($regions as $region) {
        $ignoreIds[] = $region->cat_ID;
    }
    foreach ((get_the_category()) as $category) {
        if (!in_array($category->cat_ID, $ignoreIds) && cat_is_ancestor_of(LOCATION_ROOT_ID, $category->cat_ID)) {
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
    $ids = array();
    $regionPages = get_posts('numberposts=-1&category=' . LOCATION_ROOT_ID . '&orderby=title&order=ASC&post_type=page');
    foreach ($regionPages as $page) {
        $ids[] = $page->ID;
    }
    return $ids;
}

function getLocations() {
    $allLocations = array();
    $regions = get_categories(array('child_of' => LOCATION_ROOT_ID, 'parent' => LOCATION_ROOT_ID, 'hide_empty' => 0));
    foreach ($regions as $region) {
        $cities = array();
        $currentRegionId = $region->cat_ID;
        $cityPages = get_posts('numberposts=-1&category=' . $currentRegionId . '&orderby=title&order=ASC&post_type=page');

        foreach ($cityPages as $page) {
            if (in_category(LOCATION_ROOT_ID, $page) && in_category($currentRegionId, $page)) {
                $city->url = get_page_link($page->ID);
                $city->name = $page->post_title;
                $cities[] = $city;
            }
        }
        $newRegion = null;
        $newRegion->name = $region->name;
        $newRegion->cities = $cities;
        $allLocations[] = $newRegion;
    }
    return $allLocations;
}

function getCityHomePage($cityId = "") {
    if(!$cityId){
        $cityId = getCurrentCity("cat_ID");
    }
    $locationPages = get_posts('numberposts=-1&category=' . LOCATION_ROOT_ID . '&orderby=title&order=ASC&post_type=page');

    foreach ($locationPages as $page) {
        if (in_category((string) LOCATION_ROOT_ID, $page) && in_category($cityId, $page)) {
            return $page;
        }
    }
}

function listCityChildrenPages() {
    //Args for home
    $locationHomePage = getCityHomePage();
    $homeArgs = array('title_li' =>'', 'depth' => '1', 'include'=>$locationHomePage->ID);
    $cityArgs = array('title_li' =>'', 'depth' => '1', 'child_of'=>$locationHomePage->ID);
    $blogArgs = array('title_li' =>'', 'depth' => '1', 'include'=>BLOG_PAGE_ID);
    wp_list_pages($homeArgs);
    wp_list_pages($cityArgs);
    wp_list_pages($blogArgs);
}
function getLocationHomeOpenAnchor(){
    if(getCurrentCity("cat_name")){
        echo '<a class="brand" href="' . get_page_link(getCityHomepage()->ID) . '">';
    } else {
        echo '<a class="brand" href="' . site_url() . '">';
    }
}
function getLocationOpenAnchor($slug, $defaultId){
    if(getCurrentCity("cat_name")){
    //Get the contact page id
        $cityPage = getCityHomepage();
        $query = new WP_Query();
        $contactPage = $query->query(array('post_type'=>'page', 'post_parent' =>$cityPage->ID));
        foreach ($contactPage as $page){
            if($page->post_name == $slug){
                echo '<a class="uppercase" href="' . get_page_link($page->ID) . '">';
                break;
            } else {
                echo '<a class="uppercase" href="' . get_page_link($defaultId) . '">';
            }
        }
    } else {
        echo '<a class="uppercase" href="' . get_page_link($defaultId) . '">';
    }
}
function isLocationHiring(){
    //if location has the category
    $currentCityPage = getCityHomePage();
    if(in_category(HIRING_CAT_ID, $currentCityPage->ID) || in_category(HIRING_CAT_ID, $currentCityPage->post_parent)){
        return true;
    } else {
        return false;
    }
}
function getRecentPosts($numToShow = 3)
{
    $args = array( "showposts" => $numToShow, "post__in"=>get_option('sticky_posts') );                  
    query_posts($args);

    $content = "";

    if( have_posts() ) : 

        while( have_posts() ) :

            the_post();
            $link = get_permalink();
            $title = get_the_title();
            $id = get_the_ID();
            $thumbnail = get_the_post_thumbnail($id, array(120,120) );
            
            $content .= "<div class='clear'>";
            $content .= "<h3><a href='$link' target='_top'>$title</a></h3>\n";
            $content .= "<p class='blogSnipPic'>" . $thumbnail . "</p>";
            $content .= "<p class='excerpt'>" . get_the_excerpt() . "</p>";
            $content .= "</div>";

        endwhile;

        wp_reset_query();

    endif;
    echo $content;   // For use as widget
}