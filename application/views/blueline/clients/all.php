<div class="col-sm-12  col-md-12 main">
            <div class="row">
              <form method="post" class="form-inline" align="right" action="clients/export">
                <a href="<?=base_url()?>clients/company/create" class="btn btn-primary" data-toggle="mainmodal"><?=$this->lang->line('application_add_new_company');?></a>
                <input type="submit" name="export-all" value="Exportar Todos" class="btn btn-success" />
                <input type="submit" name="export-active" value="Exportar Ativos" class="btn btn-success" />
                <input type="submit" name="export-inactive" value="Exportar Inativos" class="btn btn-success" />
              </form>
            </div>
		<div class="row">
		<div class="table-head"> <?=$this->lang->line('application_companies');?></div>
		<div class="table-div">
		<table class="data table" id="clients" rel="<?=base_url()?>" cellspacing="0" cellpadding="0">
		<thead>

			<th class="hidden-xs" style="width:70px"><?=$this->lang->line('application_functional_id');?></th>
			<th><?=$this->lang->line('application_company_name');?></th>
			<th><?=$this->lang->line('application_is_he_active');?></th>
			<th class="hidden-xs"><?=$this->lang->line('application_primary_contact');?></th>
			<th class="hidden-xs"><?=$this->lang->line('application_email');?></th>
			<th><?=$this->lang->line('application_action');?></th>
		</thead>
		<?php foreach ($clients as $value):?>

                  <tr  id="<?=$value->id;?>" ><td class="hidden-xs" style="width:70px"><?php if(isset($value->functional_id)){ echo $value->functional_id;} ?></td>
			<td><span class="label label-info"><?php if(isset($value->firstname)){echo $value->firstname . " " . $value->lastname;} else{echo $this->lang->line('application_no_company_assigned'); }?></span></td>
			<td><span class="hidden-xs"><?php if($value->is_active == 1){echo "Sim";} else{echo "Não"; }?></span></td>
			<td class="hidden-xs"><?php if(isset($value->phone)){ echo $value->phone;}else{ echo $this->lang->line('application_no_contact_assigned');} ?></td>
			<td class="hidden-xs"><?php if(isset($value->email)){ echo $value->email;}else{ echo $this->lang->line('application_no_contact_assigned');}?></td>
			<td class="option" width="8%">
				        <button type="button" class="btn-option delete po" data-toggle="popover" data-placement="left" data-content="<a class='btn btn-danger po-delete ajax-silent' href='<?=base_url()?>clients/company/delete/<?=$value->id;?>'><?=$this->lang->line('application_yes_im_sure');?></a> <button class='btn po-close'><?=$this->lang->line('application_no');?></button> <input type='hidden' name='td-id' class='id' value='<?=$value->id;?>'>" data-original-title="<b><?=$this->lang->line('application_really_delete');?></b>"><i class="fa fa-times"></i></button>
				        <a href="<?=base_url()?>clients/company/update/<?=$value->id;?>" class="btn-option" data-toggle="mainmodal"><i class="fa fa-cog"></i></a>
			</td>
		</tr>
		<?php endforeach;?>
	 	</table>
	 	<br clear="all">

	</div>
