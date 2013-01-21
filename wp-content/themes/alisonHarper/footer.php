      <footer>
		<section class="left">
			<ul>
				<li><a class="uppercase" href="<?php echo get_page_link(81); ?>">Career Opportunities</a></li>
				<li><a class="uppercase" href="<?php echo get_page_link(16); ?>">Contact Us</a></li>
				<li><ul class="socialMedia">
					<li><a target="_blank" href="http://facebook.com/<?php echo get_user_meta(1, 'facebook', true); ?>" class="facebook" title="Follow <?php echo get_user_meta(1, 'facebook', true); ?> on Facebook"><img src="#" alt="Follow <?php echo get_user_meta(1, 'facebook', true); ?> on Facebook"/></a></li>
					<li><a target="_blank" href="https://twitter.com/intent/follow?screen_name=<?php echo get_user_meta(1, 'twitter', true); ?>" class="twitter" title="Follow @<?php echo get_user_meta(1, 'twitter', true); ?> on Twitter"><img src="#" alt="Follow @<?php echo get_user_meta(1, 'twitter', true); ?> on Twitter"/></a></li>
					<li><a target="_blank" href="http://pinterest.com/<?php echo get_user_meta(1, 'pinterest', true); ?>" class="pinterest" title="Follow <?php echo get_user_meta(1, 'pinterest', true); ?> on Pinterest"><img src="#" alt="Follow <?php echo get_user_meta(1, 'pinterest', true); ?> on Pinterest"/></a></li>
					<li><a target="_blank" href="http://www.youtube.com/subscription_center?add_user=<?php echo get_user_meta(1, 'youtube', true); ?>" class="youtube" title="Subscribe to <?php echo get_user_meta(1, 'youtube', true); ?> on YouTube"><img src="#" alt="Subscribe <?php echo get_user_meta(1, 'youtube', true); ?> on YouTube"/></a></li>
				</ul>
				<li><div class="uppercase" id="subscribeNewsletter">Subscribe to our newsletter:</div></li>
				<li><a href="mailto:<?php $admin = get_userdata(1); echo $admin->user_email?>"><?php $admin = get_userdata(1); echo $admin->user_email?></a></li>
				<li><a class="noLinkStyle" href="tel:<?php echo get_user_meta(1, 'phone', true); ?>"><?php echo get_user_meta(1, 'phone', true); ?></a></li>
			</ul>
		</section>
		<section class="right">
			<ul>
				<li><select name="page-dropdown"
						onchange='document.location.href=this.options[this.selectedIndex].value;'> 
					 <option value="">
					<?php echo esc_attr( __( 'Select location' ) ); ?></option> 
					 <?php 
					  $pages = get_pages(array('child_of' => 12, 'parent' => 12)); 
					  foreach ( $pages as $page ) {
						$option = '<option class="uppercase" value="' . get_page_link( $page->ID ) . '">';
						$option .= $page->post_title;
						$option .= '</option>';
						echo $option;
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