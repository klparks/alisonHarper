<footer class="gradient clearfix">
    <section class="left">
        <nav class="topHomeNav desktop-hidden socialMedia">
            <ul>
                <?php get_template_part("page-templates/header", "socialMedia"); ?>
            </ul>
        </nav>
        <ul>
            <li class="locationSelect desktop-hidden"><div class="splashCenter"><?php get_template_part("page-templates/footer", "select"); ?></div></li>
            <li><?php echo getLocationOpenAnchor(CAREERS_PAGE_SLUG, CAREERS_PAGE_ID); ?>Career Opportunities</a></li>
            <li><?php echo getLocationOpenAnchor(CONTACT_PAGE_SLUG, CONTACT_PAGE_ID); ?>Contact Us</a></li>

            <!--            <li><div class="uppercase" id="subscribeNewsletter">Subscribe to our newsletter:</div></li>-->
            <li><a href="mailto:<?php $admin = get_userdata(ADMIN_USER_ID);
                echo $admin->user_email ?>"><?php $admin = get_userdata(ADMIN_USER_ID);
                echo $admin->user_email ?></a></li>
            <li><a href="tel:301-477-2170" class="noLinkStyle" href="tel:<?php echo get_user_meta(ADMIN_USER_ID, 'phone', true); ?>"><?php echo get_user_meta(ADMIN_USER_ID, 'phone', true); ?></a></li>
        </ul>

    </section>
    <section class="right mobile-hidden">
        <ul>
            <li class="locationSelect"><?php get_template_part("page-templates/footer", "select"); ?></li>
            <li>All images and materials Copyright &copy; 2013</li>
            <li>Web design by eleven peppers studios</li>
            <li>All Rights Reserved</li>
        </ul>
    </section>
</footer>

<?php wp_footer(); ?>
</body>
</html>