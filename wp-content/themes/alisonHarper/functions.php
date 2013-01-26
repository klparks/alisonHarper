<?php

ini_set('display_errors', 'On');
error_reporting(E_ALL);

//Constants to use throughout the application
define("LOCATION_ROOT_ID", "2");
define("BLOG_PAGE_ID", "19");
define("CONTACT_PAGE_ID", "16");
define("CAREERS_PAGE_ID", "81");
define("ADMIN_USER_ID", "1");
define("CONTACT_PAGE_SLUG", "contact-us");
define("CAREERS_PAGE_SLUG", "careers");

//Load necessary scripts on page load
add_action('wp_enqueue_scripts', 'enqueueScripts');
function enqueueScripts() {
    // Register the script like this for a theme: 
    wp_enqueue_script('bootstrap', get_template_directory_uri() . '/bootstrap/js/bootstrap.js', array('jquery'));
    wp_enqueue_script('customselect', get_template_directory_uri() . '/js/plugins/customSelect/customSelect.js', array('jquery'));
    wp_enqueue_script('main', get_template_directory_uri() . '/js/main.js', array('jquery', 'jquery-ui-core'));
}

//Load necessary styles on page load
add_action('wp_enqueue_scripts', 'enqueueStyles');
function enqueueStyles() {
    wp_enqueue_style('bootstrap', get_template_directory_uri() . '/bootstrap/css/bootstrap.min.css');
    wp_enqueue_style('bootstrap-responsive', get_template_directory_uri() . '/bootstrap/css/bootstrap-responsive.min.css');
}

if (function_exists('register_sidebar')) {
    register_sidebar(array(
        'before_widget' => '',
        'after_widget' => '',
        'before_title' => '<h3>',
        'after_title' => '</h3>',
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
    $ignore_ids = array();
    $ignore_ids[] = LOCATION_ROOT_ID;
    $regions = get_categories(array('child_of' => LOCATION_ROOT_ID, 'parent' =>LOCATION_ROOT_ID, 'hide_empty' => 0));
    foreach ($regions as $region) {
        $ignore_ids[] = $region->cat_ID;
    }
    foreach ((get_the_category()) as $category) {
        if (!in_array($category->cat_ID, $ignore_ids) && cat_is_ancestor_of(LOCATION_ROOT_ID, $category->cat_ID)) {
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

function getCityHomePage($cityId) {
    $locationPages = get_posts('numberposts=-1&category=' . LOCATION_ROOT_ID . '&orderby=title&order=ASC&post_type=page');

    foreach ($locationPages as $page) {
        if (in_category((string) LOCATION_ROOT_ID, $page) && in_category($cityId, $page)) {
            return $page;
        }
    }
}

function listCityChildrenPages() {
    //Args for home
    $locationHomePage = getCityHomePage(getCurrentCity("cat_ID"));
    $homeArgs = array('title_li' =>'', 'depth' => '1', 'include'=>$locationHomePage->ID);
    $cityArgs = array('title_li' =>'', 'depth' => '1', 'child_of'=>$locationHomePage->ID);
    $blogArgs = array('title_li' =>'', 'depth' => '1', 'include'=>BLOG_PAGE_ID);
    wp_list_pages($homeArgs);
    wp_list_pages($cityArgs);
    wp_list_pages($blogArgs);
}
function getLocationHomeOpenAnchor(){
    if(getCurrentCity("cat_name")){
        echo '<a class="brand" href="' . get_page_link(getCityHomepage(getCurrentCity("cat_ID"))->ID) . '">';
    } else {
        echo '<a class="brand" href="' . site_url() . '">';
    }
}
function getLocationOpenAnchor($slug, $defaultId){
    if(getCurrentCity("cat_name")){
    //Get the contact page id
        $cityPage = getCityHomepage(getCurrentCity("cat_ID"));
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