<div class="row">
   <div class="col-md-12">
      <h2><?=$company->name;?></h2>
   </div>
</div>
<div class="row">
   <div class="col-md-12 marginbottom20">
      <div class="table-head">
         <?=$this->lang->line('application_client_details');?> <span class="pull-right"><a href="<?=base_url()?>clients/company/update/<?=$company->id;?>/view" class="btn btn-primary" data-toggle="mainmodal"><i class="icon-edit"></i> <?=$this->lang->line('application_edit');?></a></div>
		<div class="subcont">
		<ul class="details col-md-6">
			<li><span><?=$this->lang->line('application_company_name');?>:</span>
            <?php echo $company->name = empty($company->name) ? "-" : $company->name; ?></li>
            <li><span><?=$this->lang->line('application_primary_contact');?>:</span>
               <?php if(isset($company->client->firstname)){ echo $company->client->firstname.' '.$company->client->lastname;}else{echo "-";} ?></li>
            <li><span><?=$this->lang->line('application_email');?>:</span>
               <?php if(isset($company->client->email)){ echo $company->client->email; }else{ echo "-"; } ?></li>
            <li><span><?=$this->lang->line('application_website');?>:</span>
               <?php echo $company->website = empty($company->website) ? "-" : '<a target="_blank" href="http://'.$company->website.'">'.$company->website.'</a>' ?></li>
            <li><span><?=$this->lang->line('application_phone');?>:</span>
               <?php echo $company->phone = empty($company->phone) ? "-" : $company->phone; ?></li>
            <?php if($company->vat != ""){?>
            <li><span><?=$this->lang->line('application_vat');?>:</span>
               <?php echo $company->vat; ?></li>
            <?php } ?>
            </ul>
            <span class="visible-xs"></span>
            <ul class="details col-md-6">
               <li><span><?=$this->lang->line('application_address');?>:</span>
                  <?php echo $company->address = empty($company->address) ? "-" : $company->address; ?></li>
               <li><span><?=$this->lang->line('application_zip_code');?>:</span>
                  <?php echo $company->zipcode = empty($company->zipcode) ? "-" : $company->zipcode; ?></li>
               <li><span><?=$this->lang->line('application_city');?>:</span>
                  <?php echo $company->city = empty($company->city) ? "-" : $company->city; ?></li>
               <li><span><?=$this->lang->line('application_country');?>:</span>
                  <?php echo $company->country = empty($company->country) ? "-" : $company->country; ?></li>
               <li><span><?=$this->lang->line('application_province');?>:</span>
                  <?php echo $company->province = empty($company->province) ? "-" : $company->province; ?></li>

            </ul>
            <br clear="all">
      </div>
   </div>
</div>
