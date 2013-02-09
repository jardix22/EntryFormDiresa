<?php
/**
* 
*/
class InscriptionsController extends AppController
{
	public $layout = 'bootstrap/public';
	public $uses = array('Inscription','Phase', 'Network', 'Profession');

	public function beforeFilter()
	{
		parent::beforeFilter();
		$this->Auth->allow();
	}

	public function add()
	{
		// POST
		if ($this->request->is('post')) {
			/*
			echo "<pre>";
			print_r($this->request->data);
			echo "</pre>";
			*/
			
			$this->loadModel('Person');

			if ($this->Person->save($this->request->data['Person'])) {

				$this->request->data['Inscription']['person_id'] = $this->Person->id;
				
				if ($this->Inscription->saveAll($this->request->data['Inscription'])) {
					$this->Session->setFlash(
						array('message' => 'Su inscripcion ha sido realizada exitosamente.','type' => 'alert-success'),
						'bootstrap_message'
					);
					
					$this->redirect(array('action' => 'result', base64_encode($this->Inscription->id)));
				} else {
					$this->Session->setFlash(
						array('message' => 'Ha ocurrido un error, vuelve a intentarlo.','type' => 'alert-error'),
						'bootstrap_message'
					);
				}
				
			} else {
				
			}
		// GET 
		}else{

			$this->set('phases', $this->Phase->find(
					'list', 
					array(
						//'conditions' => array('Phase.state' => 1),
						'order' => array('name' => 'asc'), 
						'recursive' => 0
					)
				)
			);

			$this->set('networks', $this->Network->find(
					'list', 
					array(
						//'conditions' => array('Phase.state' => 1),
						'order' => array('name' => 'asc'), 
						'recursive' => 0
					)
				)
			);

			$this->set('professions', $this->Profession->find(
					'list', 
					array(
						//'conditions' => array('Phase.state' => 1),
						'order' => array('name' => 'asc'), 
						'recursive' => 0
					)
				)
			);
		}
	}

	public function result($id = null)
	{
		$id = base64_decode($id);
		$inscription =  $this->Inscription->find('first', array('conditions' => array('Inscription.id' => $id), 'recursive' => 1));
		$this->set('inscription', $inscription);
	}

	public function print_pdf($id = null)
	{
		if (!$id) 
		{ 
			$this->Session->setFlash('Sorry, there was no property ID submitted.'); 
			$this->redirect(array('action'=>'index'), null, true); 
		} 
		
		Configure::write('debug',0); // Otherwise we cannot use this method while developing 

		$id = base64_decode($id);
		$inscription =  $this->inscription->find('first', array('conditions' => array('id' => $id), 'recursive' => 1));
		$this->set('inscription', $inscription);
		
		$this->layout = 'bootstrap/pdf'; //this will use the pdf.ctp layout 
		$this->response->type('pdf');
	}
}
?>