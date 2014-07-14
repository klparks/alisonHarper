<nav class="clear clearfix">
    <ul class="nav uppercase">
        <?php
        //If we're on a location, list the child pages

        //if (getCurrentCity("cat_name")) {
            listCityChildrenPages();
//         } else {//Otherwise link to the global pages
//             $exclude = getAllLocationPageIds();
//             //also exclude the home page
//             $exclude[] = get_option('page_on_front');
//             wp_list_pages(array('title_li' => '', 'exclude' => implode(',', $exclude), 'depth' => '1'));
//         }
        ?>
    </ul>
</nav>