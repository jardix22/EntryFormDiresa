<div class="page-header">
		<h1>
			Ficha de Inscripción
		</h1>
		<div class="pull-right">
			<div class="tool-buttons-content">
				<div class="tool-button">
					<a class="toolTips" href=<?php echo $this->Html->url(array("action" => "resultPdf", base64_encode($inscription['Inscription']['id']))); ?> target="_blank" rel="tooltip" data-placement="top" data-original-title="PDF" > PDF <i class="icon-file"></i></a>
				</div>
			</div>
		</div>
	</div>

	

<h4>Datos de Boucher</h4>

<table class="table table-bordered detail-table">

	<tbody>
		
		<tr>
			<td>
				Num. Voucher
			</td>
			<td>
				<?php echo $inscription['Inscription']['voucher_number']; ?>
			</td>
		</tr>
		

	</tbody>
</table>
<h4>Datos de Inscripción</h4>
<table class="table table-bordered detail-table">

	<tbody>
		<tr>
			<td>
				Fase
			</td>
			<td>
				<?php echo $inscription['Phase']['name']; ?>
			</td>
		</tr>
		<tr>
			<td>
				Red
			</td>
			<td>
				<?php echo $inscription['Network']['name']; ?>
			</td>
		</tr>
		<tr>
			<td>
				Profesión
			</td>
			<td>
				<?php echo $inscription['Profession']['name']; ?>
			</td>
		</tr>		
	</tbody>
</table>

<h4>Datos Personales</h4>
<table class="table table-bordered detail-table">

	<tbody>
		
		<tr>
			<td>
				DNI
			</td>
			<td>
				<?php echo $inscription['Person']['document']; ?>
			</td>
		</tr>
		<tr>
			<td>
				Nombre
			</td>
			<td>
				<?php echo $inscription['Person']['names']; ?>
			</td>
		</tr>
		<tr>
			<td>
				Apellido Paterno
			</td>
			<td>
				<?php echo $inscription['Person']['lf_name']; ?>
			</td>
		</tr>
		<tr>
			<td>
				Apellido Materno
			</td>
			<td>
				<?php echo $inscription['Person']['lm_name']; ?>
			</td>
		</tr>
		<tr>
			<td>
				Fecha de Nacimiento
			</td>
			<td>
				<?php echo $inscription['Person']['birthdate']; ?>
			</td>
		</tr>
		<tr>
			<td>
				Direccion
			</td>
			<td>
				<?php echo $inscription['Person']['address']; ?>
			</td>
		</tr>
		<tr>
			<td>
				Correo Electronico
			</td>
			<td>
				<?php echo $inscription['Person']['email']; ?>
			</td>
		</tr>
		<tr>
			<td>
				Num. Celular
			</td>
			<td>
				<?php echo $inscription['Person']['cellphone']; ?>
			</td>
		</tr>

	</tbody>
</table>


