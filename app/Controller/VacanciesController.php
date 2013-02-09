<?php
/**
* 
*/
class VacanciesController extends AppController
{
	public function beforeFilter()
	{
		parent::beforeFilter();
		$this->Auth->allow('listId', 'index');
	}

	public function listId()
	{
		$id = $this->request->data['id'];
		$this->viewClass = 'Json';
		$this->RequestHandler->setContent('json', 'application/json' );

		$this->Vacancy->unbindModel(array('belongsTo' => array('Establishment')));
		$vacancies = $this->Vacancy->find(
			'all', 
			array(
				'conditions' => array('Vacancy.establishment_id' => $id),
				//'fields' => array('Vacancy.id','Vacancy.name'),
				'recursive' => 0
			)
		);

		$data = array();
		foreach ($vacancies as $key => $vacancie) {
			if($vacancie['Vacancy']['amount'] == 1){
				$data[$key] = array(
					'id' => $vacancie['Vacancy']['id'],
					'name' => $vacancie['Profession']['name'].' : '.$vacancie['Vacancy']['amount'] . ' vacante'
				);
			}else{	
				$data[$key] = array(
					'id' => $vacancie['Vacancy']['id'],
					'name' => $vacancie['Profession']['name'].' : '.$vacancie['Vacancy']['amount'] . ' vacantes'
				);
			}
		}

		$this->set('vacancies', $data);
		$this->set('__serialize', 'vacancies');
	}
	public function index($id=1)
	{
		$this->Vacancy->unbindModel(array('belongsTo' => array('Establishment')));
		$vacancies = $this->Vacancy->find(
			'all', 
			array(
				'conditions' => array('Vacancy.establishment_id' => $id),
				//'fields' => array('Vacancy.id','Vacancy.name'),
				'recursive' => 0
			)
		);

		$data = array();
		foreach ($vacancies as $key => $vacancie) {
			$data[$key] = array(
				'id' => $vacancie['Vacancy']['id'],
				'name' => $vacancie['Profession']['name'].' '.$vacancie['Vacancy']['amount']
			);
		}

		$this->set('vacancies', $vacancies);
	}
}