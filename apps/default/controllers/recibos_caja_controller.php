<?php

	class Recibos_cajaController extends ApplicationController {

	
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
				if( $desc=='' ){ $desc = "CANCELACION CUOTA CREDITO : ".$_REQUEST["numero_credito"]; }
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
		
		public function agregar_interesesAction(){

			$this->setResponse("ajax");

			$creditos_id  = $_REQUEST["creditos_id"];
			$fecha_recibo = $_REQUEST["fecha"];
			$clientes_id  = $_REQUEST["clientes_id"];
			$valor_int = 0;
			$this->setParamToView("valor_int",$valor_int);
			$this->setParamToView("fecha_recibo",$fecha_recibo);
			
		}
		
		public function agregar_intereses_itemAction(){
			$this->setResponse("ajax");
			
		}
		
		/**public function agregar_interesesAction(){

			$this->setResponse("ajax");
			$db2 = DbBase::rawConnect();
			
			$creditos_id = $_REQUEST["creditos_id"];
			$fecha_recibo       = $_REQUEST["fecha"];
			$clientes_id = $_REQUEST["clientes_id"];
			//CONSULTA ULTIMO DIA EN QUE PAGO INTERESES.
			
			$creditos = $this->Creditos->findFirst(" id = '$creditos_id' ");
			$fecha = $creditos->fecha;
			
			$rec = new RecibosCaja();
			$sql = "select r.* 
						from 
						recibos_caja r, detalle_recibos_caja dr
						where r.id = dr.recibos_caja_id
						and dr.anulado = '0'
						and dr.descripcion like 'INTERESES%'
						and r.clientes_id = '$clientes_id'
						and r.creditos_id = '$creditos_id'
						
						order by r.fecha desc
						limit 1
						";
			if( $rec->countBySql($sql) > 0 ){
				$rec2 = $db2->inQueryAssoc($sql);
				foreach($rec2 as $rec2):
					Flash::notice($rec2[prefijo].$rec2[consecutivo]." Ultimo Recibo caja con intereses fue pagado el dia ".$rec2[fecha] );
					$fecha = $rec2[fecha];
				endforeach;
			}else{
				Flash::notice("Recibos de caja con intereses no encontrados");
			}
			
			$abonos_mes = 0;
			$saldo_deuda = 0;
			$saldo_deuda_sin_prestamos = 0;
			$prestamos_mes = 0;
			$intereses_mes = 0;
			$intereses_prestamos = 0;
			
			
			
			$notas = new DetalleNotasDebito();
			$sql_notas = "select sum(dnd.valor) as valor, 
								 nd.fecha, 
								 (datediff('$fecha_recibo', nd.fecha ) + 1) as dias, 
								 nd.porcentaje,
								 round( ( ( sum(dnd.valor) * ( nd.porcentaje /100 ) ) /30 ) * (datediff('$fecha_recibo', nd.fecha ) + 1) ,-3)as intereses
							from 
								notas_debito nd,
								detalle_notas_debito dnd,
								creditos cr
							where
								nd.id = dnd.notas_debito_id
								and dnd.anulado = 0
								and nd.creditos_id = '$creditos_id' 
								and nd.clientes_id = '$clientes_id' 
								and nd.creditos_id = cr.id 
								and concat(year(nd.fecha),month(nd.fecha)) = concat(year('$fecha_recibo'),month('$fecha_recibo')) 
								group by nd.id
							";
					
				
				$notas = $db2->inQueryAssoc($sql_notas);
				$i=0;
				foreach($notas as $filas) {
					$i++;
					Flash::notice("$i - Prestamos Mes por Valor: ".$filas[valor]." Dias: ". $filas[dias] ." Intereses: ".$filas[intereses]);
					 //Flash::notice($filas[valor]);
					 //Flash::notice($filas[fecha]);
  				     //Flash::notice($filas[dias]);
					 //Flash::notice($filas[porcentaje]);
					 //Flash::notice($filas[intereses]);
					 $prestamos_mes += $filas[valor];
					 $intereses_prestamos += $filas[intereses];
				}
				
			$cxc = new Cxc();
			$cxc = $cxc->findFirst(" creditos_id = '$creditos_id' and anulado=0 ");
			
			$saldo_deuda = $cxc->valor_total + $cxc->pagado;
			Flash::notice("Saldo Deduda: ".$saldo_deuda);
			$saldo_deuda_sin_prestamos = $cxc->valor_total + $cxc->pagado - $prestamos_mes;
			Flash::notice("Saldo Deduda Menos Prestamos Mes: ".$saldo_deuda_sin_prestamos);
			
			$filas = $db2->fetchOne("select round( ( ( $saldo_deuda_sin_prestamos * ( $creditos->porcentaje /100 ) ) /30 ) * (datediff('$fecha_recibo','$fecha') + 1) ,-3)as intereses ");
			Flash::notice($filas[intereses]);
			//$fecha_temp = new Date("2008-01-02");
			//echo $fechatemp->diffDate("2008-01-10"); //Devuelve -
			
			$intereses_mes = $filas[intereses];
			
			$valor_int = $intereses_mes + $intereses_prestamos;
			$sql = "select r.* 
						from 
						recibos_caja r, detalle_recibos_caja dr
						where r.id = dr.recibos_caja_id
						and dr.anulado = '0'
						and dr.descripcion like 'INTERESES%'
						and r.clientes_id = '$clientes_id'
						and r.creditos_id = '$creditos_id'
						and concat(year(r.fecha),month(r.fecha)) = concat(year('$fecha_recibo'),month('$fecha_recibo')) 
						order by r.fecha desc
						";
			if( $rec->countBySql($sql) > 0 ){
				$valor_int = 0;
				Flash::notice("Ya fueron cobrados intereses en este mes.");
			}
			
			//$this->setParamToView("valor_int",$valor_int);
			$this->setParamToView("valor_int",$valor_int);
			$this->setParamToView("fecha_recibo",$fecha_recibo);
			
			$db2->close();
		}
		
		public function agregar_intereses_itemAction(){
			$this->setResponse("ajax");
			
		}**/
		
/*
		public function addAction(){

			$this->setResponse('view');
			/*echo "<script>jQuery(\"#guardar\").Attr(\"disabled\",\"disabled\");</script>";*/
		/*	$deshabilitar = "<script>jQuery(\"#guardar\").removeAttr(\"disabled\");</script>";
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
							 $encabezado = new RecibosCaja();
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
										Flash::error("TABLA Recibos Caja: ".$message); 
										$msg_error.=Flash::error("TABLA Recibos Caja: ".$message); 
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
									$detalles = new DetalleRecibosCaja();
									$detalles->setTransaction($transaction);
									//$detalles->id                     = $items->id;
									if( trim(substr($items->id,0,4)) == trim('temp') ){
										$detalles->id                     = '0';
									}else{
										$detalles->id                     = $items->id;
									}
									$detalles->detalle_cxc_id         = $items->detalle_cxc_id;
									$detalles->recibos_caja_id        = $encabezado->id;
									$detalles->descripcion            = $items->descripcion;
									$detalles->valor                  = $items->valor;
									$detalles->codigo                 = $items->codigo;
									$detalles->vencimiento            = $items->vencimiento;
									$detalles->descuento              = 0;
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
		  
		  
		

}*/


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
							 $encabezado = new RecibosCaja();
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
										Flash::error("TABLA Recibos Caja: ".$message); 
										$msg_error.=Flash::error("TABLA Recibos Caja: ".$message); 
									}
									//cierra foreach
									$transaction->rollback();
								//cierra if
								}else{
									/*Registro Para Audirotia*/
					 
									 $syslogger = new Syslogger();
									 $syslogger->setTransaction($transaction);
									 $syslogger->username          = Session::get(md5("admin_username"));
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = $this->getControllerName();
									 $syslogger->action            = $this->getActionName();
									 $syslogger->error_sistema     = "Insertado Satisfactoriamente ";
									 $syslogger->descripcion       = "Registro Insertado";
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
							
							$total_credito = 0;
							$detalles_item = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$_POST["detalles"])));
							
							/* cunsultando intereses para el credito */
								$cxc = new Cxc();
								$cxc->setTransaction($transaction);
								$cxc = $this->Cxc->findFirst("creditos_id = '$encabezado->creditos_id' and anulado = '0'");
								$saldo = $cxc->capital + $cxc->capital_pagado;
								Flash::notice("Capital Adeudado antes de este recibo de caja:  ".number_format($saldo));
								
								$emp = new Empresa();
								$emp->setTransaction($transaction);
								$emp = $this->Empresa->findFirst("id = '$encabezado->empresa_id' ");
								$notastipo = $emp->tipo_documento_id_notas_debito;
								$creditostipo = $emp->tipo_documento_id_creditos;
								Flash::notice("notas tipo ".$notastipo);
								Flash::notice("creditos tipo ".$creditostipo);
							/**/
							
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
								
								
								$saldotmp = $saldo;
								foreach( $detalles_item as $items):
									$capitaltmp = 0;
									$interestmp = 0;
									
									$detalles = new DetalleRecibosCaja();
									$detalles->setTransaction($transaction);
									//$detalles->id                     = $items->id;
									if( trim(substr($items->id,0,4)) == trim('temp') ){
										$detalles->id                     = '0';
									}else{
										$detalles->id                     = $items->id;
									}
									
									$dcxc = new DetalleCxc();
								    $dcxc->setTransaction($transaction);
								    $dcxc = $this->DetalleCxc->findFirst("id = '$items->detalle_cxc_id' and anulado = 0");
									
									/*si es credito*/
									if($dcxc->tipo_documento_id == $creditostipo){
										$creditos_tmp = $this->Creditos->findFirst("id = '$encabezado->creditos_id' and anulado = 0 ");
										$porcentaje    = $creditos_tmp->porcentaje/100;
									
										Flash::notice("Porcenate de interese creditos = ".$porcentaje);
										if($this->DetalleCxc->count("tipo_documento_id = '$creditostipo' and vencimiento < '$items->vencimiento' and creditos_id = '$encabezado->creditos_id' and anulado = 0 ")==0){
											$fecha = $creditos_tmp->fecha_cuota;
										}else{
											$fecha = $this->DetalleCxc->findFirst("tipo_documento_id = '$creditostipo' and vencimiento < '$items->vencimiento' and creditos_id = '$encabezado->creditos_id' and anulado = 0 ","order: vencimiento desc")->vencimiento;
											}
									}
									
									/*si es notas debito*/
									
									if($dcxc->tipo_documento_id == $notastipo){
										
										$notasd_tmp = $this->NotasDebito->findFirst("id = '$encabezado->creditos_id' and anulado = 0 ");
										$porcentaje = $notasd_tmp->porcentaje/100;
										Flash::notice("Porcenate notas creditos de interese = ".$porcentaje);
										if($this->DetalleCxc->count("tipo_documento_id = '$notastipo' and  vencimiento < '$items->vencimiento' and creditos_id = '$encabezado->creditos_id' and anulado = 0 ")==0){
												$fecha = $notasd_tmp->fecha_cuota;
										}else{
												$fecha = $this->DetalleCxc->findFirst("tipo_documento_id = '$notastipo' and vencimiento < '$items->vencimiento' and creditos_id = '$encabezado->creditos_id' and anulado = 0 ","order: vecimiento desc")->vencimiento;
											}
									}
									
									Flash::notice("fecha inicial para el calculo de los intereses ".$fecha);
									$fecha2 = new Date("$encabezado->fecha");
									$dias = $fecha2->diffDate("$fecha");  
									$dias = $dias+1;
									Flash::notice(" $encabezado->fecha  $fecha Dias para el calculo de los intereses ".$dias);
									if($dias<0){$dias=0;}
									if($dias>30){$dias=30;}
									
									$dias_anteriores = $this->DetalleRecibosCaja->sum("dias_intereses","conditions: detalle_cxc_id = '$items->detalle_cxc_id' and anulado = '0' "); 
									if($dias_anteriores>30){$dias_anteriores=30;}
									$dias = $dias - $dias_anteriores;
									
									$interes_diario = (($saldotmp*$porcentaje)/30);
									Flash::notice("Valor Intereses diario ".$interes_diario);
									$interestmp = $interes_diario*$dias;
									$interestmp = round($interestmp,-3);
									Flash::notice("Interes Calculado para esta cuota ".$interestmp);
									
									$capitaltmp = $items->valor - $interestmp ;
									Flash::notice("Capital Calculado para esta cuota ".$capitaltmp);
									
									$detalles->detalle_cxc_id         = $items->detalle_cxc_id;
									$detalles->recibos_caja_id        = $encabezado->id;
									$detalles->descripcion            = $items->descripcion;
									$detalles->valor                  = $items->valor;
									$detalles->codigo                 = $items->codigo;
									$detalles->vencimiento            = $items->vencimiento;
									$detalles->descuento              = 0;
									$detalles->dias_intereses         = $dias;
									$detalles->capital                = $capitaltmp;
									$detalles->intereses              = $interestmp;
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
											
										}else{
											 /*Registro Para Audirotia*/
					 
											 $syslogger = new Syslogger();
											 $syslogger->setTransaction($transaction);
											 $syslogger->username          = Session::get(md5("admin_username"));
											 $syslogger->module            = Router::getModule();
											 $syslogger->application       = Router::getApplication();
											 $syslogger->controller        = $this->getControllerName();
											 $syslogger->action            = $this->getActionName();
											 $syslogger->error_sistema     = "Insertado Detalle Recibo Caja ".$detalles->id;
											 $syslogger->descripcion       = "Registro Insertado";
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
										
								$saldotmp = $saldotmp - $capitaltmp;
								Flash::notice("Nuevo Saldo");					  
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
			
			$rc = new RecibosCaja();
			$rcd = new DetalleRecibosCaja();
			$rc  = $this->RecibosCaja->findFirst(" id = '$id'");
			$rcd = $this->DetalleRecibosCaja->find(" recibos_caja_id = '$rc->id' and anulado = 0 ");
			
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
			Tag::displayTo("banco",$rc->banco);
			Tag::displayTo("cheque",$rc->observaciones);
			
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
							 $encabezado = new RecibosCaja();
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
										Flash::error("TABLA Recibos Caja: ".$message); 
										$msg_error.=Flash::error("TABLA Recibos Caja: ".$message); 
									}
									//cierra foreach
									$transaction->rollback();
								//cierra if
								}else{
									
									    /*Registro Para Audirotia*/
										 $syslogger = new Syslogger();
										 $syslogger->setTransaction($transaction);
										 $syslogger->username          = Session::get(md5("admin_username"));
										 $syslogger->module            = Router::getModule();
										 $syslogger->application       = Router::getApplication();
										 $syslogger->controller        = $this->getControllerName();
										 $syslogger->action            = $this->getActionName();
										 $syslogger->error_sistema     = "Actualizado Recibo Caja ".$detalles->id;
										 $syslogger->descripcion       = "Registro Actualizado";
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
							
							$total_credito = 0;
							$detalles_item = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$_POST["detalles"])));
							
							/* cunsultando intereses para el credito */
								$cxc = new Cxc();
								$cxc->setTransaction($transaction);
								$cxc = $this->Cxc->findFirst("creditos_id = '$encabezado->creditos_id' and anulado = '0'");
								$saldo = $cxc->capital + $cxc->capital_pagado;
								Flash::notice("Capital Adeudado antes de este recibo de caja:  ".number_format($saldo));
								
								$emp = new Empresa();
								$emp->setTransaction($transaction);
								$emp = $this->Empresa->findFirst("id = '$encabezado->empresa_id' ");
								$notastipo = $emp->tipo_documento_id_notas_debito;
								$creditostipo = $emp->tipo_documento_id_creditos;
								Flash::notice("notas tipo ".$notastipo);
								Flash::notice("creditos tipo ".$creditostipo);
							/**/
							
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
								
								
								$saldotmp = $saldo;
								foreach( $detalles_item as $items):
									
									$capitaltmp = 0;
									$interestmp = 0;
									$dias = 0;
									
									$detalles = new DetalleRecibosCaja();
									$detalles->setTransaction($transaction);
									//$detalles->id                     = $items->id;
									if( trim(substr($items->id,0,4)) == trim('temp') ){
										$detalles->id                     = '0';
									}else{
										$detalles->id                     = $items->id;
									}
									
									if($detalles->anulado == 0){
									
											
									
											$dcxc = new DetalleCxc();
											$dcxc->setTransaction($transaction);
											$dcxc = $this->DetalleCxc->findFirst("id = '$items->detalle_cxc_id' and anulado = 0");
									
											/*si es credito*/
											if($dcxc->tipo_documento_id == $creditostipo){
												$creditos_tmp = $this->Creditos->findFirst("id = '$encabezado->creditos_id' and anulado = 0 ");
												$porcentaje    = $creditos_tmp->porcentaje/100;
											
												Flash::notice("Porcenate de interese creditos = ".$porcentaje);
													if($this->DetalleCxc->count("tipo_documento_id = '$creditostipo' and vencimiento < '$items->vencimiento' and creditos_id = '$encabezado->creditos_id' and anulado = 0 ")==0){
														$fecha = $creditos_tmp->fecha_cuota;
													}else{
													$fecha = $this->DetalleCxc->findFirst("tipo_documento_id = '$creditostipo' and vencimiento < '$items->vencimiento' and creditos_id = '$encabezado->creditos_id' and anulado = 0 ","order: vencimiento desc")->vencimiento;
													}
											}
									
											/*si es notas debito*/
											
											if($dcxc->tipo_documento_id == $notastipo){
												
												$notasd_tmp = $this->NotasDebito->findFirst("id = '$encabezado->creditos_id' and anulado = 0 ");
												$porcentaje = $notasd_tmp->porcentaje/100;
												Flash::notice("Porcenate notas creditos de interese = ".$porcentaje);
													if($this->DetalleCxc->count("tipo_documento_id = '$notastipo' and  vencimiento < '$items->vencimiento' and creditos_id = '$encabezado->creditos_id' and anulado = 0 ")==0){
														$fecha = $notasd_tmp->fecha_cuota;
													}else{
														$fecha = $this->DetalleCxc->findFirst("tipo_documento_id = '$notastipo' and vencimiento < '$items->vencimiento' and creditos_id = '$encabezado->creditos_id' and anulado = 0 ","order: vecimiento desc")->vencimiento;
													}
											}
									
											Flash::notice("fecha inicial para el calculo de los intereses ".$fecha);
											$fecha2 = new Date("$encabezado->fecha");
											$dias = $fecha2->diffDate("$fecha");  
											$dias = $dias+1;
											Flash::notice(" $encabezado->fecha  $fecha Dias para el calculo de los intereses ".$dias);
											if($dias<0){$dias=0;}
											if($dias>30){$dias=30;}
											
											$dias_anteriores = $this->DetalleRecibosCaja->sum("dias_intereses","conditions: detalle_cxc_id = '$items->detalle_cxc_id' and anulado = '0' "); 
											if($dias_anteriores>30){$dias_anteriores=30;}
											$dias = $dias - $dias_anteriores;
											
											$interes_diario = round((($saldotmp*$porcentaje)/30),-3) + 1000;
											Flash::notice("Valor Intereses diario ".$interes_diario);
											$interestmp = $interes_diario*$dias;
											Flash::notice("Interes Calculado para esta cuota ".$interestmp);
											$interestmp = round($interestmp,-3);
											$capitaltmp = $items->valor - $interestmp;
											Flash::notice("Capital Calculado para esta cuota ".$capitaltmp);
											
									}
									
									
									$detalles->detalle_cxc_id         = $items->detalle_cxc_id;
									$detalles->recibos_caja_id        = $encabezado->id;
									$detalles->descripcion            = $items->descripcion;
									$detalles->valor                  = $items->valor;
									$detalles->codigo                 = $items->codigo;
									$detalles->vencimiento            = $items->vencimiento;
									$detalles->descuento              = 0;
									$detalles->dias_intereses         = $dias;
									$detalles->capital                = $capitaltmp;
									$detalles->intereses              = $interestmp;
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
											
										}else{
											 /*Registro Para Audirotia*/
					 
											 $syslogger = new Syslogger();
											 $syslogger->setTransaction($transaction);
											 $syslogger->username          = Session::get(md5("admin_username"));
											 $syslogger->module            = Router::getModule();
											 $syslogger->application       = Router::getApplication();
											 $syslogger->controller        = $this->getControllerName();
											 $syslogger->action            = $this->getActionName();
											 $syslogger->error_sistema     = "Actualizado Detalle Recibo Caja ".$detalles->id;
											 $syslogger->descripcion       = "Registro Actualizado";
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
										
								$saldotmp = $saldotmp - $capitaltmp;
								Flash::notice("Nuevo Saldo $saldotmp");					  
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
			$rc = new RecibosCaja();
			$rcd = new DetalleRecibosCaja();
			$rc  = $this->RecibosCaja->findFirst(" id = '$id'");
			$rcd = $this->DetalleRecibosCaja->find(" recibos_caja_id = '$rc->id' and anulado = 0 ");
			
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
				$rc = new RecibosCaja();
				$rc  = $this->RecibosCaja->findFirst(" id = '$id'");
				$this->setParamToView("id",$id);
				$this->setParamToView("empresa_id",$rc->empresa_id);
		}	



	}

	

?>

