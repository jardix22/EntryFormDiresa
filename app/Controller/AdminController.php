	<?php
/**
* AdminController
*/
class AdminController extends AppController
{

	public $uses = array("Phase", "Network","Profession", "Inscription");

	public function index()
	{
		//$this->set("current_phase", $this->Phase->find("all", array("conditions" => array("state" => 1), "recursive" => 0 )));
		$this->set("current_phase", $this->Phase->find("first"));
		
		$networks = $this->Network->find("all", array("recursive" => 0 ));

		$this->set("networks", $networks);
	
		$countStudent = array();


		$this->set('professions', $this->Profession->find('all'));
		
/*
		foreach ($networks as $network) {
			
			$networkId = $network['Network']['id'];
			$countStudent[$networkId] = $this->Inscription->find(
				'count',
				array(
					'conditions' => array('Inscription.network_id' => $networkId)
				)
			);
		}	
		$this->set( "count", $countStudent );
	*/	
		/*
		$this->set( "modalitiess", $this->Modality->find( "all", array( "recursive" => 1 ) ) );

		*/

		//$this->set("demo", array_demo);

	}

	public function get_all()
	{
		
	}
}
