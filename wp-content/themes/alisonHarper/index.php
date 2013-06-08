<!-- This is our 404 not found page -->
<div class="intro"><span class="headline">Hello Friend.</span>
<p>It's time for your close up! Come back to Alison Harper and Company.</p></div>
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
                </ul>