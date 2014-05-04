<?php

	class Cobradores_movilController extends ApplicationController {
	
			
		public function initialize() {
		   //$this->setTemplateAfter("a_bit_boxy");
		   
		   // $this->setTemplateAfter("menu_azul");
		   	//$temp=$this->Admin->findFirst(" id = '".Session::get("tipo_usuario")."' ")->plantilla;
			$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
		}
		
		public function extraer_clientesAction(){
			
			$this->setResponse("view");
		
		}
		
		public function extraer_cobradoresAction(){
			
			$this->setResponse("view");
		
		}
		
				
		
}