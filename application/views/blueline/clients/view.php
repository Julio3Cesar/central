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
            <?php echo $client->firstname = empty($client->firstname) ? "-" : $client->firstname; ?></li>
            <li><span><?=$this->lang->line('application_primary_contact');?>:</span>
               <?php if(isset($client->firstname)){ echo $client->firstname.' '.$client->lastname;}else{echo "-";} ?></li>
            <li><span><?=$this->lang->line('application_email');?>:</span>
               <?php if(isset($client->email)){ echo $client->email; }else{ echo "-"; } ?></li>
            <li><span><?=$this->lang->line('application_phone');?>:</span>
               <?php echo $client->phone = empty($client->phone) ? "-" : $client->phone; ?></li>
            <?php if($client->company->vat != ""){?>
            <li><span><?=$this->lang->line('application_vat');?>:</span>
               <?php echo $client->company->vat; ?></li>
            <?php } ?>
            </ul>
            <span class="visible-xs"></span>
            <ul class="details col-md-6">
               <li><span><?=$this->lang->line('application_address');?>:</span>
                  <?php echo $client->address = empty($client->address) ? "-" : $client->address; ?></li>
               <li><span><?=$this->lang->line('application_zip_code');?>:</span>
                  <?php echo $client->zipcode = empty($client->zipcode) ? "-" : $client->zipcode; ?></li>
               <li><span><?=$this->lang->line('application_city');?>:</span>
                  <?php echo $client->city = empty($client->city) ? "-" : $client->city; ?></li>
               <li><span><?=$this->lang->line('application_country');?>:</span>
                  <?php echo $client->company->country = empty($client->company->country) ? "-" : $client->company->country; ?></li>
               <li><span><?=$this->lang->line('application_province');?>:</span>
                  <?php echo $client->company->province = empty($client->company->province) ? "-" : $client->company->province; ?></li>

            </ul>
            <br clear="all">
      </div>
   </div>
</div>
