<select name="page-dropdown" onchange='if(this.options[this.selectedIndex].value != "")document.location.href=this.options[this.selectedIndex].value;'> 
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
</select>