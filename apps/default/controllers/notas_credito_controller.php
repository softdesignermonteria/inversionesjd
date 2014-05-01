<?php

	class Notas_creditoController extends ApplicationController {

	
		public $prefijo;
		public $tipo_documento;
		public $tipo_documento_nombre;
		public $id_consecutivo;
		
		public $clientes_id;
		public $creditos_id;
		public $solicitud_id;

		public function initialize() {
			//$this->setTemplateAfter("a_bit_boxy");
			 //$this->setTemplateAfter("menu_azul");

			 $temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;

			$this->setTemplateAfter("$temp");

		

		}	

		

		

	 public function beforeFilter(){
			
		 //if accion es agregar entonces ejecuta
			if( Router::getAction()=='agregar' ){	
			
				//validando si tipo documento existe para la empresa logueada
				
				$td = new TipoDocumento();
				$tipo_document = $td->findFirst("nombre = '".Router::getController()."' and empresa_id = '".Session::get('id_empresa')."' ");
					
							 
				if(!$tipo_document){
					Flash::error("tipo de documento no existe en la bd - tipo_documento");
					Flash::error("se recomienda crear este tipo de documento en el apartado de configuraciones");
					Flash::error("esta accion es solo la pueden hacer los administradores del sistema");
					//$this->redirect("administrador/index");
				    //$authLog = new Logger("File", "auth_failed.txt");
				   	//$authLog->log("Tipo Documento No Existe:  '". $this->getControllerName()."/".$this->getActionName()."' Fecha ".date("Y-m-d H:i:s"));
					 $syslogger = new Syslogger();
					 $syslogger->username      =  Session::get(md5("admin_username"));
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    = $this->getControllerName();
					 $syslogger->action        = $this->getActionName();
					 $syslogger->error_sistema = "tipo de documento no existe en la bd. se recomienda crear este tipo de documento en el apartado de configuraciones '". $this->getControllerName()."/".$this->getActionName()."'  Fecha: ".date("Y-m-d H:i:s");
					 $syslogger->descripcion   = "Tipo Documento No Existe";
					 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
					 $syslogger->fecha         = date("Y-m-d H:i:s");
					 if(!$syslogger->save()){
						foreach($syslogger->getMessages() as $message){ 
								Flash::error("Tabla de errores del sistema: ".$message); 
							}
					 }else{
							 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
						 }
				
					Router::routeTo("controller: login", "action: index");
					return false;
				}else{
				
					//cargando las variables globales para este controlador
					$this->tipo_documento = $tipo_document->id;
					$this->tipo_documento_nombre = $tipo_document->nombre;
					
				}//fin si o no existe docuemnto
				
				$det= new DetalleConsecutivos();
				
				$cons = $det->findFirst("tipo_documento_id = '$this->tipo_documento' and empresa_id = '".Session::get('id_empresa')."' and activo = '0' ");
				
				if(!$cons){
					Flash::error("tipo de documento no existe en la bd - Consecutivos del Sistema o no se la ha Asignado un Consecutivo valido");
					Flash::error("se recomienda crear este tipo de documento en el apartado de configuraciones consecutivos");
					Flash::error("esta accion es solo la pueden hacer los administradores del sistema");
				
					//$authLog = new Logger("File", "auth_failed.txt");
				    //$authLog->log("Detalle Consecutivo No Existe '". $this->getControllerName()."/".$this->getActionName()."' Fecha ".date("Y-m-d H:i:s"));
					$syslogger = new Syslogger();
					 $syslogger->username      =  Session::get(md5("admin_username"));
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    = $this->getControllerName();
					 $syslogger->action        = $this->getActionName();
					 $syslogger->error_sistema = "tipo de documento no existe en la bd - Consecutivos del Sistema o no se la ha Asignado un Consecutivo valido '". $this->getControllerName()."/".$this->getActionName()."'  Fecha: ".date("Y-m-d H:i:s");
					 $syslogger->descripcion   = "No existe un consecutivo valido";
					 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
					 $syslogger->fecha         = date("Y-m-d H:i:s");
					 if(!$syslogger->save()){
						foreach($syslogger->getMessages() as $message){ 
								Flash::error("Tabla de errores del sistema: ".$message); 
							}
					 }else{
							 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
						 }

					//$this->redirect("administrador/index");
					Router::routeTo("controller: login", "action: index");
					return false;
				}else{
				
					//cargando las variables globales para este controlador
					$this->prefijo = $cons->prefijo;
					$this->id_consecutivo = $cons->id;
					
				}//fin si o no existe docuemnto
		
			} //fin si comprobacion action = agregar
			
			
			/*CODIGO DE PERIMISOS DE USUARIO*/
			 $role = Session::get(md5('role'));
			  if($role==""){  $role = 'Public';   }
				  $acl = new Acl('Model', 'className: AccessList');
				  $resourceName = $this->getControllerName();
				  $operationName = $this->getActionName();
			 
			  if($acl->isAllowed($role, $resourceName, $operationName)==false){
					 /*  if($this->getControllerName()!='administrador'){
							//$this->routeTo("controller: appmenu");
							
							 Router::routeTo("controller: menu", "action: index");
					   } else {
							throw new ApplicationControllerException("No tiene permiso para usar esta aplicación");
					   }*/
				   Router::routeTo("controller: login", "action: index");	   
				   //$authLog = new Logger("File", "auth_failed.txt");
				   //$authLog->log("Autenticación fallo para el rol '$role' en el recurso '". $this->getControllerName()."/".$this->getActionName()."' Fecha ".date("Y-m-d H:i:s"));
					   $syslogger = new Syslogger();
					 $syslogger->username      =  Session::get(md5("admin_username"));
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    = $this->getControllerName();
					 $syslogger->action        = $this->getActionName();
					 $syslogger->error_sistema = "Autenticación fallo para el rol '$role' en el recurso '". $this->getControllerName()."/".$this->getActionName()."' Fecha ".date("Y-m-d H:i:s");
					 $syslogger->descripcion   = "Error de Permisos";
					 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
					 $syslogger->fecha         = date("Y-m-d H:i:s");
					 if(!$syslogger->save()){
						foreach($syslogger->getMessages() as $message){ 
								Flash::error("Tabla de errores del sistema: ".$message); 
							}
					 }else{
							 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
						 }
				   Flash::addMessage("No tiene permiso para usar esta aplicacion '". $this->getControllerName()."/".$this->getActionName()."' ",Flash::ERROR);
				   Router::routeTo("controller: login", "action: index");
				   return false;
			  }
			     /*}*/
			/*FIN*/ /*CODIGO DE PERIMISOS DE USUARIO*/
			
		 }
		
		

		

			

		public function indexAction(){



		}
		
		
		public function find_buscarAction(){



		}
		
		
		public function find_buscar_notasAction(){



		}


		public function find_detalle_buscarAction(){
			
			$this->setResponse("ajax");


		}

		
		public function agregarAction(){
	
			$empresa = $this->Empresa->findFirst(" id = '".Session::get("id_empresa")."' ");
			Tag::displayTo("fecha",date("Y-m-d"));
			Tag::displayTo("tipo_documento_id",$this->tipo_documento);
			Tag::displayTo("prefijo",$this->prefijo);
			Tag::displayTo("nombre_empresa",Session::get("nombre_empresa"));
			Tag::displayTo("empresa_id",Session::get("id_empresa"));
	
		}

		
		public function agregar_itemAction(){
			
			$this->setResponse("ajax");
			
				$id = $_REQUEST["id"];
				$desc = $_REQUEST["descripcion"];
				$fecha = $_REQUEST["vencimiento"];
				if( $id==''   ){ $id = "temp".rand(); }
				if( $desc=='' ){ $desc = "CANCELACION CUOTA POR ADMINISTRACION : ".$_REQUEST["numero_credito"]; }
				if( $fecha==''){ $fecha = date("YY-m-d"); }
				
				$responce["id"]                = $id;
				$responce["detalle_cxc_id"]    = $_REQUEST["detalle_cxc_id"];
				$responce["codigo"]            = $_REQUEST["codigo"];
				$responce["numero_credito"]    = $_REQUEST["numero_credito"];	
				$responce["descripcion"]       = $desc;	
				$responce["valor"]             = $_REQUEST["valor"];	
				$responce["vencimiento"]       = $_REQUEST["vencimiento"];	
				$responce["anulado"]           = "NO";
			
				echo json_encode($responce);
		}
		
		

		public function addAction(){

			$this->setResponse('view');
			/*echo "<script>jQuery(\"#guardar\").Attr(\"disabled\",\"disabled\");</script>";*/
			$deshabilitar = "<script>jQuery(\"#guardar\").removeAttr(\"disabled\");</script>";
			$sw=0;
			$msg_error="";
			$total_credito=0;
			
			if($sw==0){
					//abriando transacciones
				Flash::success("EMPEZANDO A GUARDAR LOS REGISTOS...");	
				$transaction = new ActiveRecordTransaction(true);   
				try{
					$transaction = TransactionManager::getUserTransaction(); 
					$this->Consecutivos->setTransaction($transaction); 
					$this->DetalleConsecutivos->setTransaction($transaction); 
					$prefijo = '';  	$consecutivo = ''; 	$tipo_documento_id = '';

							if( $_REQUEST["id"] == ''){
								$cons = $this->DetalleConsecutivos->findFirst("activo = '0' and tipo_documento_id = '".$_REQUEST['tipo_documento_id']."'");
								$id = $cons->id;
								$prefijo = $cons->prefijo;
								$consecutivo = $cons->desde;
								$tipo_documento_id = $cons->tipo_documento_id;
								//Flash::error("$id");
								//Flash::error("$prefijo");
								//Flash::error("$consecutivo");
								//Flash::error("$tipo_documento_id");
								//Flash::error($_REQUEST['tipo_documento_id']);
								$dtc = new DetalleConsecutivos();
								$dtc = $this->DetalleConsecutivos->findFirst("id = '$id'");
								$dtc->setTransaction($transaction);
								$dtc->desde = $dtc->desde+1;
									if($dtc->save()==false){
											echo $deshabilitar;
											
											foreach($dtc->getMessages() as $message){ 
												$msg_error.=Flash::error("TABLA DETALLE CONSECUTIVOS: ".$message);  
												Flash::error("TABLA DETALLE CONSECUTIVOS: ".$message); 
										}
										$transaction->rollback();
									}
									
							}else{
								$prefijo = $_REQUEST["prefijo"];
								$consecutivo = $_REQUEST["consecutivo"];
								$tipo_documento_id = $_REQUEST["tipo_documento_id"];
							}
				
				
							//Flash::success("VERIFICANDO LOS CONSECUTIVOS PARA ESTE DOCUMENTO");		
							 $encabezado = new NotasCredito();
							 $encabezado->setTransaction($transaction);
							//para traer el mismo modelo ya instanciado
							 $encabezado->id                  =  $_REQUEST["id"];
							 $encabezado->empresa_id          = $_REQUEST["empresa_id"];
							 $encabezado->clientes_id         = $_REQUEST["clientes_id"];
							 $encabezado->creditos_id         = $_REQUEST["creditos_id"];
							 $encabezado->tipo_documento_id   = $cons->tipo_documento_id;
							 $encabezado->prefijo             = $cons->prefijo;
							 $encabezado->consecutivo         = $cons->desde;   
							 $encabezado->fecha_act           = date("Y-m-d H:i:s");
							 $encabezado->hora                = date("H:i:s");
							 $encabezado->hora_act            = date("H:i:s");
							 $encabezado->fecha               = $_REQUEST["fecha"];
							 $encabezado->anulado             = '0';
							 $encabezado->activo              = '0';
							 $encabezado->observaciones       = $_REQUEST["observaciones"];
							 
						
							 //Flash::error($cons->desde);
								if($encabezado->save()==false){
									//abre for each
									foreach($encabezado->getMessages() as $message){ 
										Flash::error("TABLA Notas Credito: ".$message); 
										$msg_error.=Flash::error("TABLA Notas Credito: ".$message); 
									}
									//cierra foreach
									$transaction->rollback();
								//cierra if
								}
							
							$total_credito = 0;
							$detalles_item = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$_POST["detalles"])));
							//Flash::notice($detalles_item);
							if($detalles_item!='[]'){	
								
								if(json_decode($detalles_item)){
									Flash::success("Json Correcto");
									$detalles_item = json_decode($detalles_item);
								}else{
									echo $deshabilitar;
									Flash::error("Error json");
									$msg_error.=Flash::error("Error json"); 
									$transaction->rollback();
									
								}
	
								
								foreach( $detalles_item as $items):
									$detalles = new DetalleNotasCredito();
									$detalles->setTransaction($transaction);
									//$detalles->id                     = $items->id;
									if( trim(substr($items->id,0,4)) == trim('temp') ){
										$detalles->id                     = '0';
									}else{
										$detalles->id                     = $items->id;
									}
									$detalles->detalle_cxc_id         = $items->detalle_cxc_id;
									$detalles->notas_credito_id       = $encabezado->id;
									$detalles->descripcion            = $items->descripcion;
									$detalles->valor                  = $items->valor;
									$detalles->codigo                 = $items->codigo;
									$detalles->vencimiento            = $items->vencimiento;
									$detalles->descuento              = 0;
									$detalles->multiplicar            = -1;
									//$detalles->anulado                = '0';
									if($items->anulado == "SI") {  $detalles->anulado = '1';}
									if($items->anulado == "NO") {  $detalles->anulado = '0';  $total_credito += $detalles->valor; }
									
										if($detalles->save()==false){
											echo $deshabilitar;
											foreach($detalles->getMessages() as $message){ 
												$msg_error.=Flash::error(" TABLA DETALLE RECIBOS DE CAJA : ".$message); 
												Flash::error(" TABLA DETALLE RECIBOS DE CAJA: ".$message); 
											}
											$transaction->rollback();
											
										}	
										
													  
								endforeach; //cierra los detalles		
							
						} //cierra detalles json	

											

					$transaction->commit();
	
					Flash::success("RECIBO DE CAJA GUARDADA SATISFACTORIAMENTE");	
					echo "<script>quitar_mensajes();</script>";
					echo "<script>redireccionar_action('".Router::getController()."/show/$encabezado->id');</script>";
				}catch(TransactionFailed $e){		
					Flash::error($e->getMessage());
					$msg_error.=Flash::error($e->getMessage()); 
						echo "<script>";
						echo "jQuery('dialogo_mensajes').html('');";	
						echo "jQuery('dialogo_mensajes').html('$msg_error');";	
						echo "jQuery('dialogo_mensajes').dialog('open');";	
						echo "</script>";
					//cierre cacth try
				}
		  }//cierra if todo bien
		  
		  
		

}

	

		public function buscarAction(){

			

		}

		

		public function modificarAction($id){
			
			$rc = new NotasCredito();
			$rcd = new DetalleNotasCredito();
			$rc  = $this->NotasCredito->findFirst(" id = '$id'");
			$rcd = $this->DetalleNotasCredito->find(" notas_credito_id = '$rc->id'");
			
			$empresa = $this->Empresa->findFirst(" id = '$rc->empresa_id' ");
		
			Tag::displayTo("id"                ,$rc->id);
			Tag::displayTo("tipo_documento_id" ,$rc->tipo_documento_id);
			Tag::displayTo("prefijo"           ,$rc->prefijo);
			Tag::displayTo("consecutivo"       ,$rc->consecutivo);
			Tag::displayTo("nombre_empresa"    ,$empresa->nombre_empresa);
			Tag::displayTo("empresa_id"        ,$empresa->id);
			
			$this->clientes_id = $rc->clientes_id;
			$this->creditos_id = $rc->creditos_id;
	
			Tag::displayTo("fecha",$rc->fecha);
			Tag::displayTo("observaciones",$rc->observaciones);
			
			$this->setParamToView("detalles",$rcd);
	
	
		}


		public function updateAction(){
			$this->setResponse('view');
			/*echo "<script>jQuery(\"#guardar\").Attr(\"disabled\",\"disabled\");</script>";*/
			$deshabilitar = "<script>jQuery(\"#guardar\").removeAttr(\"disabled\");</script>";
			$sw=0;
			$msg_error="";
			$total_credito=0;
			
			if($sw==0){
					//abriando transacciones
				Flash::success("EMPEZANDO A GUARDAR LOS REGISTOS...");	
				$transaction = new ActiveRecordTransaction(true);   
				try{
					$transaction = TransactionManager::getUserTransaction(); 
					
							$prefijo = $_REQUEST["prefijo"];
							$consecutivo = $_REQUEST["consecutivo"];
							$tipo_documento_id = $_REQUEST["tipo_documento_id"];
							//Flash::success("VERIFICANDO LOS CONSECUTIVOS PARA ESTE DOCUMENTO");		
							 $encabezado = new NotasCredito();
							 $encabezado->setTransaction($transaction);
							//para traer el mismo modelo ya instanciado
							 $encabezado->id                  = $_REQUEST["id"];
							 $encabezado->empresa_id          = $_REQUEST["empresa_id"];
							 $encabezado->clientes_id         = $_REQUEST["clientes_id"];
							 $encabezado->creditos_id         = $_REQUEST["creditos_id"];
							 $encabezado->tipo_documento_id   = $tipo_documento_id;
							 $encabezado->prefijo             = $prefijo;
							 $encabezado->consecutivo         = $consecutivo;   
							 $encabezado->fecha_act           = date("Y-m-d H:i:s");
							 $encabezado->hora_act            = date("H:i:s");
							 $encabezado->fecha               = $_REQUEST["fecha"];
							 $encabezado->anulado             = '0';
							 $encabezado->activo              = '0';
							 $encabezado->observaciones       = $_REQUEST["observaciones"];
							 $encabezado->cheque              = $_REQUEST["cheque"];
							 $encabezado->banco               = $_REQUEST["banco"];
						
							 //Flash::error($cons->desde);
								if($encabezado->save()==false){
									//abre for each
									foreach($encabezado->getMessages() as $message){ 
										Flash::error("TABLA Notas Credito: ".$message); 
										$msg_error.=Flash::error("TABLA Notas Credito: ".$message); 
									}
									//cierra foreach
									$transaction->rollback();
								//cierra if
								}
							
							$total_credito = 0;
							$detalles_item = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$_POST["detalles"])));
							//Flash::notice($detalles_item);
							if($detalles_item!='[]'){	
								
								if(json_decode($detalles_item)){
									Flash::success("Json Correcto");
									$detalles_item = json_decode($detalles_item);
								}else{
									echo $deshabilitar;
									Flash::error("Error json");
									$msg_error.=Flash::error("Error json"); 
									$transaction->rollback();
									
								}
	
								
								foreach( $detalles_item as $items):
									$detalles = new DetalleNotasCredito();
									$detalles->setTransaction($transaction);
									//$detalles->id                     = $items->id;
									if( trim(substr($items->id,0,4)) == trim('temp') ){
										$detalles->id                     = '0';
									}else{
										$detalles->id                     = $items->id;
									}
									$detalles->detalle_cxc_id         = $items->detalle_cxc_id;
									$detalles->notas_credito_id        = $encabezado->id;
									$detalles->descripcion            = $items->descripcion;
									$detalles->valor                  = $items->valor;
									$detalles->codigo                 = $items->codigo;
									$detalles->vencimiento            = $items->vencimiento;
									$detalles->descuento              = 0;
									$detalles->multiplicar            = -1;
									//$detalles->anulado                = '0';
									if($items->anulado == "SI") {  $detalles->anulado = '1';}
									if($items->anulado == "NO") {  $detalles->anulado = '0';  $total_credito += $detalles->valor; }
									
										if($detalles->save()==false){
											echo $deshabilitar;
											foreach($detalles->getMessages() as $message){ 
												$msg_error.=Flash::error(" TABLA DETALLE RECIBOS DE CAJA : ".$message); 
												Flash::error(" TABLA DETALLE RECIBOS DE CAJA: ".$message); 
											}
											$transaction->rollback();
											
										}	
										
													  
								endforeach; //cierra los detalles		
							
						} //cierra detalles json	

											

					$transaction->commit();
	
					Flash::success("RECIBO DE CAJA GUARDADA SATISFACTORIAMENTE");	
					echo "<script>quitar_mensajes();</script>";
					echo "<script>redireccionar_action('".Router::getController()."/show/$encabezado->id');</script>";
				}catch(TransactionFailed $e){		
					Flash::error($e->getMessage());
					$msg_error.=Flash::error($e->getMessage()); 
						echo "<script>";
						echo "jQuery('dialogo_mensajes').html('');";	
						echo "jQuery('dialogo_mensajes').html('$msg_error');";	
						echo "jQuery('dialogo_mensajes').dialog('open');";	
						echo "</script>";
					//cierre cacth try
				}
		  }//cierra if todo bien
		  
		  
		

		}	

		public function eliminarAction(){
			$this->setResponse('view');
		}	
		

		public function showAction($id){
			$rc = new NotasCredito();
			$rcd = new DetalleNotasCredito();
			$rc  = $this->NotasCredito->findFirst(" id = '$id'");
			$rcd = $this->DetalleNotasCredito->find(" notas_credito_id = '$rc->id'");
			
			$empresa = $this->Empresa->findFirst(" id = '$rc->empresa_id' ");
		
			Tag::displayTo("id"                ,$rc->id);
			Tag::displayTo("tipo_documento_id" ,$rc->tipo_documento_id);
			Tag::displayTo("prefijo"           ,$rc->prefijo);
			Tag::displayTo("consecutivo"       ,$rc->consecutivo);
			Tag::displayTo("nombre_empresa"    ,$empresa->nombre_empresa);
			Tag::displayTo("empresa_id"        ,$empresa->id);
			
			$this->clientes_id = $rc->clientes_id;
			$this->creditos_id = $rc->creditos_id;
	
			Tag::displayTo("fecha",$rc->fecha);
			Tag::displayTo("observaciones",$rc->observaciones);
			
			$this->setParamToView("detalles",$rcd);
	
			
		}	

		public function print_jaspertAction($id){
				$this->setResponse("view");
				$rc = new NotasCredito();
				$rc  = $this->NotasCredito->findFirst(" id = '$id'");
				$this->setParamToView("id",$id);
				$this->setParamToView("empresa_id",$rc->empresa_id);
		}	



	}

	

?>

