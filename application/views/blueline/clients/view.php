<div class="row">
   <div class="col-md-12">
      <h2><?=$client->firstname;?></h2>
   </div>
</div>
<div class="row">
   <div class="col-md-12 marginbottom20">
      <div class="table-head">
         <?=$this->lang->line('application_client_details');?> <span class="pull-right"><a href="<?=base_url()?>clients/company/update/<?=$client->id;?>/view" class="btn btn-primary" data-toggle="mainmodal"><i class="icon-edit"></i> <?=$this->lang->line('application_edit');?></a></div>
		<div class="subcont">
            <ul class="details col-md-6">
              <li><span><?=$this->lang->line('application_company_name');?>:</span>
                 <?php if($client->firstname){ echo $client->firstname.' '.$client->lastname;}else{echo "-";} ?></li>
              <li><span><?=$this->lang->line('application_email');?>:</span>
                 <?php if($client->email){ echo $client->email; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_phone');?>:</span>
                 <?php echo $client->phone = empty($client->phone) ? "-" : $client->phone; ?></li>
               <?php if($client->company->vat != ""){?>
                 <li><span><?=$this->lang->line('application_vat');?>:</span>
                   <?php echo $client->company->vat; ?></li>
               <?php } ?>

              <li><span><?=$this->lang->line('application_rg');?>:</span>
                 <?php if($client->rg){ echo $client->rg; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_functional_id');?>:</span>
                 <?php if($client->functional_id){ echo $client->functional_id; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_authenticity_code');?>:</span>
                 <?php if($client->authenticity_code){ echo $client->authenticity_code; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_station');?>:</span>
                 <?php if($client->station){ echo $client->station; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_birth_date');?>:</span>
                 <?php if($client->birth_date){ echo $client->birth_date; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_mobile');?>:</span>
                 <?php if($client->mobile){ echo $client->mobile; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_address_number');?>:</span>
                 <?php if($client->address_number){ echo $client->address_number; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_district');?>:</span>
                 <?php if($client->district){ echo $client->district; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_complement');?>:</span>
                 <?php if($client->complement){ echo $client->complement; }else{ echo "-"; } ?></li>
               <li><span><?=$this->lang->line('application_address');?>:</span>
                  <?php echo $client->address = empty($client->address) ? "-" : $client->address; ?></li>

            </ul>
            <span class="visible-xs"></span>
            <ul class="details col-md-6">
               <li><span><?=$this->lang->line('application_zip_code');?>:</span>
                  <?php echo $client->zipcode = empty($client->zipcode) ? "-" : $client->zipcode; ?></li>
               <li><span><?=$this->lang->line('application_city');?>:</span>
                  <?php echo $client->city = empty($client->city) ? "-" : $client->city; ?></li>
               <li><span><?=$this->lang->line('application_province');?>:</span>
                  <?php echo $client->company->province = empty($client->company->province) ? "-" : $client->company->province; ?></li>

              <li><span><b><?=$this->lang->line('application_command_information');?></b></span></li>
              <li><span><?=$this->lang->line('application_is_he_active');?></span>
                 <?php if($client->is_active == 1){ echo "SIM"; }else{ echo "NÃO"; } ?></li>
              <li><span><?=$this->lang->line('application_command');?>:</span>
                 <?php if($client->command){ echo $client->command; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_command_city');?>:</span>
                 <?php if($client->command_city){ echo $client->command_city; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_command_opm');?>:</span>
                 <?php if($client->command_opm){ echo $client->command_opm; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_command_address');?>:</span>
                 <?php if($client->command_address){ echo $client->command_address; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_command_phone');?>:</span>
                 <?php if($client->command_phone){ echo $client->command_phone; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_command_board');?>:</span>
                 <?php if($client->command_board){ echo $client->command_board; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_command_state');?>:</span>
                 <?php if($client->command_state){ echo $client->command_state; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_command_entry_date');?>:</span>
                 <?php if($client->command_entry_date){ echo $client->command_entry_date; }else{ echo "-"; } ?></li>
              <li><span><?=$this->lang->line('application_comments');?>:</span>
                 <?php if($client->command_comments){ echo $client->command_comments; }else{ echo "-"; } ?></li>

            </ul>
            <br clear="all">
      </div>
   </div>
</div>
