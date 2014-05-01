<?php

class ConsecutivosController extends ApplicationController {

		
		 public function beforeFilter(){
		
			 
		 }		

	    public function initialize() {
			//$this->setTemplateAfter("a_bit_boxy");
			// $this->setTemplateAfter("menu_azul");
			$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
	    }

	    public function indexAction(){
		
		
	    }
	
	    public function agregarAction(){
			
		}
		
		public function addAction(){
			//primero instanciamos clase clientes
			$this->setResponse('view');
			$con  = new DetalleConsecutivos();
			$con2  = new DetalleConsecutivos();
			
			$sw = 0;
			if($this->DetalleConsecutivos->count("id = '".$this->getPostParam("id")."'")>0){
				Flash::error("CONSECUTIVO YA EXISTE EN NUESTRA BASE DE DATOS");
				$sw=1;
			}
			
			if($sw==0){
			//cargamos el objeto mediantes los metodos setters
			$con->id = '0';
			$con->empresa_id = Session::get("id_empresa");
			$con->descripcion = $_REQUEST["descripcion"];
			$con->prefijo = $_REQUEST["prefijo"];
			$con->desde = $_REQUEST["desde2"];
			$con->hasta = $_REQUEST["hasta2"];
			$con->resolucion_dian = $_REQUEST["resolucion_dian"];
			$con->fecha = $_REQUEST["fecha"];
			$con->tipo_documento_id = $_REQUEST["tipo_documento_id"];
			$con->activo = $_REQUEST['activo'];
			
			if($con->save()){
				Flash::success("Se insertó correctamente el registro");
				echo "<script>quitar_mensajes();</script>";
						/*echo "<script>jQuery('#consecutivos_add').reset();</script>";*/
			}else{
				 Flash::error("Error: No se pudo insertar registro");	
				 foreach($con->getMessages() as $mensajes){
				 Flash::error("$mensajes");				
				 }
			   }
			}
	    }
		
		public function showAction($id){
          
            $consecutivos = $this->DetalleConsecutivos->find("id='$id'");
            $this->setParamToView("consecutivos", $consecutivos);
	
		}
		
		
		public function find__buscarAction(){
			$this->setResponse("ajax");
		}
		
		
		
		public function find_Detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		
		public function buscarAction(){
		
		
		}
		
		
		public function updateAction(){
			
			$this->setResponse("ajax");
			$tdoc= new DetalleConsecutivos();
			$sw=0;
			//$usuario = $Usuario->findFirst("username = '".$_REQUEST['username']."'");
			
			if($sw==1){
				Flash::error("Error: Tipo Documento ya existe!!!");
			
			}else{
				
				if($sw==0){
					
						$tcons = $this->DetalleConsecutivos->findFirst(" id = '".$_REQUEST["id"]."' ");
						//$Usuario->setId($this->getPostParam("id"));
						$tcons->prefijo= $this->getPostParam("prefijo");
						$tcons->desde = $this->getPostParam("desde2");
						$tcons->hasta = $this->getPostParam("hasta2");
						$tcons->fecha = $this->getPostParam("fecha");
						$tcons->activo = $this->getPostParam("activo");
						$tcons->tipo_documento_id = $this->getPostParam("tipo_documento_id2");
						$tcons->descripcion = $this->getPostParam("descripcion");
						
										
						if($tcons->save()){
							  Flash::success("Se Actualizo correctamente el registro");
							  /*echo "<script>redireccionar_action('menu');</script>";	*/
							  echo "<script>quitar_mensajes();</script>";
							  
						}else{
							 Flash::success("Error: No se pudo Actualizar el registro");	
							 /*echo "<script>redireccionar_action('menu');</script>";	*/
									
						}
				  }
			  }
			
		}
		
		public function modificarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){
					
				$consecutivo_id = $id;
						
				$tcons = $this->DetalleConsecutivos->findFirst(" id = '$consecutivo_id' ");
				
				Tag::displayTo("id",$tcons->id);				
				Tag::displayTo("prefijo",$tcons->prefijo);
				Tag::displayTo("desde2",$tcons->desde);
				Tag::displayTo("hasta2",$tcons->hasta);
				Tag::displayTo("fecha",$tcons->fecha);
				Tag::displayTo("activo",$tcons->activo);
				Tag::displayTo("tipo_documento_id2",$tcons->tipo_documento_id);
				Tag::displayTo("descripcion",$tcons->descripcion);

				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Ies para modificar.");
				}
		}
		
		public function eliminarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){
					
				$consecutivo_id = $id;
						
				$tcons = $this->DetalleConsecutivos->findFirst(" id = '$consecutivo_id' ");
				
				Tag::displayTo("id",$tcons->id);				
				Tag::displayTo("prefijo",$tcons->prefijo);
				Tag::displayTo("desde2",$tcons->desde);
				Tag::displayTo("hasta2",$tcons->hasta);
				Tag::displayTo("fecha",$tcons->fecha);
				Tag::displayTo("activo",$tcons->activo);
				Tag::displayTo("tipo_documento_id2",$tcons->tipo_documento_id);
				Tag::displayTo("descripcion",$tcons->descripcion);
				
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Ies para modificar.");
				}
		}
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$tcons  = new DetalleConsecutivos();
			
				
				if($tcons->delete(" id = '".$_REQUEST["id"]."' ")){
					
					Flash::success(strtoupper(Router::getController())." Eliminada Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($tcons->getMessages() as $message){
							  Flash::error("Error Eliminando Ies ".$message->getMessage());
					}	  
					
				}
					
	    }
		
		
}

?>