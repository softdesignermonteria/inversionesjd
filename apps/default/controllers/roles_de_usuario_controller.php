<?php

	class Roles_de_usuarioController extends ApplicationController {



		/**

		 * Inicializa el Controlador Login

		 *

		 */



		public function initialize() {

			$this->setTemplateAfter("adminiziolite");

		}



		/**

		 * Index por defecto del Controlador

		 *

		 */

		 

		public function indexAction(){

		

		}

		

		/**

		 * Aqui sale el formulario de Iniciar Sesi�n

		 *

		 */

		 

		 public function not_found($controller, $action){

				 $this->set_response('view');

				 Flash::error("No esta definida la accion $action, redireccionando");

				 return $this->redirect('administrador');

				 

		 }



		/**

		 * Esta accion es ejecutada por application/before_filter en caso

		 * de que el usuario trate de entrar a una accion a la cual

		 * no tiene permiso

		 *

		 */

		public function no_accesoAction(){

				$this->set_response('view');

				 Flash::error("No esta definida la accion $action, redireccionando");

				 return $this->redirect('administrador');

		}

			

		
		/****
			agregarAction vista en la cual se mostrara el 
			formulario para agregar clientes
		***/
		public function agregarAction(){
					
        }
		
		
		
		
		public function addAction(){
			
			$this->setResponse('view');
			$sw=0;
			$role  = new Role();
			//if($role->count("id = '".$_REQUEST['codigo_role']."' ")>0){ $sw=1; Flash::error("Codigo ya Existe.."); }
			$id = $_REQUEST['codigo_role'];
			if($id==''){$id=0;}	

			$role->id   = $id; 
			$role->role = $_REQUEST['nombre_role']; 
			
			if($sw==0){					
				if($role->save()){
					
					Flash::success(Router::getController()." Guardada Satisfactoriamente");
	
				}else{
				
					Flash::error("Error: No se pudo Guardar el registro...");	
					
					foreach($role->getMessages() as $message){
							  Flash::error($message->getMessage());
					}	  
					
				}
			}
					
	    }
		
		
		/*
		* Vista trae formulario de modificacion
		*/
		public function modificarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){	
				$codigo_role = $id;
		
				$ies  = $this->Role->findFirst(" id = '$codigo_role' ");
				
				Tag::displayTo("codigo_role",$ies->id);
				Tag::displayTo("nombre_role",$ies->role);
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar ".Router::getController()." para modificar.");
				}
		}
		
		/*
		* modifica datos de las ies
		*/
		
		public function updateAction(){
			
			$this->setResponse('view');
			$sw=0;
			$role  = new Role();
			//if($ies->count("id = '".$_REQUEST['codigo_role']."' ")>0){ $sw=1; Flash::error("Codigo ya Existe.."); }
			$rolet = $this->Role->findFirst(" id = '".$_REQUEST['codigo_role']."' ")->role;	
			$role->id   = $_REQUEST['codigo_role']; 
			$role->role = $_REQUEST['nombre_role']; 
			
			if($sw==0){					
				if($role->save()){
					Flash::success(Router::getController()." Modificado Satisfactoriamente");
					
					
					
					if( $this->AccessList->count(" role = '$rolet' ") > 0 ){
						if($this->AccessList->update(" role = '".$_REQUEST['nombre_role']."' ","conditions: role = '$rolet' ")){
							Flash::success("Se actualizaron los permisos Satisfactoriamente");
						}
					}
						
				}else{
				
					Flash::error("Error: No se pudo Guardar el registro...");	
					
					foreach($role->getMessages() as $message){
							  Flash::error($message->getMessage());
					}	  
					
				}
			}
			echo "<script>quitar_mensajes();</script>";		
	    }
		
		
		/*
		* Vista trae formulario de modificacion
		*/
		public function eliminarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){	
				$codigo_role = $id;
		
				$role  = $this->Role->findFirst(" id = '$codigo_role' ");
				
				Tag::displayTo("codigo_role",$role->id);
				Tag::displayTo("nombre_role",$role->role);
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar ".Router::getController()." para modificar.");
				}
		}
		
		public function deleteAction(){
			
			
			
			$this->setResponse('view');
			
			$role  = new Role();
			
				
				if($role->delete(" id = '".$_REQUEST["codigo_role"]."' ")){
					
					Flash::success(Router::getController()." Eliminada Satisfactoriamente");
					
					
					if( $this->AccessList->count(" role = '$rolet' ") > 0 ){
						if($this->AccessList->delete(" role = '".$_REQUEST['nombre_role']."' ")){
							Flash::success("Se borraron los permisos Satisfactoriamente");
						}
					}
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($role->getMessages() as $message){
							  Flash::error("Error Eliminando Ies ".$message->getMessage());
					}	  
					
				}
			echo "<script>quitar_mensajes();</script>";		
	    }
		
		
		public function find_buscarAction(){
			$this->setResponse("ajax");
		}
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		
		public function buscarAction(){
			//$this->setResponse("ajax");
		}
		
		public function detalle_buscarAction(){
			//$this->setResponse("ajax");
		}
		



	}



?>