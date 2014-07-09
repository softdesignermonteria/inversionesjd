<?php

	class egresosController extends ApplicationController {
	
		
		public $prefijo;
		public $tipo_documento;
		public $tipo_documento_nombre;
		public $id_consecutivo;
		
	
		public function initialize() {
		   //$this->setTemplateAfter("a_bit_boxy");
		   // $this->setTemplateAfter("menu_azul");
		   	//$temp=$this->Admin->findFirst(" id = '".Session::get("usuarios_id")."' ")->plantilla;
			//$this->setTemplateAfter("$temp");
			$this->setTemplateAfter("adminiziolite");
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
					Router::routeTo("controller: ".Router::getController()."", "action: index");
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
					//$this->redirect("administrador/index");
					Router::routeTo("controller: ".Router::getController()."", "action: index");
					return false;
				}else{
				
					//cargando las variables globales para este controlador
					$this->prefijo = $cons->prefijo;
					$this->id_consecutivo = $cons->id;
					
				}//fin si o no existe docuemnto
				
		
			} //fin si comprobacion action = agregar
			
			
			/*CODIGO DE PERIMISOS DE USUARIO*/
			 $role = Session::get('role');
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
				   Router::routeTo("controller: menu", "action: index");	   
				   $authLog = new Logger("File", "auth_failed.txt");
				   $authLog->log("Autenticación fallo para el rol '$role' en el recurso '". $this->getControllerName()."/".$this->getActionName()."'");
				   Flash::addMessage("No tiene permiso para usar esta aplicacion '". $this->getControllerName()."/".$this->getActionName()."' ",Flash::ERROR);
				   Router::routeTo("controller: menu", "action: index");
				   return false;
			  }
			     /*}*/
			/*FIN*/ /*CODIGO DE PERIMISOS DE USUARIO*/
					 
		 }
		
		
		

		public function indexAction(){
		
		}
				
		
		
		/****
			agregarAction vista en la cual se mostrara el 
			formulario para agregar clientes
		***/
		public function agregarAction(){
			
			$empresa = $this->Empresa->findFirst(" id = '".Session::get("id_empresa")."' ");
			Tag::displayTo("fecha",date("Y-m-d"));
			Tag::displayTo("hora",date("H:i:s"));
			Tag::displayTo("tipo_documento_id",$this->tipo_documento);
			Tag::displayTo("prefijo",$this->prefijo);
			Tag::displayTo("nombre_empresa",Session::get("nombre_empresa"));
			Tag::displayTo("empresa_id",Session::get("id_empresa"));
					
        }
		
		
		
		
		public function addAction(){
			$this->setResponse('view');
				$sw=0;
				//si no hay error de valiaciones o cualquier otra novedad
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
							
								$dtc = $this->DetalleConsecutivos->findFirst("id = '$id'");
								$dtc->setTransaction($transaction);
								
								$dtc->desde = $dtc->desde+1;
									if($dtc->save()==false){
										foreach($dtc->getMessages() as $message){ 
											Flash::error("TABLA DETALLE CONSECUTIVOS: ".$message); 
										}
									$transaction->rollback();
									}
									
							}else{
								$prefijo = $_REQUEST["prefijo"];
								$consecutivo = $_REQUEST["consecutivo"];
								$tipo_documento_id = $_REQUEST["tipo_documento_id"];
							}
						
								$encabezado = new Egresos();
								$encabezado->setTransaction($transaction);
	
								 $encabezado->id                  = $_REQUEST["id"];
								 $encabezado->prefijo             = $prefijo;
								 $encabezado->consecutivo         = $consecutivo;   
								 $encabezado->proveedores_id      = 0;
								 $encabezado->cobradores_id       = $_REQUEST["cobradores_id"];
								 $encabezado->bancos_id           = 1;
								 $encabezado->forma_pago_id       = $_REQUEST["forma_pago_id"];
								 $encabezado->empresa_id          = $_REQUEST["empresa_id"];
								 $encabezado->tipo_documento_id   = $tipo_documento_id;
								 $encabezado->fecha_act           = date("Y-m-d H:i:s");
								 $encabezado->fecha               = $_REQUEST["fecha"];
								 $encabezado->hora                =  $_REQUEST["hora"];
								 $encabezado->hora_act            =  date("H:m:s");
								 $encabezado->anulado             = $_REQUEST["anulado"];
								
								if($encabezado->save()==false){
									$msg_error="";
									foreach($encabezado->getMessages() as $message){ 
										Flash::error("TABLA EGRESOS: ".$message); $msg_error.=$message;
									}
											$syslogger = new Syslogger();
											 //$syslogger->setTransaction($transaction);
											 $syslogger->username          = Session::get(md5("admin_username"));
											 $syslogger->module            = Router::getModule();
											 $syslogger->application       = Router::getApplication();
											 $syslogger->controller        = $this->getControllerName();
											 $syslogger->action            = $this->getActionName();
											 $syslogger->error_sistema     = $msg_error;
											 $syslogger->descripcion       = "Egreso No Insertado";
											 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
											 $syslogger->fecha             = date("Y-m-d H:i:s");
											 $syslogger->tipo_documento_id = $encabezado->tipo_documento_id;
											 $syslogger->prefijo           = $encabezado->prefijo;
											 $syslogger->consecutivo       = $encabezado->consecutivo;
											 $syslogger->objeto            = json_encode($encabezado);
											 if(!$syslogger->save()){
												foreach($syslogger->getMessages() as $message){ 
														Flash::error("Tabla de Aduditoria del sistema: ".$message); 
													}
											 }else{
													 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
											 }
									$transaction->rollback();
								}else{
											$syslogger = new Syslogger();
											 //$syslogger->setTransaction($transaction);
											 $syslogger->username          = Session::get(md5("admin_username"));
											 $syslogger->module            = Router::getModule();
											 $syslogger->application       = Router::getApplication();
											 $syslogger->controller        = $this->getControllerName();
											 $syslogger->action            = $this->getActionName();
											 $syslogger->error_sistema     = "Egreso Agreado Satisfactoriamente";
											 $syslogger->descripcion       = "Egreso Agreado Satisfactoriamente";
											 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
											 $syslogger->fecha             = date("Y-m-d H:i:s");
											 $syslogger->tipo_documento_id = $encabezado->tipo_documento_id;
											 $syslogger->prefijo           = $encabezado->prefijo;
											 $syslogger->consecutivo       = $encabezado->consecutivo;
											 $syslogger->objeto            = json_encode($encabezado);
											 if(!$syslogger->save()){
												foreach($syslogger->getMessages() as $message){ 
														Flash::error("Tabla de Aduditoria del sistema: ".$message); 
													}
											 }else{
													 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
											 }
									}
							
	
								$detalles = new DetalleEgresos();
								$detalles->setTransaction($transaction);
								$total = 0;
								$detalles_item = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$_POST["detalles"])));
								if(json_decode($detalles_item)){
									Flash::success("Json Correcto");
									$detalles_item = json_decode($detalles_item);
									//foreach($detalles_item as $dt):
										//print($dt->id);
										//echo "<br />";
									//endforeach;
								}else{
									Flash::error("Error json");
									$transaction->rollback();
								}
								//print_r($detalles_item);
								foreach( $detalles_item as $items):
										$detalles = new DetalleEgresos();
										$detalles->setTransaction($transaction);
										//Flash::error(substr($items->id,0,4));
									
										if( trim(substr($items->id,0,4)) == trim('temp') ){
											$detalles->id                     = '';
											//Flash::error(substr($items->id,0,4));
										}else{
											$detalles->id                     = $items->id;
											//Flash::notice(substr($items->id,0,4));
											}
										$detalles->cxp_id                 = "0";
										$detalles->egresos_id             = $encabezado->id;
										$detalles->conceptos_id           = 0;
										$detalles->concepto               = $items->concepto;
										$detalles->total                  = $items->valor;
										$detalles->multiplica             = $items->multiplica;

										if($items->anulado == "SI") {$detalles->anulado = '1';}
										if($items->anulado == "NO") {$detalles->anulado = '0';}
										//$detalles->anulado                = $items->anulado;
										$total += $items->total;
										//Flash::error(print_r($detalles));
										if($detalles->save()==false){
											$msg_error="";
											foreach($detalles->getMessages() as $message){ 
												Flash::error("TABLA: DETALLE EGRESOS ".$message); $msg_error.=$message;
											}
												$syslogger = new Syslogger();
												 //$syslogger->setTransaction($transaction);
												 $syslogger->username          = Session::get(md5("admin_username"));
												 $syslogger->module            = Router::getModule();
												 $syslogger->application       = Router::getApplication();
												 $syslogger->controller        = $this->getControllerName();
												 $syslogger->action            = $this->getActionName();
												 $syslogger->error_sistema     = $msg_error;
												 $syslogger->descripcion       = "Registro Detalle Egreso No Insertado";
												 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
												 $syslogger->fecha             = date("Y-m-d H:i:s");
												 $syslogger->tipo_documento_id = $encabezado->tipo_documento_id;
												 $syslogger->prefijo           = $encabezado->prefijo;
												 $syslogger->consecutivo       = $encabezado->consecutivo;
												 $syslogger->objeto            = json_encode($detalles);
												 if(!$syslogger->save()){
													foreach($syslogger->getMessages() as $message){ 
															Flash::error("Tabla de Aduditoria del sistema: ".$message); 
														}
												 }else{
														 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
												 }
											$transaction->rollback();
										}else{
												 $syslogger = new Syslogger();
												 //$syslogger->setTransaction($transaction);
												 $syslogger->username          = Session::get(md5("admin_username"));
												 $syslogger->module            = Router::getModule();
												 $syslogger->application       = Router::getApplication();
												 $syslogger->controller        = $this->getControllerName();
												 $syslogger->action            = $this->getActionName();
												 $syslogger->error_sistema     = "Registro Detalle Egreso Insertado";
												 $syslogger->descripcion       = "Registro Detalle Egreso Insertado";
												 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
												 $syslogger->fecha             = date("Y-m-d H:i:s");
												 $syslogger->tipo_documento_id = $encabezado->tipo_documento_id;
												 $syslogger->prefijo           = $encabezado->prefijo;
												 $syslogger->consecutivo       = $encabezado->consecutivo;
												 $syslogger->objeto            = json_encode($detalles);
												 if(!$syslogger->save()){
													foreach($syslogger->getMessages() as $message){ 
															Flash::error("Tabla de Aduditoria del sistema: ".$message); 
														}
												 }else{
														 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
												 }
												 /* Fin Registro Para Audirotia*/
											}	
								endforeach; //cierre for each del detalles temporales de factura
									
					$transaction->commit();
					Flash::success("EGRESO GUARDADO SATISFACTORIAMENTE");	
					echo "<script>alert('EGRESO GUARDADO SATISFACTORIAMENTE');";
					echo "redireccionar_action('egresos/show/id=$encabezado');</script>";
					}catch(TransactionFailed $e){		
						Flash::error($e->getMessage());
						//cierre cacth try
					}
			  }//cierra if todo bien
		}
		
		
		public function agregar_itemAction(){
			
			$this->setResponse("ajax");
			
				$id = $_REQUEST["id"];
				if( $id==''   ){ $id = "temp".rand(); }
				
				$responce["id"]                = $id;
				$responce["cxp_id"]            = $_REQUEST["cxp_id"];
				$responce["factura"]           = $_REQUEST["factura"];
				$responce["concepto"]          = $_REQUEST["concepto"];	
				$responce["valor"]             = $_REQUEST["valor"];	
				$responce["multiplica"]        = $_REQUEST["multiplica"];	
				$responce["anulado"]           = "NO";
			
				echo json_encode($responce);
		}
		
		
		
		
		
		public function deleteAction(){
			
			
			
			$this->setResponse('view');
			
			$dtegresos  = new DetalleEgresosTmp();
			
			if($dtegresos->delete(" id = '".$_REQUEST["id"]."' ")){
				
				Flash::success("Detalle egreso Eliminado Satisfactoriamente");

			}else{
			
				Flash::error("Error: No se pudo Eliminar y Guardar el registro...");	
				
				foreach($dtegresos->getMessages() as $message){
				          Flash::error($message->getMessage());
				}	  
				
			}
			
			$this->setParamToView("dtegresos",$this->DetalleEgresosTmp->find("id_unico = '".$_REQUEST['id_unico']."' "));
			
					
	    }
		
		
		
		public function showAction($id=''){
		
			 //$this->setParamToView("encabezado",$this->Egresos->findFirst("id = '$id' "));
			 //$this->setParamToView("idt",$id);	
			$eg = new Egresos();
			$emp = new Empresa();
			$eg  = $eg->findFirst("  id = '$id' "); 
			$emp = $emp->findFirst(" id = '$eg->empresa_id'  ");
			Tag::displayTo("fecha",$eg->fecha);
			Tag::displayTo("hora",$eg->hora);
			Tag::displayTo("tipo_documento_id",$eg->tipo_documento_id);
			Tag::displayTo("prefijo",$eg->prefijo);
			Tag::displayTo("consecutivo",$eg->consecutivo);
			Tag::displayTo("nombre_empresa",$emp->nombre_empresa);
			Tag::displayTo("empresa_id",$emp->id);
			
			Tag::displayTo("cobradores_id",$eg->cobradores_id);
			Tag::displayTo("forma_pago_id",$eg->forma_pago_id);

			 $this->setParamToView("cobradores_id",$eg->cobradores_id);		
			 $this->setParamToView("forma_pago_id",$eg->forma_pago_id);											
			 $this->setParamToView("detalles",$this->DetalleEgresos->find("egresos_id = '$id' and anulado = 0"));				
 			
		}
		
		
		
		
		public function buscarAction(){
			
		}
		
		
		public function detalle_buscarAction(){
				
				$this->setResponse('ajax');
				
				if( isset( $_REQUEST['razon_social']   )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and {#Proveedores}.razon_social like '%".str_replace(' ',"%",$_REQUEST['razon_social'])."%'"; } }
				//if( isset( $_REQUEST['direccion']      )==true ) { if( $_REQUEST['direccion'] != ''      ) { $sql .= " and {#Direccion}.direccion like '%".str_replace(' ',"%",$_REQUEST['direccion'])."%'";           } }
				if( isset( $_REQUEST['finicial']       )==true ) { if( $_REQUEST['finicial'] != ''       ) { $sql .= " and {#Egresos}.fecha >=  '".$_REQUEST['finicial']."'";           } }
				if( isset( $_REQUEST['ffinal']         )==true ) { if( $_REQUEST['ffinal'] != ''         ) { $sql .= " and {#Egresos}.fecha <=  '".$_REQUEST['ffinal']."'";           } }
				$empresa_id  = $_REQUEST["empresa_id"];
			
				$query = new ActiveRecordJoin(array(
						"entities" => array("Egresos","Proveedores","Empresa"),
					 	"fields"=>array(
										"{#Egresos}.id",
										"{#Egresos}.prefijo",
										"{#Egresos}.consecutivo",
										"{#Egresos}.fecha",
										"{#Egresos}.proveedores_id",
										"{#Proveedores}.razon_social",
										"{#Proveedores}.direccion_casa"
										),
						"conditions"=>(" {#Egresos}.empresa_id = '$empresa_id' $sql ")
				));
				
				//$clientes = $this->Clientes->findAllBySql($sql);
				//Flash::error($query->getSqlQuery());
				$this->setParamToView('detalles',$query->getResultSet());
				//$this->setParamToView('query',$query);
				//$this->setParamToView('query2',"hola");
				
				
				
		}
		
		
		public function modificarAction(){
					
        }
		
		
		public function updateAction(){
			
			$this->setResponse('view');
				$sw=0;
				//si no hay error de valiaciones o cualquier otra novedad
				if($sw==0){
						//abriando transacciones
					Flash::success("EMPEZANDO A GUARDAR LOS REGISTOS...");	
					$transaction = new ActiveRecordTransaction(true);   
					try{
						$transaction = TransactionManager::getUserTransaction(); 
						$this->Consecutivos->setTransaction($transaction); 
						$this->DetalleConsecutivos->setTransaction($transaction); 
						
						$prefijo = '';  	$consecutivo = ''; 	$tipo_documento_id = '';
	
						
								$prefijo = $_REQUEST["prefijo"];
								$consecutivo = $_REQUEST["consecutivo"];
								$tipo_documento_id = $_REQUEST["tipo_documento_id"];
							
						
								$encabezado = new Egresos();
								$encabezado->setTransaction($transaction);
	
								 $encabezado->id                  = $_REQUEST["id"];
								 $encabezado->prefijo             = $prefijo;
								 $encabezado->consecutivo         = $consecutivo;   
								 $encabezado->proveedores_id      = 0;
								 $encabezado->cobradores_id       = $_REQUEST["cobradores_id"];
								 $encabezado->bancos_id           = 1;
								 $encabezado->forma_pago_id       = $_REQUEST["forma_pago_id"];
								 $encabezado->empresa_id          = $_REQUEST["empresa_id"];
								 $encabezado->tipo_documento_id   = $tipo_documento_id;
								 $encabezado->fecha_act           = date("Y-m-d H:i:s");
								 $encabezado->fecha               = $_REQUEST["fecha"];
								 $encabezado->hora                =  $_REQUEST["hora"];
								 $encabezado->hora_act            =  date("H:m:s");
								 $encabezado->anulado             = $_REQUEST["anulado"];
								
								if($encabezado->save()==false){
									$msg_error="";
									foreach($encabezado->getMessages() as $message){ 
										Flash::error("TABLA EGRESOS: ".$message); $msg_error.=$message;
									}
												$syslogger = new Syslogger();
												 //$syslogger->setTransaction($transaction);
												 $syslogger->username          = Session::get(md5("admin_username"));
												 $syslogger->module            = Router::getModule();
												 $syslogger->application       = Router::getApplication();
												 $syslogger->controller        = $this->getControllerName();
												 $syslogger->action            = $this->getActionName();
												 $syslogger->error_sistema     = $msg_error;
												 $syslogger->descripcion       = "Error actualizando Egresos";
												 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
												 $syslogger->fecha             = date("Y-m-d H:i:s");
												 $syslogger->tipo_documento_id = $encabezado->tipo_documento_id;
												 $syslogger->prefijo           = $encabezado->prefijo;
												 $syslogger->consecutivo       = $encabezado->consecutivo;
												 $syslogger->objeto            = json_encode($detalles);
												 if(!$syslogger->save()){
													foreach($syslogger->getMessages() as $message){ 
															Flash::error("Tabla de Aduditoria del sistema: ".$message); 
														}
												 }else{
														 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
												 }
												 /* Fin Registro Para Audirotia*/
									$transaction->rollback();
								}else{
											 $syslogger = new Syslogger();
											 //$syslogger->setTransaction($transaction);
											 $syslogger->username          = Session::get(md5("admin_username"));
											 $syslogger->module            = Router::getModule();
											 $syslogger->application       = Router::getApplication();
											 $syslogger->controller        = $this->getControllerName();
											 $syslogger->action            = $this->getActionName();
											 $syslogger->error_sistema     = "Egreso Actualizado Satisfactoriamente";
											 $syslogger->descripcion       = "Egreso Actualizado Satisfactoriamente";
											 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
											 $syslogger->fecha             = date("Y-m-d H:i:s");
											 $syslogger->tipo_documento_id = $encabezado->tipo_documento_id;
											 $syslogger->prefijo           = $encabezado->prefijo;
											 $syslogger->consecutivo       = $encabezado->consecutivo;
											 $syslogger->objeto            = json_encode($encabezado);
											 if(!$syslogger->save()){
												foreach($syslogger->getMessages() as $message){ 
														Flash::error("Tabla de Aduditoria del sistema: ".$message); 
													}
											 }else{
													 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
											 }
											 /* Fin Registro Para Audirotia*/
									}
							
	
								$detalles = new DetalleEgresos();
								$detalles->setTransaction($transaction);
								$total = 0;
								$detalles_item = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$_POST["detalles"])));
								if(json_decode($detalles_item)){
									Flash::success("Json Correcto");
									$detalles_item = json_decode($detalles_item);
									//foreach($detalles_item as $dt):
										//print($dt->id);
										//echo "<br />";
									//endforeach;
								}else{
									Flash::error("Error json");
									$transaction->rollback();
								}
								//print_r($detalles_item);
								foreach( $detalles_item as $items):
										$detalles = new DetalleEgresos();
										$detalles->setTransaction($transaction);
										//Flash::error(substr($items->id,0,4));
									
										if( trim(substr($items->id,0,4)) == trim('temp') ){
											$detalles->id                     = '';
											//Flash::error(substr($items->id,0,4));
										}else{
											$detalles->id                     = $items->id;
											//Flash::notice(substr($items->id,0,4));
											}
										$detalles->cxp_id                 = "0";
										$detalles->egresos_id             = $encabezado->id;
										$detalles->conceptos_id           = 0;
										$detalles->concepto               = $items->concepto;
										$detalles->total                  = $items->valor;
										$detalles->multiplica             = $items->multiplica;
										
										if($items->anulado == "SI") {$detalles->anulado = '1';}
										if($items->anulado == "NO") {$detalles->anulado = '0';}
										//$detalles->anulado                = $items->anulado;
										$total += $items->total;
										//Flash::error(print_r($detalles));
										if($detalles->save()==false){
											$msg_error="";
											foreach($detalles->getMessages() as $message){ 
												Flash::error("TABLA: DETALLE EGRESOS ".$message); $msg_error.=$message;
											}
											
											 $syslogger = new Syslogger();
											 //$syslogger->setTransaction($transaction);
											 $syslogger->username          = Session::get(md5("admin_username"));
											 $syslogger->module            = Router::getModule();
											 $syslogger->application       = Router::getApplication();
											 $syslogger->controller        = $this->getControllerName();
											 $syslogger->action            = $this->getActionName();
											 $syslogger->error_sistema     = $msg_error;
											 $syslogger->descripcion       = "Registro Detalle Egreso no Actualizado";
											 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
											 $syslogger->fecha             = date("Y-m-d H:i:s");
											 $syslogger->tipo_documento_id = $encabezado->tipo_documento_id;
											 $syslogger->prefijo           = $encabezado->prefijo;
											 $syslogger->consecutivo       = $encabezado->consecutivo;
											 $syslogger->objeto            = json_encode($detalles);
											 if(!$syslogger->save()){
												foreach($syslogger->getMessages() as $message){ 
														Flash::error("Tabla de Aduditoria del sistema: ".$message); 
													}
											 }else{
													 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
											 }
											 /* Fin Registro Para Audirotia*/
											 
											 
											$transaction->rollback();
										}else{
												
												 $syslogger = new Syslogger();
												 //$syslogger->setTransaction($transaction);
												 $syslogger->username          = Session::get(md5("admin_username"));
												 $syslogger->module            = Router::getModule();
												 $syslogger->application       = Router::getApplication();
												 $syslogger->controller        = $this->getControllerName();
												 $syslogger->action            = $this->getActionName();
												 $syslogger->error_sistema     = "Detalle Egresos Actualizado ".$detalles->id;
												 $syslogger->descripcion       = "Detalle Egresos Actualizado";
												 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
												 $syslogger->fecha             = date("Y-m-d H:i:s");
												 $syslogger->tipo_documento_id = $encabezado->tipo_documento_id;
												 $syslogger->prefijo           = $encabezado->prefijo;
												 $syslogger->consecutivo       = $encabezado->consecutivo;
												 $syslogger->objeto            = json_encode($detalles);
												 if(!$syslogger->save()){
													foreach($syslogger->getMessages() as $message){ 
															Flash::error("Tabla de Aduditoria del sistema: ".$message); 
														}
												 }else{
														 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
												 }
												 /* Fin Registro Para Audirotia*/
											
											}	
								endforeach; //cierre for each del detalles temporales de factura
									
					$transaction->commit();
					Flash::success("EGRESO GUARDADO SATISFACTORIAMENTE");	
					echo "<script>alert('EGRESO GUARDADO SATISFACTORIAMENTE');";
					echo "redireccionar_action('egresos/show/$encabezado->id');</script>";
					}catch(TransactionFailed $e){		
						Flash::error($e->getMessage());
						//cierre cacth try
					}
			  }//cierra if todo bien
			  
			  
			}
		
	
	  
   }
?>