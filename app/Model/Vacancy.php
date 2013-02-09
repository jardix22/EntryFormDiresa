<?php
/**
* 
*/
class Vacancy extends AppModel
{
	public $belongsTo = array('Profession', 'Establishment');
}
?>