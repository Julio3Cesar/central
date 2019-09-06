<?php $attributes = array('class' => 'form-signin form-register', 'role'=> 'form', 'id' => 'register'); ?>
<?=form_open($form_action, $attributes)?>
        <div class="logo"><img src="<?=base_url()?><?=$core_settings->invoice_logo;?>" alt="<?=$core_settings->company;?>"></div>
        <?php if($error != 'false') { ?>
            <div id="error" style="display:block">
              <?=$error?>
            </div>
        <?php } ?>
  <div class="row">
    <div class="header">
      <?=$this->lang->line('application_enter_your_details_to_create_an_account');?>
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      <a align="right" href="<?=site_url("login");?>"> <?=$this->lang->line('application_already_have_account');?></a>
      <hr>
   </div>

    <div class="col-md-6">
      <div class="form-group">
              <label for="firstname"><?=$this->lang->line('application_firstname');?> *</label>
              <input id="firstname" type="text" name="firstname" class=" form-control" value="<?php if(isset($registerdata)){echo $registerdata['firstname'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="lastname"><?=$this->lang->line('application_lastname');?> *</label>
              <input id="lastname" type="text" name="lastname" class="required form-control" value="<?php if(isset($registerdata)){echo $registerdata['lastname'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="rg"><?=$this->lang->line('application_rg');?></label>
              <input id="rg" type="text" name="rg" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['rg'];}?>" />
      </div>
      <div class="form-group">
              <label for="vat"><?=$this->lang->line('application_vat');?></label>
              <input id="vat" type="text" name="vat" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['vat'];}?>" />
      </div>
      <div class="form-group">
              <label for="functional_id"><?=$this->lang->line('application_functional_id');?> *</label>
              <input id="functional_id" type="text" name="functional_id" class="required form-control" value="<?php if(isset($registerdata)){echo $registerdata['functional_id'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="authenticity_code"><?=$this->lang->line('application_authenticity_code');?> *</label>
              <input id="authenticity_code" type="text" name="authenticity_code" class="required form-control" value="<?php if(isset($registerdata)){echo $registerdata['authenticity_code'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="station"><?=$this->lang->line('application_station');?> *</label>
              <input id="station" type="text" name="station" class="required form-control" value="<?php if(isset($registerdata)){echo $registerdata['station'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="birth_date"><?=$this->lang->line('application_birth_date');?> *</label>
              <input id="birth_date" type="text" name="birth_date" class="required form-control" value="<?php if(isset($registerdata)){echo $registerdata['birth_date'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="phone"><?=$this->lang->line('application_phone');?></label>
              <input id="phone" type="text" name="phone" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['phone'];}?>" />
      </div>
      <div class="form-group">
              <label for="mobile"><?=$this->lang->line('application_mobile');?></label>
              <input id="mobile" type="text" name="mobile" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['mobile'];}?>" />
      </div>
      <div class="form-group <?php if(isset($registerdata)){echo 'has-error';} ?>">
              <label for="email"><?=$this->lang->line('application_email');?> *</label>
              <input id="email" type="email" name="email" class="required email form-control" value="<?php if(isset($registerdata)){echo $registerdata['email'];}?>" required/>
      </div>
    </div>
    <div class="col-md-6">
      <div class="form-group">
              <label for="address"><?=$this->lang->line('application_address');?> *</label>
              <input id="address" type="text" name="address" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['address'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="address_number"><?=$this->lang->line('application_address_number');?> *</label>
              <input id="address_number" type="text" name="address_number" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['address_number'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="district"><?=$this->lang->line('application_district');?> *</label>
              <input id="district" type="text" name="district" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['district'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="complement"><?=$this->lang->line('application_complement');?> *</label>
              <input id="complement" type="text" name="complement" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['complement'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="zipcode"><?=$this->lang->line('application_zip_code');?> *</label>
              <input id="zipcode" type="text" name="zipcode" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['zipcode'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="city"><?=$this->lang->line('application_city');?> *</label>
              <input id="city" type="text" name="city" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['city'];}?>" required/>
      </div>
      <div class="form-group">
              <label for="country"><?=$this->lang->line('application_country');?> *</label>
              <input id="country" type="text" name="country" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['country'];}?>" required/>
      </div>
      <div class="form-group">
          <label for="province"><?=$this->lang->line('application_province');?></label>
          <input id="province" type="text" name="province" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['province'];}?>" />
      </div>
      <div class="form-group">
              <label for="password"><?=$this->lang->line('application_password');?> *</label>
              <input id="password" type="password" name="password" class="form-control" value="" required />
      </div>
      <div class="form-group">
              <label for="password"><?=$this->lang->line('application_confirm_password');?> *</label>
              <input id="confirm_password" type="password" class="form-control" data-match="#password" required />
      </div>

      <?php   $number1 = rand(1, 10);
              $number2 = rand(1, 10);
              $captcha = $number1+$number2;

              //captcha
            $html_fields = '<input type="hidden" id="captcha" name="captcha" value="'.$captcha.'"><div class="form-group">';
            $html_fields .= '<label class="control-label-e">'.$number1.'+'.$number2.' = ?</label>';
            $html_fields .= '<input type="text" id="confirmcaptch" name="confirmcaptcha" data-match="#captcha" class="form-control" required/></div>';
            echo $html_fields;
      ?>
    </div>
  </div>
  <div class="col-md-12">
    <div class="row">
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="isActive"><?=$this->lang->line('application_i_am_active');?></label>
            &nbsp;
            Sim <input type="radio" id="isActive" name="is_active" style="margin-bottom: 4px;"class="checkbox-inline" onclick="myFunction()" value="1">
            Não <input type="radio" name="is_active" style="margin-bottom: 4px; margin-left: 0px;"class="checkbox-inline" onclick="myFunction()" value="0">
          </div>
        </div>
      </div>
      <div class="row">
        <div id="formToActive" style="display:none">
          <div class="col-md-6">
            <div class="form-group">
                <label for="command"><?=$this->lang->line('application_command');?></label>
                <input id="command" type="text" name="command" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['command'];}?>" />
            </div>
            <div class="form-group">
                <label for="command_city"><?=$this->lang->line('application_command_city');?></label>
                <input id="command_city" type="text" name="command_city" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['command_city'];}?>" />
            </div>
            <div class="form-group">
                <label for="command_opm"><?=$this->lang->line('application_command_opm');?></label>
                <input id="command_opm" type="text" name="command_opm" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['command_opm'];}?>" />
            </div>
            <div class="form-group">
                <label for="command_address"><?=$this->lang->line('application_command_address');?></label>
                <input id="command_address" type="text" name="command_address" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['command_address'];}?>" />
            </div>
            <div class="form-group">
                <label for="command_phone"><?=$this->lang->line('application_command_phone');?></label>
                <input id="command_phone" type="text" name="command_phone" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['command_phone'];}?>" />
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
                <label for="command_board"><?=$this->lang->line('application_command_board');?></label>
                <input id="command_board" type="text" name="command_board" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['command_board'];}?>" />
            </div>
            <div class="form-group">
                <label for="command_state"><?=$this->lang->line('application_command_state');?></label>
                <input id="command_state" type="text" name="command_state" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['command_state'];}?>" />
            </div>
            <div class="form-group">
                <label for="command_entry_date"><?=$this->lang->line('application_command_entry_date');?></label>
                <input id="command_entry_date" type="text" name="command_entry_date" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['command_entry_date'];}?>" />
            </div>
            <div class="form-group">
                <label for="command_comments"><?=$this->lang->line('application_command_comments');?></label>
                <textarea id="command_comments" rows="5" name="command_comments" class="form-control" value="<?php if(isset($registerdata)){echo $registerdata['command_comments'];}?>"></textarea>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6">
       <a href="<?=site_url("login");?>"><?=$this->lang->line('application_go_to_login');?></a>
    </div>
    <div class="col-md-6">
       <input type="submit" class="btn btn-success" value="<?=$this->lang->line('application_send');?>" />
    </div>
  </div>
<?=form_close()?>

