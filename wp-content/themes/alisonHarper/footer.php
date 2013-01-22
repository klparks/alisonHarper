      <footer>
		<section class="left">
			<ul>
				<li><a class="uppercase" href="<?php echo get_page_link(81); ?>">Career Opportunities</a></li>
				<li><a class="uppercase" href="<?php echo get_page_link(16); ?>">Contact Us</a></li>
				<li><ul class="socialMedia">
					<li><a target="_blank" href="http://facebook.com/<?php echo get_user_meta(1, 'facebook', true); ?>" class="facebook" title="Follow <?php echo get_user_meta(1, 'facebook', true); ?> on Facebook"><img src="/wp-content/themes/alisonHarper/images/facebook.png" alt="Follow <?php echo get_user_meta(1, 'facebook', true); ?> on Facebook"/></a></li>
					<li><a target="_blank" href="https://twitter.com/intent/follow?screen_name=<?php echo get_user_meta(1, 'twitter', true); ?>" class="twitter" title="Follow @<?php echo get_user_meta(1, 'twitter', true); ?> on Twitter"><img src="/wp-content/themes/alisonHarper/images/twitter.png" alt="Follow @<?php echo get_user_meta(1, 'twitter', true); ?> on Twitter"/></a></li>
					<li><a target="_blank" href="http://pinterest.com/<?php echo get_user_meta(1, 'pinterest', true); ?>" class="pinterest" title="Follow <?php echo get_user_meta(1, 'pinterest', true); ?> on Pinterest"><img src="/wp-content/themes/alisonHarper/images/pinterest.png" alt="Follow <?php echo get_user_meta(1, 'pinterest', true); ?> on Pinterest"/></a></li>
					<li><a target="_blank" href="http://www.youtube.com/subscription_center?add_user=<?php echo get_user_meta(1, 'youtube', true); ?>" class="youtube" title="Subscribe to <?php echo get_user_meta(1, 'youtube', true); ?> on YouTube"><img src="/wp-content/themes/alisonHarper/images/youTube.png" alt="Subscribe <?php echo get_user_meta(1, 'youtube', true); ?> on YouTube"/></a></li>
				</ul>
				<li><div class="uppercase" id="subscribeNewsletter">Subscribe to our newsletter:</div></li>
				<li><a href="mailto:<?php $admin = get_userdata(1); echo $admin->user_email?>"><?php $admin = get_userdata(1); echo $admin->user_email?></a></li>
				<li><a class="noLinkStyle" href="tel:<?php echo get_user_meta(1, 'phone', true); ?>"><?php echo get_user_meta(1, 'phone', true); ?></a></li>
			</ul>
		</section>
		<section class="right">
			<ul>
				<li><select class="customSelect" name="page-dropdown"
						onchange='if(this.options[this.selectedIndex].value != "")document.location.href=this.options[this.selectedIndex].value;'> 
					 <option value=""><?php echo esc_attr( __( 'Select location' ) ); ?></option> 
					 <?php 
					  $pages = get_pages(array('child_of' => 12, 'parent' => 12)); 
					  foreach ( $pages as $page ) {
						$option = '<option class="uppercase" value="' . get_page_link( $page->ID ) . '">';
						$option .= $page->post_title;
						$option .= '</option>';
						echo $option;
					  }
					 ?>
					 <?php 
						$categories = get_categories( array( 'child_of'=>2, 'parent'=>2, 'hide_empty'=>0 ) ); 
						foreach($categories as $category) {
							echo '<option value="" class="uppercase disabled" disabled="disabled">' . esc_attr( __( $category->name ) ) . '</option> ';
							$currentLocationId = $category->cat_ID;
							$locationPages = get_posts('numberposts=-1&category=' . $currentLocationId . '&orderby=title&order=ASC&post_type=page');
							foreach( $locationPages as $page ) {
								if(in_category('2', $page) && in_category( $currentLocationId, $page) ) {
									$option = '<option class="uppercase indent" value="' . get_page_link( $page->ID ) . '">';
									$option .= $page->post_title;
									$option .= '</option>';
									echo $option;
								}
							}
							echo $list;
						}
					?>
				</select></li>
				<li>All images and materials Copyright &copy; 2013</li>
				<li>Alison Harper and Company, LLC. All Rights Reserved</li>
				<li>Web design by <a href="http://elevenpeppers.com">eleven peppers studios</a></li>
		</section>
      </footer>

    </div> <!-- /container -->
    <?php wp_footer(); ?>
  </body>
</html>