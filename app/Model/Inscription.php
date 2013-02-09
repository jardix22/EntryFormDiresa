<?php
/**
* 
*/
class Inscription extends AppModel
{
	public $belongsTo = array('Phase', 'Network', 'Profession', 'Person');
}
?>