
<?php

	class CxcController extends ApplicationController {

						
		public function indexAction(){

		}
		
		public function find_buscarAction(){
			$this->setResponse("ajax");
		}
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		public function ccfind_buscarAction(){
			$this->setResponse("ajax");
		}
		
		public function ccfind_detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		public function print_jaspertAction($id_cliente){
				$this->setResponse("view");
				$cr = new Creditos();
				$cr  = $this->Creditos->findFirst(" clientes_id = '$id_cliente'");
				$this->setParamToView("id_cliente",$id_cliente);
				$this->setParamToView("empresa_id",$cr->empresa_id);
		}	
		
		public function cxc_resumenAction(){
				$this->setResponse("view");
			
		}
		
			
	}

?>