<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment/payu.png" style="height:25px; margin-top:-5px;" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><span class="required">*</span> <?php echo $entry_merchant; ?></td>
            <td><input type="text" name="payu_merchant" value="<?php echo $payu_merchant; ?>" />
              <?php if ($error_merchant) { ?>
              <span class="error"><?php echo $error_merchant; ?></span>
              <?php } ?></td>
          </tr>
          <tr>  
            <td><span class="required">*</span> <?php echo $entry_secretkey; ?></td>
            <td><input type="text" name="payu_secretkey" value="<?php echo $payu_secretkey; ?>" />
              <?php if ($error_secretkey) { ?>
              <span class="error"><?php echo $error_secretkey; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_debug; ?></td>
            <td><select name="payu_debug">
              <? $st0 = $st1 = ""; 
                 if ( $payu_debug == 0 ) $st0 = 'selected="selected"';
                  else $st1 = 'selected="selected"';
              ?>
                <option value="1" <?= $st1 ?> ><?php echo $entry_debug_on; ?></option>
                <option value="0" <?= $st0 ?> ><?php echo $entry_debug_off; ?></option>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_LU; ?></td>
            <td><input type="text" name="payu_LU" value="<?php echo $payu_LU; ?>" /></td>
          </tr>      

           <tr>
            <td><?php echo $entry_currency; ?></td>
            <td><input type="text" name="payu_currency" value="<?php echo ($payu_currency == "") ? "UAH" : $payu_currency; ?>" /></td>
          </tr>  

           <tr>
            <td><?php echo $entry_backref; ?></td>
            <td><input type="text" name="payu_backref" value="<?php echo $payu_backref; ?>" /></td>
          </tr>  


           <tr>
            <td><?php echo $entry_vat; ?></td>
            <td><input type="text" name="payu_vat" value="<?php echo ($payu_vat == "") ? 0 : $payu_vat; ?>" /></td>
          </tr>  

           <tr>
            <td><?php echo $entry_language; ?></td>
            <td><input type="text" name="payu_language" value="<?php echo ($payu_language == "") ? "RU" : $payu_language; ?>" /></td>
          </tr> 

          <tr>
            <td><?php echo $entry_order_status; ?></td>
            <td><select name="payu_order_status_id">
                <?php 
                foreach ($order_statuses as $order_status) { 

                $st = ($order_status['order_status_id'] == $payu_order_status_id) ? ' selected="selected" ' : ""; 
                ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" <?= $st ?> ><?php echo $order_status['name']; ?></option>
                <?php } ?>
              </select></td>
          </tr>
                  <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="payu_status">
                <? $st0 = $st1 = ""; 
                 if ( $payu_status == 0 ) $st0 = 'selected="selected"';
                  else $st1 = 'selected="selected"';
                ?>

                <option value="1" <?= $st1 ?> ><?php echo $text_enabled; ?></option>
                <option value="0" <?= $st0 ?> ><?php echo $text_disabled; ?></option>

              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="payu_sort_order" value="<?php echo $payu_sort_order; ?>" size="1" /></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>