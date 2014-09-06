<?php

	class Clientes_tempController extends ApplicationController {
	
		
	
	
		public function initialize() {
		   //$this->setTemplateAfter("a_bit_boxy");
		   
		   // $this->setTemplateAfter("menu_azul");
		   	//$temp=$this->Admin->findFirst(" id = '".Session::get("tipo_usuario")."' ")->plantilla;
			$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
		}
		
		public function cargar_archivoAction(){
		
		}
		
		public function buscar_archivosAction(){
		
			$this->setTemplateAfter("default");
		
		}
		
		public function buscar_uploadAction(){
		
				$this->setResponse("ajax");
		
		}
		
		public function uploadAction(){
		
			$this->setResponse("ajax");
		
		}
		
		
   }
?>