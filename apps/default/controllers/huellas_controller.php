<?php

class HuellasController extends ApplicationController {

	public function initialize() {
		 	$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
	}

	public function indexAction(){
		$this->setResponse("view");
		
	}
	


}

?>