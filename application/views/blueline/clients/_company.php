<?php
$attributes = array('class' => '', 'id' => '_company');
echo form_open_multipart($form_action, $attributes);
?>

<?php if(isset($client)){ ?>
<input id="id" type="hidden" name="id" value="<?=$client->id;?>" />
<?php } ?>
<?php if(isset($view)){ ?>
<input id="view" type="hidden" name="view" value="true" />
<?php } ?>

<div class="form-group">
        <label for="reference"><?=$this->lang->line('application_reference_id');?> *</label>
        <input id="reference" type="text" name="reference" class="required form-control"  value="<?php if(isset($client)){echo $client->id;} ?>"   readonly="readonly"  />
</div>

<div class="form-group">
        <label for="name"><?=$this->lang->line('application_company');?> <?=$this->lang->line('application_name');?> *</label>
        <input id="name" type="text" name="name" class="required form-control" value="<?php if(isset($client)){echo $client->firstname;} ?>"  required/>
</div>
<div class="form-group">
  <label for="is_active"><?=$this->lang->line('application_is_he_active');?></label>
  &nbsp;
  <input type="checkbox" id="is_active" name="is_active" style="margin-bottom: 4px;"class="checkbox-inline" value="1"<?php if($client->is_active == 1) {echo "checked";} ?> />
</div>
<div class="form-group">
        <label for="phone"><?=$this->lang->line('application_phone');?></label>
        <input id="phone" type="text" name="phone" class="form-control" value="<?php if(isset($client)){echo $client->phone;}?>" />
</div>
<div class="form-group">
        <label for="mobile"><?=$this->lang->line('application_mobile');?></label>
        <input id="mobile" type="text" name="mobile" class="form-control" value="<?php if(isset($client)){echo $client->mobile;}?>" />
</div>
<div class="form-group">
        <label for="address"><?=$this->lang->line('application_address');?></label>
        <input id="address" type="text" name="address" class="form-control" value="<?php if(isset($client)){echo $client->address;}?>" />
</div>
<div class="form-group">
        <label for="zipcode"><?=$this->lang->line('application_zip_code');?></label>
        <input id="zipcode" type="text" name="zipcode" class="form-control" value="<?php if(isset($client)){echo $client->zipcode;}?>" />
</div>
<div class="form-group">
        <label for="city"><?=$this->lang->line('application_city');?></label>
        <input id="city" type="text" name="city" class="form-control" value="<?php if(isset($client)){echo $client->city;}?>" />
</div>
<div class="form-group">
        <label for="country"><?=$this->lang->line('application_country');?></label>
        <input id="country" type="text" name="country" class="form-control" value="<?php echo $client->company->country;?>" />
</div>
<div class="form-group">
        <label for="province"><?=$this->lang->line('application_province');?></label>
        <input id="province" type="text" name="province" class="form-control" value="<?php echo $client->company->province;?>" />
</div>
<div class="form-group">
        <label for="vat"><?=$this->lang->line('application_vat');?></label>
        <input id="vat" type="text" name="vat" class="form-control" value="<?php echo $client->company->vat;?>" />
</div>

        <div class="modal-footer">
        <input type="submit" name="send" class="btn btn-primary" value="<?=$this->lang->line('application_save');?>"/>
        <a class="btn" data-dismiss="modal"><?=$this->lang->line('application_close');?></a>
        </div>
<?php echo form_close(); ?>
