<?php

ini_set('display_errors', 'On');
error_reporting(E_ALL);

add_action('wp_enqueue_scripts', 'enqueueScripts');

function enqueueScripts() {
    // Register the script like this for a theme: 
    wp_enqueue_script('bootstrap', get_template_directory_uri() . '/bootstrap/js/bootstrap.js', array('jquery'));
    wp_enqueue_script('customselect', get_template_directory_uri() . '/js/plugins/customSelect/customSelect.js', array('jquery'));
    wp_enqueue_script('main', get_template_directory_uri() . '/js/main.js', array('jquery', 'jquery-ui-core'));
}

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
    $locationRootId = 2;
    $ignore_ids = array();
    $ignore_ids[] = $locationRootId;
    $regions = get_categories(array('child_of' => $locationRootId, 'parent' => $locationRootId, 'hide_empty' => 0));
    foreach ($regions as $region) {
        $ignore_ids[] = $region->cat_ID;
    }
    foreach ((get_the_category()) as $category) {
        if (!in_array($category->cat_ID, $ignore_ids) && cat_is_ancestor_of($locationRootId, $category->cat_ID)) {
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
    $regionPages = get_posts('numberposts=-1&category=2&orderby=title&order=ASC&post_type=page');
    foreach ($regionPages as $page) {
        $ids[] = $page->ID;
    }
    return $ids;
}

function getLocations() {
    $locationRootId = 2;
    $allLocations = array();
    $regions = get_categories(array('child_of' => $locationRootId, 'parent' => $locationRootId, 'hide_empty' => 0));
    foreach ($regions as $region) {
        $cities = null;
        $cities = array();
        $currentRegionId = $region->cat_ID;
        $locationPages = get_posts('numberposts=-1&category=' . $currentRegionId . '&orderby=title&order=ASC&post_type=page');

        foreach ($locationPages as $page) {
            if (in_category('2', $page) && in_category($currentRegionId, $page)) {
                $city = null;
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
    $locationRootId = 2;
    $locationPages = get_posts('numberposts=-1&category=' . $locationRootId . '&orderby=title&order=ASC&post_type=page');

    foreach ($locationPages as $page) {
        if (in_category((string) $locationRootId, $page) && in_category($cityId, $page)) {
            return $page;
        }
    }
}

function listCityChildrenPages() {
    global $wp_query;
    $blogId = 19;
    $output = "";
    $args = array('title_li' => '', 'depth' => '1');
    $defaults = array(
        'depth' => 0, 'show_date' => '',
        'date_format' => get_option('date_format'),
        'child_of' => 0, 'exclude' => '',
        'title_li' => __('Pages'), 'echo' => 1,
        'authors' => '', 'sort_column' => 'menu_order, post_title',
        'link_before' => '', 'link_after' => '', 'walker' => '',
    );

    $r = wp_parse_args($args, $defaults);
    extract($r, EXTR_SKIP);
    $r['hierarchical'] = 0;
    $locationHomePage = getCityHomePage(getCurrentCity("cat_ID"));

    //add home
    $pages = get_pages(array("include" => $locationHomePage->ID));
    if (is_page() || is_attachment() || $wp_query->is_posts_page)
        $current_page = $wp_query->get_queried_object_id();
    $output .= walk_page_tree($pages, $r['depth'], $current_page, $r);

    //add children pages
    $pages = get_pages(array('child_of' => $locationHomePage->ID));
    $output .= walk_page_tree($pages, $r['depth'], $current_page, $r);
    //add blog
    $pages = get_pages(array("include" => $blogId));
    $output .= walk_page_tree($pages, $r['depth'], $current_page, $r);
    
    $output .= '</ul></li>';
    echo $output;
}