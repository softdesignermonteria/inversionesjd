<?php
class tarifa_ivaController extends StandardForm {
  
	public $scaffold = true;

	
	public function initialize(){
			$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
	}
	
	

}
?>