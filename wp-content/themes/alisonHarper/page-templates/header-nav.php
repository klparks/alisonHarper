<nav class="nav-collapse collapse clear">
    <ul class="nav uppercase">
        <?php
        //If we're on a location, list the child pages
        if (getCurrentCity("cat_name")) {
            listCityChildrenPages();
        } else {//Otherwise link to the global pages
            $exclude = getAllLocationPageIds();
            wp_list_pages(array('title_li' => '', 'exclude' => implode(',', $exclude), 'depth' => '1'));
        }
        ?>
    </ul>
</nav>