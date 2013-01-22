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
if ( function_exists('register_sidebar') ) 
    register_sidebar(array( 
        'before_widget' => '', 
        'after_widget' => '', 
        'before_title' => '<h3>', 
        'after_title' => '</h3>', 
    ));
	
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

?>