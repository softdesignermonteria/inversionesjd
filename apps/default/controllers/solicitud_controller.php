<?php

	class solicitudController extends ApplicationController {
	
		
		//declaramos variables publicas para todas las vistas asociadas
		
		public $prefijo;
		public $tipo_documento;
		public $tipo_documento_nombre;
		public $id_consecutivo;
	
		public function initialize() {
		   //$this->setTemplateAfter("a_bit_boxy");
		   // $this->setTemplateAfter("menu_azul");
		   	//$temp=$this->Admin->findFirst(" id = '".Session::get("tipo_usuario")."' ")->plantilla;
			$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
		}
				
				
		public function traer_municipiosAction($id){
		      
			$this->setResponse('ajax');  //ajax o view da los mismo
			$mun = $this->Municipios->find("departamentos_id='$id'");
			$this->setParamToView("municipios",$mun);
			  
		}
		
		public function opcionesAction(){
					
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
		
		
		/****
			agregarAction vista en la cual se mostrara el 
			formulario para agregar clientes
		***/
		public function agregarAction(){
					
        }
		
		public function addAction(){
		
			$this->setResponse('view');
			$sw=0;
			$swc=0;
			$sw1=0;
			$sw2=0;
			$sw3=0;
						
			$db = DbBase::rawConnect();
			$cred = new Creditos();
			$cli  = new Clientes();
			$deu  = new Deudores();
			$pc   = new PermitirCreditos();
			
			
			$nit_cli=$this-> Clientes->findFirst("id='".$_REQUEST['clientes_id']."'");
			$nit_deu1=$this->Deudores->findFirst("id='".$_REQUEST['deudores_id']."'");
			$nit_deu2=$this->Deudores->findFirst("id='".$_REQUEST['deudores2_id']."'");
			$nit_deu3=$this->Deudores->findFirst("id='".$_REQUEST['deudores3_id']."'");
			
			//Verificamos si el cliente o el deudor está autorizado en crédito
						
			//si no hay error de valiaciones o cualquier otra novedad
			$sql_clientes = "	select count(*) from 
											creditos cr, clientes c, cxc cx 
									where 
									cr.prefijo              = cx.prefijo
									and cr.consecutivo       = cx.consecutivo
									and cr.tipo_documento_id = cx.tipo_documento_id 
									and cr.clientes_id       = c.id
									and (cx.valor_total - cx.pagado) <> 0
									and cr.anulado = 0 
									and cx.anulado = 0
									and clientes_id  = '".$_REQUEST["clientes_id"]."'
									";
									
		   //Flash::error($sql_clientes);
		   if( $cred->countBySql($sql_clientes) > 0 ){
				$swc=1;	
				$sql_c="select * from permitir_creditos where nit='".$nit_cli->nit."' and estado='0'";
			
					if( $pc->countBySql($sql_c) > 0 ){
									
							$swc=0;
							Flash::success("Cliente tiene solicitudes de crédito activas,pero fue autorizado..");
							
					}else{
						
							Flash::error("Cliente no está autorizado por el administrador para aprobarle otra solicitud de crédito..");
							$swc=1;
								
					}
			
			}
			
			//Flash::error($sw);
			
			$sql_deudor = "select count(*) from 
											creditos cr, 
											deudores d, 
											cxc cx , 
											solicitud s
									where 
									cr.prefijo              = cx.prefijo
									and cr.consecutivo       = cx.consecutivo
									and cr.tipo_documento_id = cx.tipo_documento_id 
									and cr.solicitud_id      = s.id
									and (cx.valor_total - cx.pagado) <> 0
									and cr.anulado = 0
									and cx.anulado = 0
									and s.anulado = 0
									";
			$condicion = " and s.deudores_id = '".$_REQUEST["deudores_id"]."'";	
			
			//Flash::error($sql_deudor.$condicion);
			if( $cred->countBySql($sql_deudor.$condicion) > 0 ){
					$sw1=1;
					$sql_deu1="select * from permitir_creditos where nit='".$nit_deu1->nit."' and estado='0'";
			
					if( $pc->countBySql($sql_deu1) > 0 ){
									
							$sw1=0;
							Flash::success("Deudor1 tiene solicitudes de crédito activas,pero fue autorizado..");
							
					}else{
						
							Flash::error("Deudor1 no está autorizado por el administrador para aprobarle otra solicitud de crédito..");
							$sw1=1;
								
					}
								
			}
		
			//Validamos que el cliente no sea igual a deudor1
			if($nit_cli->nit==$nit_deu1->nit){
					$sw=1; Flash::error("Cliente es igual a deudor 1..");	
			}
			
			//Conjunto de validaciones para verificar que el deudor1 no sea igual al deudor2 y al deudor3
			if($nit_deu1->nit==$nit_deu2->nit){
					$sw=1; Flash::error("Deudor 1 es igual deudor 2..");	
			}
			
			if($nit_deu1->nit==$nit_deu3->nit){
					$sw=1; Flash::error("Deudor 1 es igual deudor 3..");	
			}
							
			$sql_deudor2 = "	select count(*) from 
											creditos cr, 
											deudores d, 
											cxc cx , 
											solicitud s 
									where 
									cr.prefijo              = cx.prefijo
									and cr.consecutivo       = cx.consecutivo
									and cr.tipo_documento_id = cx.tipo_documento_id 
									and cr.solicitud_id      = s.id
									and (cx.valor_total - cx.pagado) <> 0
									and cr.anulado = 0

									and cx.anulado = 0
									and s.anulado = 0
									";
			$condicion = " and s.deudores2_id = '".$_REQUEST["deudores2_id"]."'";
						
			if( $cred->countBySql($sql_deudor2.$condicion) > 0 ){
				
				$sw2=1;				
				
				$sql_deu2="select * from permitir_creditos where nit='".$nit_deu2->nit."' and estado='0'";
			
					if( $pc->countBySql($sql_deu2) > 0 ){
									
							$sw2=0;
							Flash::success("Deudor2 tiene solicitudes de crédito activas,pero fue autorizado..");
							
					}else{
						
							Flash::error("Deudor2 no está autorizado por el administrador para aprobarle otra solicitud de crédito..");
							$sw2=1;
								
					}
				
				
					
			}
				
			//Validamos que el cliente no sea igual a deudor2
			if($nit_cli->nit==$nit_deu2->nit){
					$sw=1; Flash::error("Cliente es igual a deudor 2..");	
			}

			//Conjunto de validaciones para verificar que el deudor2 no sea igual al deudor1 y al deudor3
			if($nit_deu2->nit==$nit_deu1->nit){
					$sw=1; Flash::error("Deudor 2 es igual deudor 1..");	
			}
			
			if($nit_deu2->nit==$nit_deu3->nit){
					$sw=1; Flash::error("Deudor 2 es igual deudor 3..");	
			}
			
			//verificamos que el deudor3 no se este yendo vacio
			if($_REQUEST["deudores3_id"]!=""){
			
				$sql_deudor3 = "	select count(*) from 
											creditos cr, 
											deudores d, 
											cxc cx , 
											solicitud s 
											
									where 
									cr.prefijo               = cx.prefijo
									and cr.consecutivo       = cx.consecutivo
									and cr.tipo_documento_id = cx.tipo_documento_id 
									and cr.solicitud_id      = s.id
									and (cx.valor_total - cx.pagado) <> 0
									and cr.anulado = 0

									and cx.anulado = 0
									and s.anulado = 0
									";
			$condicion = " and s.deudores3_id = '".$_REQUEST["deudores3_id"]."'";
			
			//Flash::error($sql_deudor3.$condicion);	

			if( $cred->countBySql($sql_deudor3.$condicion) > 0 ){
					
					$sw3=1;
					
			   	   	$sql_deu3="select * from permitir_creditos where nit='".$nit_deu3->nit."' and estado='0'";
			
					if( $pc->countBySql($sql_deu3) > 0 ){
									
							$sw3=0;
							Flash::success("Deudor3 tiene solicitudes de crédito activas,pero fue autorizado..");
							
					}else{
						
							Flash::error("Deudor3 no está autorizado por el administrador para aprobarle otra solicitud de crédito..");
							$sw3=1;
								
					}
						
			 }
			
			}
			//Validamos que el cliente no sea igual a deudor3
			if($nit_cli->nit==$nit_deu3->nit){
					$sw=1; Flash::error("Cliente es igual a deudor 3..");	
			}
			
			
			if($_REQUEST["deudores_id"]==''&&$_REQUEST["deudores2_id"]==''&&$_REQUEST["deudores3_id"]==''){
					$sw=1; Flash::error("Solicitud debe tener al menos un fiador");
				}
			if($_REQUEST["numero_cuotas"]<=0){
				$sw=1; Flash::error("Numero de Cuotas debe ser mayor a cero ");
				
				}	
			if($_REQUEST["valor_cuota"]<=0){
				$sw=1; Flash::error("Valor de las Cuotas debe ser mayor a cero ");
				
				}	
			if($_REQUEST["total_credito"]<=0){
				$sw=1; Flash::error("Total Credito debe ser mayor a cero ");
				
				}	
			if($_REQUEST["estado_solicitud"]==1){
				$sw=1; Flash::error("La solicitud no puede tener estado aprobada, debe modificarla y cambiarlo posteriormente ");
				
				}
				
			//Flash::error("Llegue a la primera transaccion:".$sw);			
			if($sw==0&&$swc==0&&$sw1==0&&$sw2==0&&$sw3==0){			
				//abriando transacciones
				Flash::success("EMPEZANDO A GUARDAR LOS REGISTOS...");	
				$transaction = new ActiveRecordTransaction(true);   

				try{
					$transaction = TransactionManager::getUserTransaction(); 
					$this->Consecutivos->setTransaction($transaction); 
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
								echo "<script>jQuery(\"#guardar\").removeAttr(\"disabled\");</script>";
								foreach($dtc->getMessages() as $message){ 
									Flash::error("TABLA  CONSECUTIVOS: ".$message); 
								}
							$transaction->rollback();
								
							}
							
					}else{
						$prefijo = $_REQUEST["prefijo"];
						$consecutivo = $_REQUEST["consecutivo"];
						$tipo_documento_id = $_REQUEST["tipo_documento_id"];
					}

						//Flash::success("VERIFICANDO LOS CONSECUTIVOS PARA ESTE DOCUMENTO");		
					/*if(($_REQUEST["deudores_id"]!='')&&($_REQUEST["deudores2_id"]!='')&&($_REQUEST["deudores3_id"]!='')){		 */
							 $ip=$_SERVER['REMOTE_ADDR'];
							 $fecha_registro=date("Y-m-d H:i:s");
							 
							 $solicitud = new Solicitud();
													 
							 $solicitud->setTransaction($transaction);
						  	 //para traer el mismo modelo ya instanciado
							 $solicitud->id                    = $_REQUEST["id"];
							 $solicitud->tipo_documento_id     = $tipo_documento_id;
							 $solicitud->prefijo               = $prefijo;
							 $solicitud->consecutivo           = $consecutivo;
							 $solicitud->empresa_id  		    = $_REQUEST["empresa_id"];
							 $solicitud->clientes_id  		   = $_REQUEST["clientes_id"];
							 $solicitud->deudores_id  		   = $_REQUEST["deudores_id"];
							 $solicitud->deudores2_id  		  = $_REQUEST["deudores2_id"];
							 $solicitud->deudores3_id  		  = $_REQUEST["deudores3_id"];
							 $solicitud->fecha                 = $_REQUEST["fecha"];
							 $solicitud->observacion           = $_REQUEST["observacion"];
							 $solicitud->fecha_registro        = $fecha_registro;
							 $solicitud->ip                    = $ip;
							 $solicitud->admin_id              = $_REQUEST["admin_id"];
							 $solicitud->estado_solicitud_id   = $_REQUEST["estado_solicitud_id"];
							 $solicitud->porcentaje               = $_REQUEST["porcentaje"];
							 $solicitud->capital               = $_REQUEST["capital"];
							 $solicitud->numero_cuotas         = $_REQUEST["numero_cuotas"];
							 $solicitud->valor_cuota           = $_REQUEST["valor_cuota"];
							 $solicitud->total_credito         = $_REQUEST["total_credito"];
							 $solicitud->anulado               = '0';
							 
							 /*Se procede a guardar los datos en la tabla solicitud detalle*/
							
																					 
							 /*$solicitud_detalle->solicitud_id   = $solicitud->id;
							 */
							 
							 if($solicitud->save()==false){
								echo "<script>jQuery(\"#guardar\").removeAttr(\"disabled\");</script>";
								foreach($solicitud->getMessages() as $message){ 
									Flash::error("TABLA SOLICITUD: ".$message); 
								}
								$transaction->rollback();
								
					}
						
																			
					$transaction->commit();
					Flash::success("SOLICITUD GUARDADO SATISFACTORIAMENTE");	
						echo "<script>quitar_mensajes();</script>";	
						
					}catch(DbException $e){		
							
						Flash::error("no se permite ingresar el mismo fiador dos veces para esta solicitud");
					}catch(DbContraintViolationException $e){
						Flash::error("no se permite ingresar el mismo fiador dos veces para esta solicitud");
					}catch(TransactionFailed $e){		
						echo "<script>jQuery(\"#guardar\").removeAttr(\"disabled\");</script>";
						Flash::error($e->getMessage());
					//cierre cacth try
					}
		  }//cierra if todo bien
		  
			  
		}
		
		
		
		public function modificarAction($id){
			//$this->setResponse("ajax");
			
			if( isset($id) ){
					
				$id_solicitud = $id;
						
				$sol = $this->Solicitud->findFirst(" id = '$id_solicitud' ");
				//$soldet = $this->SolicitudDetalle->findFirst(" solicitud_id = '$id_solicitud'");
				$cli= $this->Clientes->findFirst("id = '$sol->clientes_id'");
				$tipo_doc= $this->TipoDocumento->findFirst("id = '$sol->tipo_documento_id'");
						
				Tag::displayTo("id",$sol->id);
				Tag::displayTo("tipo_documento_id",$sol->tipo_documento_id);
				Tag::displayTo("prefijo",$sol->prefijo);
				Tag::displayTo("clientes",$cli->id);
				Tag::displayTo("deudores",$sol->deudores_id);
				Tag::displayTo("deudores2",$sol->deudores2_id);
				Tag::displayTo("deudores3",$sol->deudores3_id);
				Tag::displayTo("fecha",$sol->fecha);
				
				Tag::displayTo("observacion",$sol->observacion);
				Tag::displayTo("estado_solicitud_id",$sol->estado_solicitud_id);
				Tag::displayTo("porcentaje",$sol->porcentaje);
				Tag::displayTo("capital",$sol->capital);
				Tag::displayTo("numero_cuotas",$sol->numero_cuotas);
				Tag::displayTo("valor_cuota",$sol->valor_cuota);
				Tag::displayTo("total_credito",$sol->total_credito);
				
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Solicitud para modificar.");
				}
		}
		
		public function updateAction(){
			
			$this->setResponse("ajax");
			$sol= new Solicitud();
			$cli  = new Clientes();
			$deu  = new Deudores();
			$pc   = new PermitirCreditos();
			
			$sw=0;
			$swc=0;
			$sw1=0;
			$sw2=0;
			$sw3=0;
			
			$nit_cli  = $this->Clientes->findFirst(" id = '".$_REQUEST["clientes_id"]."' ");
			$nit_deu1 = $this->Deudores->findFirst(" id = '".$_REQUEST["deudores_id"]."' ");
			$nit_deu2 = $this->Deudores->findFirst(" id = '".$_REQUEST["deudores2_id"]."' ");
			$nit_deu3 = $this->Deudores->findFirst(" id = '".$_REQUEST["deudores3_id"]."' ");
			//$usuario = $Usuario->findFirst("username = '".$_REQUEST['username']."'");
									
			if($sw==1){
				
				Flash::error("Error: Solicitud ya existe!!!");
			
			}else{
				
				$sol_count = $this->Creditos->count(" solicitud_id='".$_REQUEST["id"]."'");
				
				
				if($sol_count == 0){
					
					
					$db = DbBase::rawConnect();
					$cred = new Creditos();
					//si no hay error de valiaciones o cualquier otra novedad
					$sql_clientes = "	select count(*) from 
													creditos cr, clientes c, cxc cx 
											where 
											cr.prefijo              = cx.prefijo
											and cr.consecutivo       = cx.consecutivo
											and cr.tipo_documento_id = cx.tipo_documento_id 
											and cr.clientes_id       = c.id
											and (valor_total - pagado) <> 0
											and cr.anulado = 0 
											and cx.anulado = 0
											and clientes_id  = '".$_REQUEST["clientes_id"]."'
											";
					if( $cred->countBySql($sql_clientes) > 0 ){
					
					$swc=1;	
					
					$sql_c="select * from permitir_creditos where nit='".$nit_cli->nit."' and estado='0'";
			
						if( $pc->countBySql($sql_c) > 0 ){
										
								$swc=0;
								Flash::success("Cliente tiene solicitudes de crédito activas,pero fue autorizado..");
								
						}else{
							
								Flash::error("Cliente no está autorizado por el administrador para aprobarle otra solicitud de crédito..");
								$swc=1;
									
						}
							
					}
					
					$sol = $this->Solicitud->findFirst("id = '".$_REQUEST["id"]."'");
			
					if(($sol->deudores_id==$_REQUEST['deudores_id'])&&($sol->deudores2_id==$_REQUEST['deudores2_id'])&&($sol->deudores3_id==$_REQUEST['deudores3_id'])){
							$sw=0;
					//Flash::error("Pase..");
					}else{
			
					$sql_deudor = "select count(*) from 
													creditos cr, 
													deudores d, 
													cxc cx , 
													solicitud s
											where 
											cr.prefijo              = cx.prefijo
											and cr.consecutivo       = cx.consecutivo
											and cr.tipo_documento_id = cx.tipo_documento_id 
											and cr.solicitud_id      = s.id
											and (valor_total - pagado) <> 0
											and cr.anulado = 0
											and cx.anulado = 0
											and s.anulado = 0
										
											";
					$condicion = " and s.deudores_id = '".$_REQUEST["deudores_id"]."' ";
					
					if( $cred->countBySql($sql_clientes) > 0 ){
					
					$swc=1;
					
					$sql_c="select count(*) from permitir_creditos where nit='".$nit_cli->nit."' and estado='0'";
						
							if( $pc->countBySql($sql_c) > 0 ){
													
								$swc=0;
								Flash::success("Cliente tiene solicitudes de crédito activas,pero fue autorizado..");
											
							}else{
										
								Flash::error("Cliente no está autorizado por el administrador para aprobarle otra solicitud de crédito..");
								$swc=1;
								
							}
						
					 }
										
					if( $cred->countBySql($sql_deudor.$condicion) > 0 ){
					   
					   $sw1=1;
					   
					   $sql_deu1="select count(*) from permitir_creditos where nit='".$nit_deu1->nit."' and estado='0'";
							
							  if($pc->countBySql($sql_deu1) > 0 ){
													
								   $sw1=0;
								   Flash::success("Deudor1 tiene solicitudes de crédito activas,pero fue autorizado..");
											
							  }else{
										
									Flash::error("Deudor1 no está autorizado por el administrador para aprobarle otra solicitud de crédito..");
								    $sw1=1;
												
								}
							
					}
					
					//Validamos que el cliente no sea igual a deudor1
					if($nit_cli->nit==$nit_deu1->nit){
							$sw=1; Flash::error("Cliente es igual a deudor 1..");	
					}
					
					$sql_deudor2 = "select count(*) from 
													creditos cr, 
													deudores d, 
													cxc cx , 
													solicitud s
											where 
											cr.prefijo              = cx.prefijo
											and cr.consecutivo       = cx.consecutivo
											and cr.tipo_documento_id = cx.tipo_documento_id 
											and cr.solicitud_id      = s.id
											and (valor_total - pagado) <> 0
											and cr.anulado = 0
											and cx.anulado = 0
											and s.anulado = 0
											";
					
					$condicion = " and s.deudores2_id = '".$_REQUEST["deudores2_id"]."' ";	
										
					if( $cred->countBySql($sql_deudor2.$condicion) > 0 ){
					   
					   $sw2=1;
					   
					   $sql_deu2="select count(*) from permitir_creditos where nit='".$nit_deu2->nit."' and estado='0'";
							
							if( $pc->countBySql($sql_deu2) > 0 ){
													
									$sw2=0;
									Flash::success("Deudor2 tiene solicitudes de crédito activas,pero fue autorizado..");
											
							}else{
									
									Flash::error("Deudor2 no está autorizado por el administrador para aprobarle otra solicitud de crédito..");
									$sw2=1;
												
							}
							
					 }
					
					//Validamos que el cliente no sea igual a deudor2
					if($nit_cli->nit==$nit_deu2->nit){
							$sw=1; Flash::error("Cliente es igual a deudor 2..");	
					}
						
					$sql_deudor3 = "select count(*) from 
													creditos cr, 
													deudores d, 
													cxc cx , 
													solicitud s 
											where 
											cr.prefijo              = cx.prefijo
											and cr.consecutivo       = cx.consecutivo
											and cr.tipo_documento_id = cx.tipo_documento_id 
											and cr.solicitud_id      = s.id
											and (valor_total - pagado) <> 0
											and cr.anulado = 0
											and cx.anulado = 0
											and s.anulado = 0
											";
					
					$condicion = " and s.deudores3_id = '".$_REQUEST["deudores3_id"]."' ";	
										
					if( $cred->countBySql($sql_deudor3.$condicion) > 0 ){
						
					   $sw3=1;
					   
					   $sql_deu3="select count(*) from permitir_creditos where nit='".$nit_deu3->nit."' and estado='0'";
							
							  if( $pc->countBySql($sql_deu3) > 0 ){
							  	  
								  $sw3=0;
								  Flash::success("Deudor3 tiene solicitudes de crédito activas,pero fue autorizado..");
											
							  }else{
										
							 	 Flash::error("Deudor3 no está autorizado por el administrador para aprobarle otra solicitud de crédito..");
								$sw3=1;
												
							  }
							
					}
					
					//Validamos que el cliente no sea igual a deudor2
					if($nit_cli->nit==$nit_deu3->nit){
							$sw=1; Flash::error("Cliente es igual a deudor 3..");	
					}	
					
					if($_REQUEST["deudores_id"]==''&&$_REQUEST["deudores2_id"]==''&&$_REQUEST["deudores3_id"]==''){
							$sw=1; Flash::error("Solicitud debe tener al menos un fiador");
						}
					if($_REQUEST["numero_cuotas"]<=0){
						$sw=1; Flash::error("Numero de Cuotas debe ser mayor a cero ");
						
						}	
					if($_REQUEST["valor_cuota"]<=0){
						$sw=1; Flash::error("Valor de las Cuotas debe ser mayor a cero ");
						
						}	
					if($_REQUEST["total_credito"]<=0){
						$sw=1; Flash::error("Total Credito debe ser mayor a cero ");
						
						}
					}
					
					if($sw==0&&$swc==0&&$sw1==0&&$sw2==0&&$sw3==0){
						$ip=$_SERVER['REMOTE_ADDR'];
						$fecha_registro=date("Y-m-d H:i:s");
						
						Flash::success("EMPEZANDO A GUARDAR LOS REGISTOS...");	
						$transaction = new ActiveRecordTransaction(true);   

						try{
							
							 $transaction = TransactionManager::getUserTransaction(); 
							 $this->Consecutivos->setTransaction($transaction); 
							//Flash::success("VERIFICANDO LOS CONSECUTIVOS PARA ESTE DOCUMENTO");		
							 
							 $ip=$_SERVER['REMOTE_ADDR'];
							 $fecha_registro=date("Y-m-d H:i:s");
							 
							 $solicitud = new Solicitud();
													 
							 $solicitud->setTransaction($transaction);
						  	 //para traer el mismo modelo ya instanciado
							 $solicitud = $this->Solicitud->findFirst(" id = '".$_REQUEST["id"]."'");
							 $solicitud->empresa_id  		   = $_REQUEST["empresa_id"];
							 $solicitud->clientes_id  		   = $_REQUEST["clientes_id"];
							 $solicitud->deudores_id  		   = $_REQUEST["deudores_id"];
							 $solicitud->deudores2_id  		   = $_REQUEST["deudores2_id"];
							 $solicitud->deudores3_id  		   = $_REQUEST["deudores3_id"];
							 $solicitud->fecha                 = $_REQUEST["fecha"];
							 $solicitud->observacion           = $_REQUEST["observacion"];
							 $solicitud->fecha_registro        = $fecha_registro;
							 $solicitud->ip                    = $ip;
							 $solicitud->admin_id              = $_REQUEST["admin_id"];
							 $solicitud->estado_solicitud_id   = $_REQUEST["estado_solicitud_id"];
							 $solicitud->numero_cuotas         = $_REQUEST["numero_cuotas"];
							 $solicitud->porcentaje            = $_REQUEST["porcentaje"];
							 $solicitud->capital               = $_REQUEST["capital"];
							 $solicitud->valor_cuota           = $_REQUEST["valor_cuota"];
							 $solicitud->total_credito         = $_REQUEST["total_credito"];
							 $solicitud->anulado               = '0';
							 
							 /*Se procede a guardar los datos en la tabla solicitud detalle*/
							 /*$solicitud_detalle->solicitud_id   = $solicitud->id;
							 */
							 
							 if($solicitud->save()==false){
								echo "<script>jQuery(\"#guardar\").removeAttr(\"disabled\");</script>";
								foreach($solicitud->getMessages() as $message){ 
									Flash::error("TABLA SOLICITUD: ".$message); 
								}
								$transaction->rollback();
								
							 }
						
																			
					$transaction->commit();
					Flash::success("SOLICITUD GUARDADO SATISFACTORIAMENTE");	
						echo "<script>quitar_mensajes();</script>";	
						sleep (5) ;
						if($solicitud->estado_solicitud_id  == 1){
							echo "<script>redireccionar_action('creditos/agregar/?solicitud_id=$solicitud->id');</script>";	
						}
					}catch(DbException $e){		
							
						Flash::error("No se permite ingresar el mismo fiador dos veces para esta solicitud");
						
					}catch(DbContraintViolationException $e){
						Flash::error("No se permite ingresar el mismo fiador dos veces para esta solicitud");
						
					}catch(TransactionFailed $e){		
						echo "<script>jQuery(\"#guardar\").removeAttr(\"disabled\");</script>";
						Flash::error($e->getMessage());
					//cierre cacth try
					}
							
					
				  }
				  }else{
				  Flash::error("TABLA SOLICITUD ERROR : ".$message." No puede modificar la solicitud despues de ser Acreditada ");	
				}
			  }
			
		}
		
					
		public function validarAction($id,$opcion){
			
			$this->setResponse("view");
			
			$sw=0;
			$sol = new Solicitud();
			if( $this->Solicitud->count(" id = '$id' ") > 0 ){
				$sol = $this->Solicitud->findFirst(" id = '$id' ");
				echo "<script>";
				echo " jQuery(\"#".$opcion."_id\").val(\"\");\n";
				echo " jQuery(\"#".$opcion."_id\").val(\"$sol->id\");\n";
				
				echo " if( jQuery(\"#capital\")       ){ jQuery(\"#capital\").val(\"$sol->capital\");  } \n";
				echo " if( jQuery(\"#valor_cuotas\")  ){ jQuery(\"#valor_cuotas\").val(\"$sol->valor_cuota\");  } \n";
				echo " if( jQuery(\"#numero_cuotas\") ){ jQuery(\"#numero_cuotas\").val(\"$sol->numero_cuotas\"); } \n";
				echo " if( jQuery(\"#total_credito\") ){ jQuery(\"#total_credito\").val(\"$sol->total_credito\"); } \n";
				echo " if( jQuery(\"#porcentaje\")    ){ jQuery(\"#porcentaje\").val(\"$sol->porcentaje\");    } \n";
				
				echo " jQuery(\"#$opcion\").val(\"\");\n";
				echo " jQuery(\"#$opcion\").val(\"".$sol->prefijo.$sol->consecutivo."\");\n";
                echo "</script>";
				
			}else{
				Flash::error("No se Encontro Solicitud");
				echo "<script>jQuery(\"#".$opcion."_id\").val(\"\");jQuery(\"#$opcion\").val(\"\");</script>";
			}
			
			
			//public $scaffold = false;
			
			
			
		}
		
		public function validar_clienteAction($id){
			
			$this->setResponse("ajax");
			
			$cli  = new Clientes();
			//cargamos el objeto mediantes los metodos setters
			
			$sw = 0;
			if($this->Clientes->count("id = '".$id."'")>0){
				Flash::error("Cliente ya existe");
				$sw=1;
			}
		}
		
		public function validar_deudorAction($id){
			
			$this->setResponse("ajax");
			
			$cli  = new Deudores();
			//cargamos el objeto mediantes los metodos setters
			
			$sw = 0;
			if($this->Deudores->count("id = '".$id."'")>0){
				Flash::error("Deudor ya existe");
				$sw=1;
			}
		}
		
		
		public function find__buscarAction(){
			$this->setResponse("ajax");
		}
		/****
			mostrarAction vista en la cual se mostrarán
			los datos del cliente
		***/
		public function showAction($id){
          
            $clientes = $this->Clientes->find("id='$id'");
            $this->setParamToView("clientes", $clientes);
	
		}
		/****
			modificarAction vista en la cual se mostrarán
			los datos del cliente
		***/
			
		public function eliminarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){
				
				$id_solicitud = $id;
		
				$est_sol  = $this->EstadoSolicitud->findFirst(" id = '$id_solicitud' ");
							
				Tag::displayTo("id",$est_sol->id);
				Tag::displayTo("estado_solicitud",$est_sol->estado_solicitud);
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar ".strtoupper(Router::getController())." para modificar.");
				}
		}
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$est_sol  = new EstadoSolicitud();
			
				
				if($est_sol->delete(" id = '".$_REQUEST["id"]."' ")){
					
					Flash::success(strtoupper(Router::getController())." Eliminada Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($cli->getMessages() as $message){
							  Flash::error("Error Eliminando Ies ".$message->getMessage());
					}	  
					
				}
					
	    }
		/****
			actualizarAction metodo en el cual se actualizaran
			los datos del cliente
		***/
		
		
		
		public function buscarAction(){
		
		}
		
		
		
		public function find_buscarAction(){
			$this->setResponse("view");
		}
		
		public function find_detalle_buscarAction(){
			$this->setResponse("view");
		}
		
		
		
		
		
		public function _buscarAction(){
				
				$this->setResponse('view');
				
				//$nom1 = $_REQUEST['nom1'];
				//$nom2 = $_REQUEST['nom2'];
				//$ape1 = $_REQUEST['ape1'];
				//$ape2 = $_REQUEST['ape2'];
				
				
				$sql = ' 1=1 ';
				
				if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and nit like '%".$_REQUEST['nit']."%'";                   } }
				if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
				$ordenar = $_REQUEST['ordenar'];
				
				//if($nom1!=''){ $sql .= " and nombre1 like '%$nom1%' "; }
				//if($nom2!=''){ $sql .= " and nombre2 like '%$nom2%' "; }
				//if($ape1!=''){ $sql .= " and apellido1 like '%$ape1%' "; }
				//if($ape2!=''){ $sql .= " and apellido2 like '%$ape2%' "; }
				
				
				$clientes = $this->Clientes->find(" $sql ","order: $ordenar");
          		$this->setParamToView("clientes", $clientes);
		
		}
		
		
		public function trae_clientesAction(){
			
			//$this->setResponse('ajax');
			$this->setTemplateAfter("default");

		}
		
		
		public function trae_clientes_sAction(){
			
			$this->setResponse('view');
			
			$sql = "select * from clientes where 1=1 and activo = 0 ";
			
			if( isset( $_REQUEST['codigo']       )==true ) { if( $_REQUEST['codigo'] != ''       ) { $sql .= " and id like '%".$_REQUEST['codigo']."%'";                 } }
			if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and nit like '%".$_REQUEST['nit']."%'";                   } }
			if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
			//if( isset( $_REQUEST['nombre1']      )==true ) { if( $_REQUEST['nombre1'] != ''      ) { $sql .= " and nombre1 like '%".$_REQUEST['nombre1']."%'";           } }
			//if( isset( $_REQUEST['nombre2']      )==true ) { if( $_REQUEST['nombre2'] != ''      ) { $sql .= " and nombre2 like '%".$_REQUEST['nombre2']."%'";           } }
			//if( isset( $_REQUEST['apellido1']    )==true ) { if( $_REQUEST['apellido1'] != ''    ) { $sql .= " and apellido1 like '%".$_REQUEST['apellido1']."%'";       } }
			//if( isset( $_REQUEST['apellido2']    )==true ) { if( $_REQUEST['apellido2'] != ''    ) { $sql .= " and apellido2 like '%".$_REQUEST['apellido2']."%'";       } }
			if( isset( $_REQUEST['orderby']      )==true ) { if( $_REQUEST['orderby'] != ''      ) { $sql .= " order by ".$_REQUEST['orderby']." ";       } }
			
			$clientes = $this->Clientes->findAllBySql($sql);
			//Flash::error($sql);
			$this->setParamToView('clientes',$clientes);
		
		}
		
		
		
		public function agregar_clientesAction(){
		
			//$this->set_response('view');
			$this->setTemplateAfter("default");
		
		}
		
				
		/****
			addAction metodo en la cual se insertarán
			los datos del cliente
		***/
		public function add_clientesAction(){
			//primero instanciamos clase clientes
			$this->setResponse('view');
			$cli  = new Clientes();
			//cargamos el objeto mediantes los metodos setters
			
			$sw = 0;
			if($this->Clientes->count("nit = '".$this->getPostParam("nit")."'")>0){
				Flash::error("DOCUMENTO DE IDENTIFICACION (NIT/CEDULA) YA SE EXISTE EN NUESTRA BASE DE DATOS");
				$sw=1;
			}
			
			if($sw==0){
				$cli->id = '0';
				$cli->nit = $this->getPostParam("nit");
				//$cli->nombre1 = $this->getPostParam("pn");
				//$cli->nombre2 = $this->getPostParam("sn");
				//$cli->apellido1 = $this->getPostParam("pa");
				//$cli->apellido2 = $this->getPostParam("sa");
				$cli->nombre1 = '';
				$cli->nombre2 = '';
				$cli->apellido1 = '';
				$cli->apellido2 = '';
				$cli->razon_social = $this->getPostParam("rs");
				$cli->direccion_casa = $this->getPostParam("dc");
				$cli->direccion_oficina = $this->getPostParam("dof");
				$cli->telefono1 = $this->getPostParam("tf1");
				$cli->telefono2 = $this->getPostParam("tf2");
				$cli->celular = $this->getPostParam("celular");
				$cli->departamentos_id = $this->getPostParam("tmp_dptos");
				$cli->municipios_id = $this->getPostParam("tmp_municipios");
				$cli->activo = $this->getPostParam("activo");
				$cli->correo = $this->getPostParam("email");
				$cli->web = $this->getPostParam("web");
				$cli->activo = 0;
						
				if($cli->save()){
					Flash::success("Se insertó correctamente el registro");
					print("<script>escoger_cliente('$cli->id','$cli->razon_social','$cli->telefono1','$cli->telefono2');Dialog.okCallback();</script>");
				}else{
					Flash::error("Error: No se pudo insertar registro");	
					foreach($cli->getMessages() as $message){
							  Flash::error($message->getMessage());
						}
				}
			
			}//fin  si todo bien
			
	    }
		
		
		public function verificarAction($id){
			
			$this->setResponse('view');
			
			$cli = new Clientes();
			$cli->findFirst("nit = '$id'");
			echo "<script>";
			echo "$('clientes_id').value='$cli->id';";
			echo "$('nombre_cliente').value='$cli->razon_social';";
			if($cli->id==''){ echo "alert('cliente no encontrado o no existe');"; }
			echo "</script>";
			
			//$this->setTemplateAfter("default");

		}
		
		
		
		/* FIN CONSULTA DE CLIENTES CON FACTURAS AGREGADAS*/
		
		public function print_jaspertAction($id){
				$this->setResponse("view");
				$clientes_id = new Solicitud();
				$clientes_id = $this->Solicitud->findFirst(" clientes_id = '$id'");
				$this->setParamToView("clientes_id",$id);
		}
		
		
	  
   }
?>