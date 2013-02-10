
<div class="page-header">
      <h1>
      	<?php echo $network['Network']['name']; ?> » <small><?php echo $profession['Profession']['name'] ?></small>
      		<div class="pull-right">
      			
    			
      		<?php echo $this->Html->link('Regresar', array('controller' => 'admin', 'action' => 'index'), array('class' => 'btn')); ?>

      		</div>
      </h1>

</div>
<table class="table table-bordered report-table">
	<thead>
		<tr>
			<th>Nun</th>
			<th>Numero Voucher</th>
			<th>DNI</th>
			<th>Apellidos</th>
			<th>Nombres</th>
		</tr>
		</thead>
	<tbody>
		<?php if (count($inscriptions) == 0): ?>
			<tr>
				<td colspan="5" class="center"> <i>No hay inscritos.</i> </td>
			</tr>
		<?php else: ?>
			<?php foreach ($inscriptions as $key => $inscription): ?>
				<tr>
					<td><?php echo $key+1; ?></td>
					<td><?php echo $inscription['Inscription']['voucher_number']; ?></td>
					<td><?php echo $inscription['Person']['document'];?></td>
					<td><?php echo $inscription['Person']['lf_name']." " .$inscription['Person']['lm_name']?></td>
					<td><?php echo $inscription['Person']['names'];?></td>
				</tr>
			<?php endforeach;?>
		<?php endif; ?>
	</tbody>
</table>