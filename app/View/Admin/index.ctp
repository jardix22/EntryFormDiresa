<section>
    <div class="page-header">
        <h1>Inicio &raquo; <small><?php echo $current_phase['Phase']['name']; ?></small></h1>
    </div>
	<div class="tabbable tabs-right">
		
		<ul class="nav nav-tabs" >
			<?php $temp = true; ?>
			<?php foreach ($networks as $network): ?>
				<?php if($temp): ?>
				<?php $temp = false; ?>
					<li class="active">
				<?php else: ?>			
					<li class="">
				<?php endif;?>
						<a href=<?php echo "'"."#mod".$network['Network']['id']."'" ?> data-toggle="tab">
							<?php echo $network['Network']['name']?>	
						</a>
					</li>
			<?php endforeach; ?>
		</ul>

		<div class="tab-content">
			<?php $temp = true; ?>
			<?php foreach ($networks as $network): ?>
				<?php if($temp): ?>
					<?php $temp = false; ?>
					<div class="tab-pane active" id="mod<?php echo $network['Network']['id']?>">
				<?php else: ?>			
					<div class="tab-pane" id="mod<?php echo $network['Network']['id']?>">						
				<?php endif;?>
					<table class="table table-striped table-bordered establishment-table">
						<thead>
							<tr>
								<th>#</th>
								<th>Especialidad</th>
								<!--
								<th>Inscritos</th>
								-->
								<th>Opciones</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($professions as $key =>  $profession): ?>
								<tr>
									<td>
										<?php echo $key+1; ?>
									</td>
									<td>
										<?php echo $profession['Profession']['name']; ?>
									</td>
									<!--
									<td>
										<?php //echo $count[$specialty['id']];?>
									</td>
									-->
									<td>
										<?php echo $this->Html->Link('Ver', array('controller'=>'inscriptions', 'action' => 'peopleList',  base64_encode($network['Network']['id']), base64_encode($profession['Profession']['id']))); ?>	
									</td>
									
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			<?php endforeach; ?>
		</div>

	</div>

	

</section>


<style type="text/css">
	.establishment-table tbody tr td:last-child{
		width: 10%;
		text-align: center;
	}

	.establishment-table tbody tr td:first-child{
		width: 5%;
	}
</style>