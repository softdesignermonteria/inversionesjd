<?php

	class tipo_documentoController extends ApplicationController {
	
	
		public function initialize() {
		  	$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
		}



		public function indexAction(){
		
		}
				
		
		
		/****
			agregarAction vista en la cual se mostrara el 
			formulario para agregar clientes
		***/
		public function agregarAction(){
					
        }
		
			
		public function addAction(){
			
			$this->setResponse('ajax');
		
				
			$tp  = new TipoDocumento();
			
			
			$tp->id = '0';
			$tp->nombre = $_REQUEST['nombre'];
			$tp->empresa_id = Session::get("id_empresa");
			$tp->logo = $_REQUEST['logos'];
			$tp->ancho = $_REQUEST['ancho'];
			$tp->alto = $_REQUEST['alto'];
			$tp->mostrar_logo = $_REQUEST['mostrar_logo'];
			$tp->size = $_REQUEST['size'];
			$tp->font = $_REQUEST['font'];
			$tp->tipo_letra = $_REQUEST['tipo_letra'];
			$tp->papel = $_REQUEST['papel'];
		
					
			if($tp->save()){
				
				Flash::success("Tipo Documento Guardado Satisfactoriamente");
				echo "<script>quitar_mensajes();</script>";

			}else{
			
				Flash::error("Error: No se pudo Guardar el registro...");	
				
				foreach($tp->getMessages() as $message){
				          Flash::error($message->getMessage());
				}	  
				
			}
					
	    }
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		public function buscarAction(){
		
		}
		
		
		public function updateAction(){
			
			$this->setResponse("ajax");
			$tdoc= new TipoDocumento();
			$sw=0;
			//$usuario = $Usuario->findFirst("username = '".$_REQUEST['username']."'");
			
			if($sw==1){
				Flash::error("Error: Tipo Documento ya existe!!!");
			
			}else{
				
				if($sw==0){
					
						$tdoc = $this->TipoDocumento->findFirst(" id = '".$_REQUEST["id"]."' ");
						//$Usuario->setId($this->getPostParam("id"));
						$tdoc->nombre= $this->getPostParam("nombre");
						$tdoc->logo = $this->getPostParam("logos");
						$tdoc->ancho = $this->getPostParam("ancho");
						$tdoc->size = $this->getPostParam("size");
						$tdoc->font = $this->getPostParam("font");
						$tdoc->tipo_letra = $this->getPostParam("tipo_letra");
						$tdoc->papel = $this->getPostParam("papel");
						
										
						if($tdoc->save()){
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
					
				$tipo_documento_id = $id;
						
				$tdoc = $this->TipoDocumento->findFirst(" id = '$tipo_documento_id' ");
				
				Tag::displayTo("id",$tdoc->id);				
				Tag::displayTo("nombre",$tdoc->nombre);
				Tag::displayTo("logos",$tdoc->logo);
				Tag::displayTo("ancho",$tdoc->ancho);
				Tag::displayTo("alto",$tdoc->alto);
				Tag::displayTo("size",$tdoc->size);
				Tag::displayTo("font",$tdoc->font);
				Tag::displayTo("tipo_letra",$tdoc->tipo_letra);
				Tag::displayTo("papel",$tdoc->papel);
				
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Ies para modificar.");
				}
		}
		
		public function eliminarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){
					
				$tipo_documento_id = $id;
						
				$tdoc = $this->TipoDocumento->findFirst(" id = '$tipo_documento_id' ");
				
				Tag::displayTo("id",$tdoc->id);				
				Tag::displayTo("nombre",$tdoc->nombre);
				Tag::displayTo("logos",$tdoc->logo);
				Tag::displayTo("ancho",$tdoc->ancho);
				Tag::displayTo("alto",$tdoc->alto);
				Tag::displayTo("size",$tdoc->size);
				Tag::displayTo("font",$tdoc->font);
				Tag::displayTo("tipo_letra",$tdoc->tipo_letra);
				Tag::displayTo("papel",$tdoc->papel);
				
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Ies para modificar.");
				}
		}
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$tdoc2  = new TipoDocumento();
			
				
				if($tdoc2->delete(" id = '".$_REQUEST["id"]."' ")){
					
					Flash::success(strtoupper(Router::getController())." Eliminada Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($tdoc2->getMessages() as $message){
							  Flash::error("Error Eliminando Ies ".$message->getMessage());
					}	  
					
				}
					
	    }
				
		
/*		public function deleteAction(){
			
			
			
			$this->setResponse('view');
			
			$tp  = new TipoDocumento();
			$sw=0;

			if($this->Remisiones->count("tipo_documento_id = '".$_REQUEST["idt"]."'")>0){
				$sw=1;
				Flash::error("Existe este tipo de documento en la tabla de Remisiones");
			}
			if($this->Devoluciones->count("tipo_documento_id = '".$_REQUEST["idt"]."'")>0){
				$sw=1;
				Flash::error("Existe este tipo de documento en la tabla de Devoluciones");
			}
			if($this->Factura->count("tipo_documento_id = '".$_REQUEST["idt"]."'")>0){
				$sw=1;
				Flash::error("Existe este tipo de documento en la tabla de Factura o Cuenta de Cobro");
			}
			if($this->RecibosCaja->count("tipo_documento_id = '".$_REQUEST["idt"]."'")>0){
				$sw=1;
				Flash::error("Existe este tipo de documento en la tabla de Recibos de Caja");
			}
			if($this->Egresos->count("tipo_documento_id = '".$_REQUEST["idt"]."'")>0){
				$sw=1;
				Flash::error("Existe este tipo de documento en la tabla de Egresos");
			}
			
			if($sw==0){
				if($tp->delete(" id = '".$_REQUEST["idt"]."' ")){
					
					Flash::success("Tipo Documento Eliminado Satisfactoriamente");
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar y Guardar el registro...");	
					
					foreach($tp->getMessages() as $message){
							  Flash::error($message->getMessage());
					}	  
					
				}
			}//fin si todo bien
			
			
			
					
	    }*/
		
		
	
	  
   }
?>