<?php 

add_action( 'wp_enqueue_scripts', 'alisonHarper_enqueue_scripts' ); 
function alisonHarper_enqueue_scripts() { 
    // Register the script like this for a theme: 
    wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/bootstrap/js/bootstrap.js', array( 'jquery' ) ); 
    wp_enqueue_script( 'customselect', get_template_directory_uri() . '/js/plugins/customSelect/customSelect.js', array( 'jquery' ) );  
    wp_enqueue_script( 'main', get_template_directory_uri() . '/js/main.js', array( 'jquery', 'jquery-ui-core') );  
} 
add_action( 'wp_enqueue_scripts', 'alisonHarper_enqueue_styles' );  
function alisonHarper_enqueue_styles()  
{  
    wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/bootstrap/css/bootstrap.min.css');  
	wp_enqueue_style( 'bootstrap-responsive', get_template_directory_uri() . '/bootstrap/css/bootstrap-responsive.min.css'); 
}  
if ( function_exists('register_sidebar') ) {
    register_sidebar(array( 
        'before_widget' => '', 
        'after_widget' => '', 
        'before_title' => '<h3>', 
        'after_title' => '</h3>', 
    ));
}
	
add_filter('user_contactmethods', 'my_user_contactmethods');                 
function my_user_contactmethods($user_contactmethods){  
  
  $user_contactmethods['phone'] = 'Phone Number';  
  $user_contactmethods['facebook'] = 'Facebook Username';  
  $user_contactmethods['twitter'] = 'Twitter Username';  
  $user_contactmethods['pinterest'] = 'Pinterest Username';  
  $user_contactmethods['youtube'] = 'YouTube Username';  
  
  return $user_contactmethods;  
}  
add_filter('show_admin_bar', '__return_false'); 

function get_current_location(){ 
	$locations_cat_id = 2;
	$ignore_ids = array();
	$ignore_ids[] = $locations_cat_id;
	$cats = get_categories( array( 'child_of'=>$locations_cat_id, 'parent'=>$locations_cat_id, 'hide_empty'=>0 ) ); 
	foreach($cats as $c){
		$ignore_ids[] = $c->cat_ID; 
	}
	
	foreach((get_the_category()) as $category) {
		if ( !in_array($category->cat_ID, $ignore_ids) && cat_is_ancestor_of( $locations_cat_id, $category->cat_ID )) {
			return $category->cat_name;
		}
	}
	return "";
}
function get_current_locationID(){ 
	$locations_cat_id = 2;
	$ignore_ids = array();
	$ignore_ids[] = $locations_cat_id;
	$cats = get_categories( array( 'child_of'=>$locations_cat_id, 'parent'=>$locations_cat_id, 'hide_empty'=>0 ) ); 
	foreach($cats as $c){
		$ignore_ids[] = $c->cat_ID; 
	}
	
	foreach((get_the_category()) as $category) {
		if ( !in_array($category->cat_ID, $ignore_ids) && cat_is_ancestor_of( $locations_cat_id, $category->cat_ID )) {
			return $category->cat_ID;
		}
	}
	return "";
}
function get_all_location_page_ids(){
	$regions = get_categories( array( 'child_of'=>2, 'parent'=>2, 'hide_empty'=>0 ) ); 
	$ids = array();
	
	$regionPages = get_posts('numberposts=-1&category=2&orderby=title&order=ASC&post_type=page');
	foreach( $regionPages as $page ) {
		$ids[] = $page->ID;
	}
	return $ids;
}
function get_locations(){
	$all_locations = array();
	$regions = get_categories( array( 'child_of'=>2, 'parent'=>2, 'hide_empty'=>0 ) ); 
	foreach($regions as $r) {
		$locs = null;
		$locs = array();
		$currentLocationId = $r->cat_ID;
		$locationPages = get_posts('numberposts=-1&category=' . $currentLocationId . '&orderby=title&order=ASC&post_type=page');
		
		foreach( $locationPages as $page ) {
			if(in_category('2', $page) && in_category( $currentLocationId, $page) ) {
				$l = null;
				$l->url = get_page_link( $page->ID );
				$l->name = $page->post_title;
				$locs[] = $l;
			}
		}
		$region = null;
		$region->name = $r->name;
		$region->locations = $locs;
		$all_locations[] = $region;
	}
	return $all_locations;
}
function get_location_page($location_cat_id){
	$locationPages = get_posts('numberposts=-1&category=' . 2 . '&orderby=title&order=ASC&post_type=page');
	
	foreach( $locationPages as $page ) {
		if(in_category('2', $page) && in_category( $location_cat_id, $page) ) {
			return $page;
		}
	}
}
function list_location_pages(){
	$locationHomePage = get_location_page(get_current_locationID());
	//add home
	//add children pages
	$locationChildrenPages = get_pages( array( 'child_of' => $locationHomePage->ID));
	foreach($locationChildrenPages as $p){
	}
	//add blog
	echo "WORK IN PROGRESS";
}

?>