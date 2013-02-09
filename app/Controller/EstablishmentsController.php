	<?php
/**
* EstablishmentsController
*/
class EstablishmentsController extends AppController
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

		$establishments = $this->Establishment->find(
			'all', 
			array(
				'conditions' => array('Establishment.network_id' => $id),
				'fields' => array('Establishment.id','Establishment.name'),
				'recursive' => 1
			)
		);

		// Estructurar $data array() para el select

		$data = array();
		foreach ($establishments as $key => $establishment) {
			$data[$key] = array(
				'id' => $establishment['Establishment']['id'],
				'name' => $establishment['Establishment']['name']			
			);
		}

		$this->set('establishments', $data);
		$this->set('__serialize', 'establishments');
	}

	public function index($id=1)
	{
		$establishments = $this->Establishment->find(
			'all', 
			array(
				'conditions' => array('Establishment.network_id' => $id),
				'fields' => array('Establishment.id','Establishment.name'),
				'recursive' => 1
			)
		);

		$data = array();
		foreach ($establishments as $key => $establishment) {
			if ( count($establishment['Vacancy']) > 0) {
				$data[$key] = array(
					'id' => $establishment['Establishment']['id'],
					'name' => $establishment['Establishment']['name']
				);
		}
			}

		$this->set('establishments', $data);
	}
}