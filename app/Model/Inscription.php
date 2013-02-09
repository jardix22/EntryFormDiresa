<?php
/**
* 
*/
class Inscription extends AppModel
{
	public $belongsTo = array('Phase', 'Establishment', 'Profession', 'Person');
}
?>