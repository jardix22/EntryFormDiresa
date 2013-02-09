<section>
	<div class="page-header">
		<h2>Ficha de Inscripción</h2>
	</div>
	<div>
		<?php echo $this->BtForm->create(array('id' => 'inscription-form')); ?>
		<fieldset>

			<h5>Datos de Boucher</h5>
			<?php echo $this->BtForm->input('Inscription.voucher_number', 'Num. Voucher'); ?>
			<h5>Datos de Inscripción</h5>
			<?php echo $this->BtForm->input('Inscription.phase_id', 'Fase', array('empty' => '(Seleccione uno)')); ?>
			<?php echo $this->BtForm->input(
				'Inscription.network_id',
				'Red', 
				array(
					'id' => 'specialty', 
					'empty' => '(Seleccione)'
					)
				); 
			?>
			<?php echo $this->BtForm->input(
				'Inscription.profession_id',
				'Profesión',
				array(
					'id' => 'profession',
					'empty' => '(Seleccione)',
					)
				);  
			?>

			
			<h5>Datos Personales</h5>
			<?php echo $this->BtForm->input('Person.document', 'DNI', array('maxlength'=>'8')); ?>
			<?php echo $this->BtForm->input('Person.names', 'Nombre'); ?>
			<?php echo $this->BtForm->input('Person.lf_name', 'Apellido Paterno'); ?>
			<?php echo $this->BtForm->input('Person.lm_name', 'Apellido Materno'); ?>
			<?php echo $this->BtForm->date('Person.birtdate', 'Fecha de Nacimiento'); ?>
			<?php echo $this->BtForm->input('Person.address', 'Direccion'); ?>
			<?php echo $this->BtForm->input('Person.email', 'Correo Electronico'); ?>
			<?php echo $this->BtForm->input('Person.cellphone', 'Num. Celular', array('maxlength'=>'9')); ?>

		<fieldset>
			<?php echo $this->BtForm->submit('Enviar') ?>		
		<?php echo $this->Form->end(); ?>

	</div>
</section>
