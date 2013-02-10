<?php
/**
* 
*/
class ValidatesController extends AppController
{
	public $uses = array('Person', 'Inscription');

	public function beforeFilter()
	{
		parent::beforeFilter();
		$this->Auth->allow();
	}

	public function checkDocument()
	{
		$this->viewClass = 'Json';
		$this->RequestHandler->setContent('json', 'application/json');

		$term = $this->request->data['term'];

		$existDocument = ($this->Person->find('count', array('conditions' => array('document' => $term))) != 0) ? true : false ;

		$data = null;

		if ($existDocument) {
			$data = array('state' => true, 'message' => "Su Numero de DNI ya fue registrado.");
		} else {
			$data = array('state' => false);
		}

		$this->set('data', $data);
		$this->set('__serialize', 'data');
	}

	public function checkNumVoucher()
	{
		$this->viewClass = 'Json';
		$this->RequestHandler->setContent('json', 'application/json');

		$term = $this->request->data['term'];

		$existNumVoucher = ($this->Inscription->find('count', array('conditions' => array('voucher_number' => $term))) != 0) ? true : false ;

		$data = null;

		if ($existNumVoucher) {
			$data = array('state' => true, 'message' => "Su Numero de DNI ya fue registrado.");
		} else {
			$data = array('state' => false);
		}

		$this->set('data', $data);
		$this->set('__serialize', 'data');
	}
}
