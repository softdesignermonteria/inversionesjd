<?php

	class DepartamentosController extends ApplicationController {

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
				$dpto = new Departamentos();
				$dpto = $this->Departamentos->findFirst(" id = '$id' ");
				
				Tag::displayTo("id",$dpto->id);
				Tag::displayTo("departamento",$dpto->departamento);

		}
		
		public function eliminarAction($id){
				$dpto = new Departamentos();
				$dpto = $this->Departamentos->findFirst(" id = '$id' ");
				
				Tag::displayTo("id",$dpto->id);
				Tag::displayTo("departamento",$dpto->departamento);

		}
		
						
		public function agregarAction(){

		}
		
						
		public function addAction(){
			$this->setResponse("ajax");
			$sw=0;
			$dpto = new Departamentos();
			
			$dpto->id            = $_REQUEST["id"];
			$dpto->departamento  = $_REQUEST["departamento"];
			
			if($sw==0){					
				if($dpto->save()){
					
					Flash::success(Router::getController()." Guardada Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
					Flash::error("Error: No se pudo Guardar el registro...");	
					foreach($dpto->getMessages() as $message){
							  Flash::error($message->getMessage());
					}	  
				}
				
			}
			
		}
		
		public function updateAction(){
			$this->setResponse("ajax");
			$sw=0;
			$dpto = new Departamentos();
			
			$dpto->id            = $_REQUEST["id"];
			$dpto->departamento  = $_REQUEST["departamento"];
			
			if($sw==0){					
				if($dpto->save()){
					
					Flash::success(Router::getController()." Actualizado Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
					echo "<script>redireccionar_action('".Router::getController()."/modificar/$dpto->id');</script>";
	
				}else{
					Flash::error("Error: No se pudo Modificar el registro...");	
					foreach($dpto->getMessages() as $message){
							  Flash::error($message->getMessage());
					}	  
				}
				
			}
			
		}
		
		public function deleteAction($id){
			$this->setResponse("ajax");
			$sw=0;
			$dpto = new Departamentos();
			$dpto = $this->Departamentos->findFirst(" id = '$id' ");
			
			if($sw==0){					
				if($dpto->delete()){
					Flash::success(Router::getController()." Eliminado Satisfactoriamente");
					Flash::addMessage(Router::getController()." Eliminado Satisfactoriamente",Flash::SUCCESS);
					echo "<script>redireccionar_action('".Router::getController()."/');</script>";
				}else{
					Flash::error("Error: No se pudo Eliminar el registro...");	
					foreach($dpto->getMessages() as $message){
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
			if( $this->Departamentos->count(" id = '$id' ") > 0 ){
				$dpto = $this->Departamentos->findFirst(" id = '$id' ");
				echo "<script>jQuery(\"#$opcion\").val(\"\");jQuery(\"#$opcion\").val(\"$dpto->departamento\");</script>";
				
			}else{
				Flash::error("No se Encontro Departamento");
				echo "<script>jQuery(\"#$opcion\").val(\"\");</script>";
				}
			
			
			//public $scaffold = false;
		}
			
	}

?>