</div>
<footer class="gradient clearfix">
    <section class="left">
        <ul>
            <li><?php echo getLocationOpenAnchor(CAREERS_PAGE_SLUG, CAREERS_PAGE_ID); ?>Career Opportunities</a></li>
            <li><?php echo getLocationOpenAnchor(CONTACT_PAGE_SLUG, CONTACT_PAGE_ID); ?>Contact Us</a></li>
            
            <li><div class="uppercase" id="subscribeNewsletter">Subscribe to our newsletter:</div></li>
            <li><a href="mailto:<?php $admin = get_userdata(ADMIN_USER_ID); echo $admin->user_email ?>"><?php $admin = get_userdata(ADMIN_USER_ID); echo $admin->user_email ?></a></li>
            <li><a class="noLinkStyle" href="tel:<?php echo get_user_meta(ADMIN_USER_ID, 'phone', true); ?>"><?php echo get_user_meta(ADMIN_USER_ID, 'phone', true); ?></a></li>
        </ul>
       
    </section>
    <section class="right">
        <ul>
            <li class="locationSelect"><select name="page-dropdown"
                        onchange='if(this.options[this.selectedIndex].value != "")document.location.href=this.options[this.selectedIndex].value;'> 
                    <option value=""><?php echo esc_attr(__('Select location')); ?></option> 
                    <?php
                    $regions = getLocations();
                    foreach ($regions as $r) {
                        echo '<option value="" class="disabled" disabled="disabled">' . esc_attr(__($r->name)) . '</option> ';
                        foreach ($r->cities as $l) {
                            $option = '<option class="indent" value="' . $l->url . '">';
                            $option .= $l->name;
                            $option .= '</option>';
                            echo $option;
                        }
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