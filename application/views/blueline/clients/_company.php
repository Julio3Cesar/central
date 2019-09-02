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
        <label for="id"><?=$this->lang->line('application_reference_id');?> *</label>
        <input id="id" type="text" name="id" class="required form-control"  value="<?php if(isset($client)){echo $client->id;} ?>"   readonly="readonly"  />
</div>

<div class="form-group">
        <label for="firstname"><?=$this->lang->line('application_company');?> <?=$this->lang->line('application_name');?> *</label>
        <input id="firstname" type="text" name="firstname" class="required form-control" value="<?php if(isset($client)){echo $client->firstname;} ?>"  required/>
</div>

      <div class="form-group">
              <label for="lastname"><?=$this->lang->line('application_lastname');?> *</label>
              <input id="lastname" type="text" name="lastname" class="required form-control" value="<?php if(isset($client)){echo $client->lastname;}?>" required/>
      </div>
      <div class="form-group">
              <label for="rg"><?=$this->lang->line('application_rg');?></label>
              <input id="rg" type="text" name="rg" class="form-control" value="<?php if(isset($client)){echo $client->rg;}?>" />
      </div>

<div class="form-group">
        <label for="phone"><?=$this->lang->line('application_phone');?></label>
        <input id="phone" type="text" name="phone" class="form-control" value="<?php if(isset($client)){echo $client->phone;}?>" />
</div>
<div class="form-group">
        <label for="mobile"><?=$this->lang->line('application_mobile');?></label>
        <input id="mobile" type="text" name="mobile" class="form-control" value="<?php if(isset($client)){echo $client->mobile;}?>" />
</div>
      <div class="form-group <?php if(isset($client)){echo 'has-erro';} ?>">
              <label for="email"><?=$this->lang->line('application_email');?> *</label>
              <input id="email" type="email" name="email" class="required email form-control" value="<?php if(isset($client)){echo $client->email;}?>" required/>
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
              <label for="address_number"><?=$this->lang->line('application_address_number');?> *</label>
              <input id="address_number" type="text" name="address_number" class="form-control" value="<?php if(isset($client)){echo $client->address_number;}?>" required/>
      </div>
      <div class="form-group">
              <label for="district"><?=$this->lang->line('application_district');?> *</label>
              <input id="district" type="text" name="district" class="form-control" value="<?php if(isset($client)){echo $client->district;}?>" required/>
      </div>
      <div class="form-group">
              <label for="complement"><?=$this->lang->line('application_complement');?> *</label>
              <input id="complement" type="text" name="complement" class="form-control" value="<?php if(isset($client)){echo $client->complement;}?>" required/>
      </div>
<div class="form-group">
        <label for="city"><?=$this->lang->line('application_city');?></label>
        <input id="city" type="text" name="city" class="form-control" value="<?php if(isset($client)){echo $client->city;}?>" />
</div>
<div class="form-group">
        <label for="province"><?=$this->lang->line('application_province');?></label>
        <input id="province" type="text" name="province" class="form-control" value="<?php echo $client->company->province;?>" />
</div>
<div class="form-group">
        <label for="vat"><?=$this->lang->line('application_vat');?></label>
        <input id="vat" type="text" name="vat" class="form-control" value="<?php echo $client->company->vat;?>" />
</div>
      <div class="form-group">
              <label for="functional_id"><?=$this->lang->line('application_functional_id');?> *</label>
              <input id="functional_id" type="text" name="functional_id" class="required form-control" value="<?php if(isset($client)){echo $client->functional_id;}?>" required/>
      </div>
      <div class="form-group">
              <label for="authenticity_code"><?=$this->lang->line('application_authenticity_code');?> *</label>
              <input id="authenticity_code" type="text" name="authenticity_code" class="required form-control" value="<?php if(isset($client)){echo $client->authenticity_code;}?>" required/>
      </div>
      <div class="form-group">
              <label for="station"><?=$this->lang->line('application_station');?> *</label>
              <input id="station" type="text" name="station" class="required form-control" value="<?php if(isset($client)){echo $client->station;}?>" required/>
      </div>
      <div class="form-group">
              <label for="birth_date"><?=$this->lang->line('application_birth_date');?> *</label>
              <input id="birth_date" type="text" name="birth_date" class="required form-control" value="<?php if(isset($client)){echo $client->birth_date;}?>" required/>
      </div>

  <div class="form-group">
    <label for="is_active"><?=$this->lang->line('application_is_he_active');?></label>
    &nbsp;
    <input type="checkbox" id="is_active" name="is_active" style="margin-bottom: 4px;"class="checkbox-inline" value="1"<?php if($client->is_active == 1) {echo "checked";} ?> />
  </div>
  <div class="form-group">
      <label for="command"><?=$this->lang->line('application_command');?></label>
      <input id="command" type="text" name="command" class="form-control" value="<?php if(isset($client)){echo $client->command;}?>" />
  </div>
  <div class="form-group">
      <label for="command_city"><?=$this->lang->line('application_command_city');?></label>
      <input id="command_city" type="text" name="command_city" class="form-control" value="<?php if(isset($client)){echo $client->command_city;}?>" />
  </div>
  <div class="form-group">
      <label for="command_opm"><?=$this->lang->line('application_command_opm');?></label>
      <input id="command_opm" type="text" name="command_opm" class="form-control" value="<?php if(isset($client)){echo $client->command_opm;}?>" />
  </div>
  <div class="form-group">
      <label for="command_address"><?=$this->lang->line('application_command_address');?></label>
      <input id="command_address" type="text" name="command_address" class="form-control" value="<?php if(isset($client)){echo $client->command_address;}?>" />
  </div>
  <div class="form-group">
        <label for="command_phone"><?=$this->lang->line('application_command_phone');?></label>
      <input id="command_phone" type="text" name="command_phone" class="form-control" value="<?php if(isset($client)){echo $client->command_phone;}?>" />
  </div>
            <div class="form-group">
                <label for="command_board"><?=$this->lang->line('application_command_board');?></label>
                <input id="command_board" type="text" name="command_board" class="form-control" value="<?php if(isset($client)){echo $client->command_board;}?>" />
            </div>
            <div class="form-group">
                <label for="command_state"><?=$this->lang->line('application_command_state');?></label>
                <input id="command_state" type="text" name="command_state" class="form-control" value="<?php if(isset($client)){echo $client->command_state;}?>" />
            </div>
            <div class="form-group">
                <label for="command_entry_date"><?=$this->lang->line('application_command_entry_date');?></label>
                <input id="command_entry_date" type="text" name="command_entry_date" class="form-control" value="<?php if(isset($client)){echo $client->command_entry_date;}?>" />
            </div>
            <div class="form-group">
                <label for="command_comments"><?=$this->lang->line('application_command_comments');?></label>
                <textarea id="command_comments" rows="5" name="command_comments" class="form-control" value="<?php if(isset($client)){echo $client->command_comments;}?>"></textarea>
            </div>
<div class="modal-footer">
  <input type="submit" name="send" class="btn btn-primary" value="<?=$this->lang->line('application_save');?>"/>
  <a class="btn" data-dismiss="modal"><?=$this->lang->line('application_close');?></a>
</div>
<?php echo form_close(); ?>
