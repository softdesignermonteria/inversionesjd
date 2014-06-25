<?php

	class Clientes_movilController extends ApplicationController {
	
			
		public function initialize() {
		   //$this->setTemplateAfter("a_bit_boxy");
		   
		   // $this->setTemplateAfter("menu_azul");
		   	//$temp=$this->Admin->findFirst(" id = '".Session::get("tipo_usuario")."' ")->plantilla;
			$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
		}
		
		
		public function addAction(){
			$this->setResponse("view");
			$cli  = new Clientes();
			$msg="";
			
			$respuesta[]=array("mensaje"=>"true");	
			

			$sw = 0;
			//Flash::error($sw1);
								
			if( $sw==0 ){
			
				$cli->id             = '0';
				$cli->nit            = $this->getPostParam("cedula");
				$cli->nombre1        = trim($this->getPostParam("nombre1"));
				$cli->nombre2        = trim($this->getPostParam("nombre2"));
				$cli->apellido1      = trim($this->getPostParam("apellido1"));
				$cli->apellido2      = trim($this->getPostParam("apellido2"));
				$cli->razon_social   = trim($cli->nombre1 + " " + $cli->nombre2 + " " + $cli->apellido1 + " " + $cli->apellido2);
				$cli->direccion      = $this->getPostParam("direccion");
				$cli->telefono       = $this->getPostParam("telefono");
				$cli->celular        = $this->getPostParam("celular");
				$cli->referencia_id  = 1;
				//$cli->departamentos_id = $this->getPostParam("departamentos_id");
				//$cli->municipios_id = $this->getPostParam("municipios_id");				
					
	
				if( $cli->save() ){
						$msg="Se insertó correctamente el registro";
						$respuesta[]=array("mensaje"=>"true","descripcion"=>$msg);	
					}else{
						$msg="";
						foreach($cli->getMessages() as $message){
								  Flash::error($message->getMessage());$msg.=$message->getMessage();
						}
						$respuesta[]=array("mensaje"=>"false","descripcion"=>$msg);	
					 }
			    }
			 		   
					   
			$this->setParamToView("respuesta",$respuesta);		   
					   
		}
		
		public function extraer_clientesAction(){
			
			$this->setResponse("view");
		
		}
				
		
}