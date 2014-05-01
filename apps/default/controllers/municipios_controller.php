<?php

	class MunicipiosController extends ApplicationController {


		public function initialize() {
		  // $this->setTemplateAfter("a_bit_boxy");
		   //$this->setTemplateAfter("menu_azul");
		   	$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
		}	
				
						
		public function indexAction(){

		}
		
		
		
		public function buscarAction(){

		}
		
		public function modificarAction($id){
				$mun = new Municipios();
				$mun = $this->Municipios->findFirst(" id = '$id' ");
				
				Tag::displayTo("id",$mun->id);
				Tag::displayTo("municipio",$mun->municipio);
				Tag::displayTo("departamentos_id",$mun->departamentos_id);
				Tag::displayTo("codigo_dane",$mun->codigo_dane);

		}
		
		public function eliminarAction($id){
				$mun = new Municipios();
				$mun = $this->Municipios->findFirst(" id = '$id' ");
				
				Tag::displayTo("id",$mun->id);
				Tag::displayTo("municipio",$mun->municipio);

		}
		
						
		public function agregarAction(){

		}
		
						
		public function addAction(){
			$this->setResponse("ajax");
			$sw=0;
			$mun = new Municipios();
			
			$mun->id                = $_REQUEST["id"];
			$mun->municipio         = $_REQUEST["municipio"];
			$mun->departamentos_id  = $_REQUEST["departamentos_id"];
			$mun->codigo_dane       = $_REQUEST["codigo_dane"];
			
			if($sw==0){					
				if($mun->save()){
					
					Flash::success(Router::getController()." Guardada Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
					Flash::error("Error: No se pudo Guardar el registro...");	
					foreach($mun->getMessages() as $message){
							  Flash::error($message->getMessage());
					}	  
				}
				
			}
			
		}
		
		public function updateAction(){
			$this->setResponse("ajax");
			$sw=0;
			$mun = new Departamentos();
			
			$mun->id                = $_REQUEST["id"];
			$mun->municipio         = $_REQUEST["municipio"];
			$mun->departamentos_id  = $_REQUEST["departamentos_id"];
			$mun->codigo_dane       = $_REQUEST["codigo_dane"];
			
			if($sw==0){					
				if($mun->save()){
					
					Flash::success(Router::getController()." Actualizado Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
					echo "<script>redireccionar_action('".Router::getController()."/modificar/$mun->id');</script>";
	
				}else{
					Flash::error("Error: No se pudo Modificar el registro...");	
					foreach($mun->getMessages() as $message){
							  Flash::error($message->getMessage());
					}	  
				}
				
			}
			
		}
		
		public function deleteAction($id){
			$this->setResponse("ajax");
			$sw=0;
			$mun = new Municipios();
			$mun = $this->Municipios->findFirst(" id = '$id' ");
			
			if($sw==0){					
				if($mun->delete()){
					Flash::success(Router::getController()." Eliminado Satisfactoriamente");
					Flash::addMessage(Router::getController()." Eliminado Satisfactoriamente",Flash::SUCCESS);
					echo "<script>redireccionar_action('".Router::getController()."/');</script>";
				}else{
					Flash::error("Error: No se pudo Eliminar el registro...");	
					foreach($mun->getMessages() as $message){
							  Flash::error($message->getMessage());
					}	  
				}
				
			}
			
		}
		
		
		
		
		public function find_buscarAction(){
			$this->setResponse("ajax");
			//public $scaffold = false;
		}
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
			//public $scaffold = false;
		}
		
		public function validarAction($id,$opcion){

			$this->setResponse("view");
			
			$sw=0;
			$dpto = new Departamentos();
			if( $this->Municipios->count(" id = '$id' ") > 0 ){
				$dpto = $this->Municipios->findFirst(" id = '$id' ");
				echo "<script>jQuery(\"#$opcion\").val(\"\");jQuery(\"#$opcion\").val(\"$dpto->municipio\");</script>";
				
			}else{
				Flash::error("No se Encontro Municipio");
				echo "<script>jQuery(\"#$opcion\").val(\"\");</script>";
				}
			
			
			//public $scaffold = false;
		}
					
	}

?>