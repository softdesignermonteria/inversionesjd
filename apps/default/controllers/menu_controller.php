<?php

class MenuController extends ApplicationController {

	public function initialize() {
		//$this->setTemplateAfter("menu_azul");
		 //$this->setTemplateAfter("menu_azul");
		 	$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
	}

	public function indexAction(){
		
		
	}

}

?>