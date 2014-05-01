<?php

	class permitir_creditosController extends ApplicationController {
	
	
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
						
			$pc  = new PermitirCreditos();
			
			$cli=$this->Clientes->findFirst("id='".$_REQUEST["clientes_id"]."'");
			$deu=$this->Deudores->findFirst("id='".$_REQUEST["deudores_id"]."'");
			
				
			if(($_REQUEST["clientes_id"]=='')&&($_REQUEST["estado"]=='')){
				$sw=1;
				Flash::error("Error: Por favor escoja un cliente o el estado...");
			}
			
			if(($_REQUEST["deudores_id"]=='')&&($_REQUEST["estado"]=='')){
				$sw=1;
				Flash::error("Error: Por favor escoja un deudor o el estado...");
			}
			
			if(($_REQUEST["clientes_id"]!='')&&($_REQUEST["estado"]!='')){
				
				$sw=0;
				
				if($this->PermitirCreditos->count("nit = '".$cli->nit."'")>0){
				Flash::error("Cliente ya está registrado.");
				$sw=1;
				}
				
				
			}
			
			if(($_REQUEST["deudores_id"]!='')&&($_REQUEST["estado"]!='')){
				
				$sw=2;
				
				if($this->PermitirCreditos->count("nit = '".$deu->nit."'")>0){
				Flash::error("Deudor ya está registrado.");
				$sw=1;
				}
				
			}
		
			
			if(($_REQUEST["clientes_id"]!='')&&($_REQUEST["deudores_id"]!='')){
				$sw=1;
				Flash::error("Error: Por favor escoja un cliente o un deudor a la vez...");
			}
			
			
			
			$pc->id = '0';
			$pc->nit = $cli->nit;
			$pc->estado = $_REQUEST["estado"];
			
			if($sw==0){	
					if($pc->save()){
						
						Flash::success("Cliente Permitido");
						echo "<script>quitar_mensajes();</script>";
		
					}else{
					
						Flash::error("Error: No se pudo Guardar el registro...");	
						
						foreach($pc->getMessages() as $message){
								  Flash::error($message->getMessage());
						}	  
						
					}
			
			}else{
				
			 $pc->id = '0';
			 $pc->nit = $deu->nit;
			 $pc->estado = $_REQUEST["estado"];
			 
			 if($sw==2){	
				if($pc->save()){
						
						Flash::success("Deudor Permitido");
						echo "<script>quitar_mensajes();</script>";
		
					}else{
					
						Flash::error("Error: No se pudo Guardar el registro...");	
						
						foreach($pc->getMessages() as $message){
								  Flash::error($message->getMessage());
						}	  
						
					}
			      }//fin sw;
			 }
		}
		
		public function modificarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){
					
				$id = $_REQUEST['id'];
					
				$pc = $this->PermitirCreditos->findFirst(" id = '$id' ");
				$cli=$this->Clientes->findFirst("nit='".$pc->nit."'");
			    $deu=$this->Deudores->findFirst("nit='".$pc->nit."'");
				
				
				if($this->Clientes->count("nit='".$pc->nit."'")>0){
					
					Tag::displayTo("id",$pc->id);				
					Tag::displayTo("clientes",$cli->id);
					Tag::displayTo("estado",$pc->estado);
					
				
				}
				
				if($this->Deudores->count("nit='".$pc->nit."'")>0){
					
					Tag::displayTo("id",$pc->id);				
					Tag::displayTo("deudores",$deu->id);
					Tag::displayTo("estado",$pc->estado);
				
				}
				
				/*$deshabilitar="<script>jQuery(\"#deudores_id\").val('');</script>";	
				echo $deshabilitar;	*/
							
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Usuario para modificar.");
				}
		}
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		public function buscarAction(){
		
		}
		
		
		public function updateAction(){
			
			$this->setResponse("ajax");
			$pc= new PermitirCreditos();
			$cli= new Clientes();
			$deu= new Deudores();
			$sw=0;
			
			$pc = $this->PermitirCreditos->findFirst(" id = '".$_REQUEST["id"]."' ");
			$cli = $this->Clientes->findFirst("id='".$_REQUEST['clientes_id']."'");
			$deu = $this->Deudores->findFirst("id='".$_REQUEST['deudores_id']."'");
			
			if($cli->nit!=''){
				$sw=0;
			}
					
			if($deu->nit!=''){
				$sw=0;
			}
						
			if($sw==1){
				Flash::error("Error: Clientes y/o Deudor ya existe!!!");
			
			}else{
				
				if($sw==0){
					
						$pc->nit= $cli->nit;
						$pc->estado = $this->getPostParam("estado");
						
								
						if($pc->save()){
							  Flash::success("Se Actualizo correctamente el registro");
							  /*echo "<script>redireccionar_action('menu');</script>";	*/
							  echo "<script>quitar_mensajes();</script>";
							  echo "<script>redireccionar_action('permitir_creditos/modificar/?id=$pc->id');</script>";
							  
						}else{
							 Flash::success("Error: No se pudo Actualizar el registro");	
							 /*echo "<script>redireccionar_action('menu');</script>";	*/
									
						}
				  }
			  }
			
		}
		
		public function eliminarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){
					
				$id = $_REQUEST['id'];
					
				$pc = $this->PermitirCreditos->findFirst(" id = '$id' ");
				$cli=$this->Clientes->findFirst("nit='".$pc->nit."'");
			    $deu=$this->Deudores->findFirst("nit='".$pc->nit."'");
				
				
				if($this->Clientes->count("nit='".$pc->nit."'")>0){
					
					Tag::displayTo("id",$pc->id);				
					Tag::displayTo("clientes",$cli->id);
					Tag::displayTo("estado",$pc->estado);
					
				
				}
				
				if($this->Deudores->count("nit='".$pc->nit."'")>0){
					
					Tag::displayTo("id",$pc->id);				
					Tag::displayTo("deudores",$deu->id);
					Tag::displayTo("estado",$pc->estado);
				
				}
				
				/*$deshabilitar="<script>jQuery(\"#deudores_id\").val('');</script>";	
				echo $deshabilitar;	*/
							
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Usuario para modificar.");
				}
		}
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$pc  = new PermitirCreditos();
			
				
				if($pc->delete(" id = '".$_REQUEST["id"]."' ")){
					
					Flash::success(strtoupper(Router::getController())." Eliminada Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($tdoc->getMessages() as $message){
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