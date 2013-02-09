<?php
/**
* ProfessionsController
*/
class ProfessionsController extends AppController
{	

	public function index($id=1)
	{
		//$this->Profession->unbindModel(array('belongsTo' => array('Establishment')));
		$professions = $this->Profession->find(
			'all', 
			array(
				//'conditions' => array('Profession.establishment_id' => $id),
				//'fields' => array('Profession.id','Profession.name'),
				'recursive' => 0
			)
		);

		$data = array();
		foreach ($professions as $key => $vacancie) {
			$data[$key] = array(
				'id' => $vacancie['Profession']['id'],
				'name' => $vacancie['Profession']['name'].' '.$vacancie['Profession']['amount']
			);
		}

		$this->set('professions', $data);
	}
}