<?php 

function wpbootstrap_scripts_with_jquery() { 
    // Register the script like this for a theme: 
    wp_register_script( 'bootstrap', get_template_directory_uri() . '/bootstrap/js/bootstrap.js', array( 'jquery' ) ); 
    // For either a plugin or a theme, you can then enqueue the script: 
    wp_enqueue_script( 'bootstrap' ); 
} 
add_action( 'wp_enqueue_scripts', 'wpbootstrap_scripts_with_jquery' ); 
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

?>