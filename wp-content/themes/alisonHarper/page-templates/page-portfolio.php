<div class="content left">
    <section class="featuredText">
        <div class="description">
        General description of portfolios can go here.  possibly a gcb?
        </div>
        
        <ul>
        <!--loop over the portfolio sub pages and link to them-->
        <?php 
            $pages = getPortfolioPages(); 
            foreach($pages as $page){
        ?>
        
        <!--Html for links goes here-->
        <li>
            <div class="<?php echo $page->slug; ?>">
            <a href="<?php echo $page->link; ?>"><?php echo $page->title; ?></a>
        </li>
        <?php
            }
        ?>
        </ul>
    </section>
</div>
