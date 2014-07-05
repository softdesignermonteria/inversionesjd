<?php

class Recibos_caja_movilController extends ApplicationController {

		public $prefijo;
		public $tipo_documento;
		public $tipo_documento_nombre;
		public $id_consecutivo;
		
		public $clientes_id;
		public $creditos_id;
		public $cobradores_id;
		public $solicitud_id;

	public function initialize() {
		$this->setTemplateAfter("adminiziolite");
	}
	
			

	 public function beforeFilter(){
			
		 //if accion es agregar entonces ejecuta
			if( Router::getAction()=='add' ){	
			
				//validando si tipo documento existe para la empresa logueada
				
				$td = new TipoDocumento();
				$tipo_document = $td->findFirst("nombre = 'recibos_caja' and empresa_id = '3' ");
					
							 
				if(!$tipo_document){
					//Flash::error("tipo de documento no existe en la bd - tipo_documento");
					//Flash::error("se recomienda crear este tipo de documento en el apartado de configuraciones");
					//Flash::error("esta accion es solo la pueden hacer los administradores del sistema");
					//$this->redirect("administrador/index");
				    //$authLog = new Logger("File", "auth_failed.txt");
				   	//$authLog->log("Tipo Documento No Existe:  '".'recibos_caja_movil'."/".'add'."' Fecha ".date("Y-m-d H:i:s"));
					 $syslogger = new Syslogger();
					 $syslogger->username      = '';
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    = "recibos_caja_movil";
					 $syslogger->action        = "add";
					 $syslogger->error_sistema = "tipo de documento no existe en la bd. se recomienda crear este tipo de documento en el apartado de configuraciones 'recibos_caja_movil/add'  Fecha: ".date("Y-m-d H:i:s");
					 $syslogger->descripcion   = "Tipo Documento No Existe";
					 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
					 $syslogger->fecha         = date("Y-m-d H:i:s");
					 if(!$syslogger->save()){
						foreach($syslogger->getMessages() as $message){ 
								//Flash::error("Tabla de errores del sistema: ".$message); 
							}
					 }else{
							 //Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
						 }
				
					//Router::routeTo("controller: login", "action: index");
					return false;
				}else{
				
					//cargando las variables globales para este controlador
					$this->tipo_documento = $tipo_document->id;
					//$this->tipo_documento_nombre = $tipo_document->nombre;
					
				}//fin si o no existe docuemnto
				
				$det= new DetalleConsecutivos();
				
				$cons = $det->findFirst("tipo_documento_id = '$this->tipo_documento' and empresa_id = '3' and activo = '0' ");
				
				if(!$cons){
					//Flash::error("tipo de documento no existe en la bd - Consecutivos del Sistema o no se la ha Asignado un Consecutivo valido");
					//Flash::error("se recomienda crear este tipo de documento en el apartado de configuraciones consecutivos");
					//Flash::error("esta accion es solo la pueden hacer los administradores del sistema");
				
					//$authLog = new Logger("File", "auth_failed.txt");
				    //$authLog->log("Detalle Consecutivo No Existe '".'recibos_caja_movil'."/".'add'."' Fecha ".date("Y-m-d H:i:s"));
					 $syslogger = new Syslogger();
					 $syslogger->username      =  '';
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    ='recibos_caja_movil';
					 $syslogger->action        = 'add';
					 $syslogger->error_sistema = "tipo de documento no existe en la bd - Consecutivos del Sistema o no se la ha Asignado un Consecutivo valido '".'recibos_caja_movil'."/".'add'."'  Fecha: ".date("Y-m-d H:i:s");
					 $syslogger->descripcion   = "No existe un consecutivo valido";
					 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
					 $syslogger->fecha         = date("Y-m-d H:i:s");
					 if(!$syslogger->save()){
						foreach($syslogger->getMessages() as $message){ 
								//Flash::error("Tabla de errores del sistema: ".$message); 
							}
					 }else{
							 //Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
						 }

					//$this->redirect("administrador/index");
					//Router::routeTo("controller: login", "action: index");
					return false;
				}else{
				
					//cargando las variables globales para este controlador
					$this->prefijo = $cons->prefijo;
					$this->id_consecutivo = $cons->id;
					
				}//fin si o no existe docuemnto
		
			} //fin si comprobacion action = agregar
			
			
			
			
		 }
		
		

	public function indexAction(){
		
		
	}
	
	
	public function addAction(){
			
			$verdadero[]=array("mensaje"=>"true");	
			$falso[]=array("mensaje"=>"false");
			$sw=0; //true 
			$this->setResponse('view');
			$encabezado = $_REQUEST["encabezado"];
			$msg_error="";

			 $syslogger = new Syslogger();
			 $syslogger->username          = '';
			 $syslogger->module            = Router::getModule();
			 $syslogger->application       = Router::getApplication();
			 $syslogger->controller        = 'recibos_caja_movil';
			 $syslogger->action            = 'add';
			 $syslogger->error_sistema     = "Parametros";
			 $syslogger->descripcion       = "Parametros";
			 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
			 $syslogger->fecha             = date("Y-m-d H:i:s");
			 $syslogger->tipo_documento_id = $tipo_documento_id;
			 $syslogger->prefijo           = $prefijo;
			 $syslogger->consecutivo       = $consecutivo;
			 $syslogger->objeto            = "encabezado=".$encabezado;
			 $syslogger->save();	
			 //$encabezado = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$jsonenc)));
			//if($encabezado!='[]'){	
				
				if(json_decode($encabezado)){
					$encabezado = json_decode($_REQUEST["encabezado"]);	
					$enc        = json_decode($_REQUEST["encabezado"]);	
					//foreach( $encabezado as $enc):
						 if($this->RecibosCaja->count(" provisional = '$enc->provisional' and anulado = 0 ")==0){
							$transaction = new ActiveRecordTransaction(true);   
							try{
								$transaction = TransactionManager::getUserTransaction(); 
								$this->Consecutivos->setTransaction($transaction); 
								$this->DetalleConsecutivos->setTransaction($transaction); 
								$prefijo = '';  	$consecutivo = ''; 	$tipo_documento_id = '';
								$cons = $this->DetalleConsecutivos->findFirst("activo = '0' and tipo_documento_id = '$this->tipo_documento'");
								$id = $cons->id;
								$prefijo = $cons->prefijo;
								$consecutivo = $cons->desde;
								$tipo_documento_id = $cons->tipo_documento_id;
								$dtc = new DetalleConsecutivos();
								$dtc = $this->DetalleConsecutivos->findFirst("id = '$id'");
								$dtc->setTransaction($transaction);
								$dtc->desde = $dtc->desde+1;
								if($dtc->save()==false){
									$sw=1;
									 $syslogger = new Syslogger();
									 $syslogger->username          = '';
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = 'recibos_caja_movil';
									 $syslogger->action            = 'add';
									 $syslogger->error_sistema     = "Error Actualzando consecutivo";
									 $syslogger->descripcion       = "Error Actualzando consecutivo";
									 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha             = date("Y-m-d H:i:s");
									 $syslogger->tipo_documento_id = $tipo_documento_id;
									 $syslogger->prefijo           = $prefijo;
									 $syslogger->consecutivo       = $consecutivo;
									 $syslogger->objeto            = json_encode($dtc);
									 $syslogger->save();	
									$transaction->rollback();
								}

							
									//Flash::success("VERIFICANDO LOS CONSECUTIVOS PARA ESTE DOCUMENTO");		
									 $rec = new RecibosCaja();
									 $rec->setTransaction($transaction);
									//para traer el mismo modelo ya instanciado
									 $rec->id                  = "";
									 $rec->empresa_id          = "3";
									 $rec->clientes_id         = $enc->clientes_id;
									 $rec->creditos_id         = $enc->creditos_id;
									 $rec->cobradores_id       = $enc->cobradores_id;
									 $rec->tipo_documento_id   = $cons->tipo_documento_id;
									 $rec->prefijo             = $cons->prefijo;
									 $rec->consecutivo         = $cons->desde;   
									 $rec->fecha_act           = date("Y-m-d H:i:s");
									 $rec->hora_act            = date("H:i:s");
									 $rec->fecha               = $enc->fecha;
									 $rec->provisional         = $enc->provisional;
									 $rec->anulado             = '0';
									 $rec->activo              = '0';
									 $rec->observaciones       = "";
									 $rec->cheque              = "";
									 $rec->banco               = "";
										if($rec->save()==false){
													$msg_error="";
													foreach($rec->getMessages() as $message){ 
														$msg_error.=$message;//Flash::error("Tabla de errores del sistema: ".$message); 
													}
													$sw=1;
													/*Registro Para Audirotia*/
									 
													 $syslogger = new Syslogger();
													 //$syslogger->setTransaction($transaction);
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "No Insertado Satisfactoriamente Movil ".$msg_error;
													 $syslogger->descripcion       = "Registro No Insertado Movil";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $rec->tipo_documento_id;
													 $syslogger->prefijo           = $rec->prefijo;
													 $syslogger->consecutivo       = $rec->consecutivo;
													 $syslogger->objeto            = json_encode($rec);
													 $syslogger->save();
										
													$transaction->rollback();
												//cierra if
												}else{
													/*Registro Para Audirotia*/
									 
													 $syslogger = new Syslogger();
													 //$syslogger->setTransaction($transaction);
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "Insertado Satisfactoriamente Movil";
													 $syslogger->descripcion       = "Registro Insertado Movil";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $rec->tipo_documento_id;
													 $syslogger->prefijo           = $rec->prefijo;
													 $syslogger->consecutivo       = $rec->consecutivo;
													 $syslogger->objeto            = json_encode($rec);
													 $syslogger->save();
												}
										//fin guardar encabezado recibos de caja
										//$detalles = json_decode($encabezado->detalles); 
									    //print_r( $encabezado->detalles );
										foreach($encabezado->detalles  as $items):
										
											$creditos_tmp  = $this->Creditos->findFirst("id   = '$rec->creditos_id' and anulado = 0 ");
											$detalles_tmp  = $this->DetalleCxc->findFirst("id = '$items->detalle_cxc_id' and anulado = 0 ");
											$porcentaje    = $creditos_tmp->porcentaje/100; 
											$capitaltmp = 0;
											$interestmp = 0;
									
											$detalles = new DetalleRecibosCaja();
											$detalles->setTransaction($transaction);
											$detalles->id                     = "";
											$capitaltmp = $items->valor_pagado_cuota / (1 + $porcentaje );
											$detalles->detalle_cxc_id         = $items->detalle_cxc_id;
											$detalles->recibos_caja_id        = $rec->id;
											$detalles->descripcion            = "Pago movil ".$items->detalle_cxc_id."-".$rec->prefijo.$rec->consecutivo."-".$detalles_tmp->codigo;
											$detalles->valor                  = $items->valor_pagado_cuota;
											$detalles->codigo                 = $detalles_tmp->codigo;
											$detalles->vencimiento            = $detalles_tmp->vencimiento;
											$detalles->descuento              = 0;
											$detalles->dias_intereses         = 0;
											$detalles->capital                = $capitaltmp;
											$detalles->intereses              = $items->valor_pagado_cuota - $capitaltmp;
											$detalles->anulado                = '0';
									
												if($detalles->save()==false){
													$msg_error="";
													foreach($detalles->getMessages() as $message){ 
														$msg_error.=$message;//Flash::error("Tabla de errores del sistema: ".$message); 
													}
													 $sw=1;
													 $syslogger = new Syslogger();
													 //$syslogger->setTransaction($transaction);
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "No Insertado Detalle Recibo Caja Movil ".$msg_error;
													 $syslogger->descripcion       = "Registro No Insertado Movil";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $rec->tipo_documento_id;
													 $syslogger->prefijo           = $rec->prefijo;
													 $syslogger->consecutivo       = $rec->consecutivo;
													 $syslogger->objeto            = json_encode($detalles);
													 $syslogger->save();
													 $transaction->rollback();
													
												}else{
													 /*Registro Para Audirotia*/
							 
													 $syslogger = new Syslogger();
													 //$syslogger->setTransaction($transaction);
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "Insertado Detalle Recibo Caja ".$detalles->id;
													 $syslogger->descripcion       = "Registro Insertado";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $rec->tipo_documento_id;
													 $syslogger->prefijo           = $rec->prefijo;
													 $syslogger->consecutivo       = $rec->consecutivo;
													 $syslogger->objeto            = json_encode($detalles);
													 $syslogger->save();
												}
										
										endforeach;	
							
								
							
							$transaction->commit();
							}catch(TransactionFailed $e){		
								$sw=1;
								 $syslogger = new Syslogger();
								 ////$syslogger->setTransaction($transaction);
								 $syslogger->username          = '';
								 $syslogger->module            = Router::getModule();
								 $syslogger->application       = Router::getApplication();
								 $syslogger->controller        = 'recibos_caja_movil';
								 $syslogger->action            = 'add';
								 $syslogger->error_sistema     = "Error en la transaccion";
								 $syslogger->descripcion       = "Error en la transaccion".$e->getMessage();
								 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
								 $syslogger->fecha             = date("Y-m-d H:i:s");
								 $syslogger->tipo_documento_id = $tipo_documento_id;
								 $syslogger->prefijo           = $prefijo;
								 $syslogger->consecutivo       = $consecutivo;
								 $syslogger->objeto            = "";
								 $syslogger->save();	
							}	
						 }else{
									 $syslogger = new Syslogger();
									 $syslogger->username          = '';
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = 'recibos_caja_movil';
									 $syslogger->action            = 'add';
									 $syslogger->error_sistema     = "provisional ya actualizado o vacio";
									 $syslogger->descripcion       = "provisional ya actualizado o vacio";
									 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha             = date("Y-m-d H:i:s");
									 $syslogger->tipo_documento_id = $tipo_documento_id;
									 $syslogger->prefijo           = $prefijo;
									 $syslogger->consecutivo       = $consecutivo;
									 $syslogger->objeto            = "";
									 $syslogger->save();
				
						 } //fin si no esta provisional registrado
					//endforeach;	//fin encabezado
					
				}else{
						 $sw=1;
						 $syslogger = new Syslogger();
						 ////$syslogger->setTransaction($transaction);
						 $syslogger->username          = '';
						 $syslogger->module            = Router::getModule();
						 $syslogger->application       = Router::getApplication();
						 $syslogger->controller        = 'recibos_caja_movil';
						 $syslogger->action            = 'add';
						 $syslogger->error_sistema     = "Error json No Valido";
						 $syslogger->descripcion       = "Error json No Valido";
						 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
						 $syslogger->fecha             = date("Y-m-d H:i:s");
						 $syslogger->tipo_documento_id = "";
						 $syslogger->prefijo           = "";
						 $syslogger->consecutivo       = "";
						 $syslogger->objeto            = "";
						 $syslogger->save();	
				}//fin validacion json encabezado
			 /*}else{
				 	$sw=1;
						 $syslogger = new Syslogger();
						 ////$syslogger->setTransaction($transaction);
						 $syslogger->username          = '';
						 $syslogger->module            = Router::getModule();
						 $syslogger->application       = Router::getApplication();
						 $syslogger->controller        = 'recibos_caja_movil';
						 $syslogger->action            = 'add';
						 $syslogger->error_sistema     = "Error json vacio";
						 $syslogger->descripcion       = "Error json vacio";
						 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
						 $syslogger->fecha             = date("Y-m-d H:i:s");
						 $syslogger->tipo_documento_id = "";
						 $syslogger->prefijo           = "";
						 $syslogger->consecutivo       = "";
						 $syslogger->objeto            = $encabezado;
						 $syslogger->save();
				 }//finn validar json vacio*/
				 /*Respuesta*/
				 if($sw==0){
						 $this->setParamToView("responce",$verdadero);
					 }else{
						  $this->setParamToView("responce",$falso);
						 }
			 
			
			 
			
	}

	
	
	public function addmartesAction(){
			
			$verdadero[]=array("mensaje"=>"true");	
			$falso[]=array("mensaje"=>"false");
			$sw=0; //true 
			$this->setResponse('view');
			$encabezado = $_REQUEST["encabezado"];
			$msg_error="";
			
			$emp = new Empresa();
			$emp = $emp->findFirst(" activo = 0 ");
		 
			 //$encabezado = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$jsonenc)));
			//if($encabezado!='[]'){	
				
				if(json_decode($encabezado)){
					//$encabezado = json_decode($_REQUEST["encabezado"]);	
					$enc        = json_decode($_REQUEST["encabezado"]);	
					
					$detalles_tmp  = $this->DetalleCxc->findFirst("id = '$enc->clientes_id' and anulado = 0 ");
					
					//foreach( $encabezado as $enc):
						 if($this->RecibosCaja->count(" provisional = '$enc->provisional' and anulado = 0 ")==0){
							$transaction = new ActiveRecordTransaction(true);   
							try{
								$transaction = TransactionManager::getUserTransaction(); 
								$this->Consecutivos->setTransaction($transaction); 
								$this->DetalleConsecutivos->setTransaction($transaction); 
								$prefijo = '';  	$consecutivo = ''; 	$tipo_documento_id = '';
								$cons = $this->DetalleConsecutivos->findFirst("activo = '0' and tipo_documento_id = '$this->tipo_documento'");
								$id = $cons->id;
								$prefijo = $cons->prefijo;
								$consecutivo = $cons->desde;
								$tipo_documento_id = $cons->tipo_documento_id;
								$dtc = new DetalleConsecutivos();
								$dtc = $this->DetalleConsecutivos->findFirst("id = '$id'");
								$dtc->setTransaction($transaction);
								$dtc->desde = $dtc->desde+1;
								if($dtc->save()==false){
									$sw=1;
									 $syslogger = new Syslogger();
									 $syslogger->username          = '';
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = 'recibos_caja_movil';
									 $syslogger->action            = 'add';
									 $syslogger->error_sistema     = "Error Actualzando consecutivo";
									 $syslogger->descripcion       = "Error Actualzando consecutivo";
									 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha             = date("Y-m-d H:i:s");
									 $syslogger->tipo_documento_id = $tipo_documento_id;
									 $syslogger->prefijo           = $prefijo;
									 $syslogger->consecutivo       = $consecutivo;
									 $syslogger->objeto            = json_encode($dtc);
									 $syslogger->save();	
									$transaction->rollback();
								}

							
									//Flash::success("VERIFICANDO LOS CONSECUTIVOS PARA ESTE DOCUMENTO");		
									 $rec = new RecibosCaja();
									 $rec->setTransaction($transaction);
									//para traer el mismo modelo ya instanciado
									 $rec->id                  = "";
									 $rec->empresa_id          = "$emp->id";
									 $rec->clientes_id         = $enc->clientes_id;
									 $rec->creditos_id         = $enc->creditos_id;
									 $rec->cobradores_id       = $enc->cobradores_id;
									 $rec->tipo_documento_id   = $cons->tipo_documento_id;
									 $rec->prefijo             = $cons->prefijo;
									 $rec->consecutivo         = $cons->desde;   
									 $rec->fecha_act           = date("Y-m-d H:i:s");
									 $rec->hora_act            = date("H:i:s");
									 $rec->fecha               = date("Y-m-d H:i:s");
									 $rec->provisional         = $enc->provisional;
									 $rec->anulado             = '0';
									 $rec->activo              = '0';
									 $rec->observaciones       = "";
									 $rec->cheque              = "";
									 $rec->banco               = "";
										if($rec->save()==false){
													$msg_error="";
													foreach($rec->getMessages() as $message){ 
														$msg_error.=$message;//Flash::error("Tabla de errores del sistema: ".$message); 
													}
													$sw=1;
													/*Registro Para Audirotia*/
									 
													 $syslogger = new Syslogger();
													 //$syslogger->setTransaction($transaction);
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "No Insertado Satisfactoriamente Movil ".$msg_error;
													 $syslogger->descripcion       = "Registro No Insertado Movil";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $rec->tipo_documento_id;
													 $syslogger->prefijo           = $rec->prefijo;
													 $syslogger->consecutivo       = $rec->consecutivo;
													 $syslogger->objeto            = json_encode($rec);
													 $syslogger->save();
										
													$transaction->rollback();
												//cierra if
												}else{
													/*Registro Para Audirotia*/
									 
													 $syslogger = new Syslogger();
													 //$syslogger->setTransaction($transaction);
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "Insertado Satisfactoriamente Movil";
													 $syslogger->descripcion       = "Registro Insertado Movil";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $rec->tipo_documento_id;
													 $syslogger->prefijo           = $rec->prefijo;
													 $syslogger->consecutivo       = $rec->consecutivo;
													 $syslogger->objeto            = json_encode($rec);
													 $syslogger->save();
												}
										//fin guardar encabezado recibos de caja
										//$detalles = json_decode($encabezado->detalles); 
									    //print_r( $encabezado->detalles );
										foreach($encabezado->detalles  as $items):
										
											$creditos_tmp  = $this->Creditos->findFirst("id   = '$rec->creditos_id' and anulado = 0 ");
											$detalles_tmp  = $this->DetalleCxc->findFirst("id = '$items->detalle_cxc_id' and anulado = 0 ");
											$porcentaje    = $creditos_tmp->porcentaje/100; 
											$capitaltmp = 0;
											$interestmp = 0;
									
											$detalles = new DetalleRecibosCaja();
											$detalles->setTransaction($transaction);
											$detalles->id                     = "";
											$capitaltmp = $items->valor_pagado_cuota / (1 + $porcentaje );
											$detalles->detalle_cxc_id         = $items->detalle_cxc_id;
											$detalles->recibos_caja_id        = $rec->id;
											$detalles->descripcion            = "Pago movil ".$items->detalle_cxc_id."-".$rec->prefijo.$rec->consecutivo."-".$detalles_tmp->codigo;
											$detalles->valor                  = $items->valor_pagado_cuota;
											$detalles->codigo                 = $detalles_tmp->codigo;
											$detalles->vencimiento            = $detalles_tmp->vencimiento;
											$detalles->descuento              = 0;
											$detalles->dias_intereses         = 0;
											$detalles->capital                = $capitaltmp;
											$detalles->intereses              = $items->valor_pagado_cuota - $capitaltmp;
											$detalles->anulado                = '0';
									
												if($detalles->save()==false){
													$msg_error="";
													foreach($detalles->getMessages() as $message){ 
														$msg_error.=$message;//Flash::error("Tabla de errores del sistema: ".$message); 
													}
													 $sw=1;
													 $syslogger = new Syslogger();
													 //$syslogger->setTransaction($transaction);
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "No Insertado Detalle Recibo Caja Movil ".$msg_error;
													 $syslogger->descripcion       = "Registro No Insertado Movil";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $rec->tipo_documento_id;
													 $syslogger->prefijo           = $rec->prefijo;
													 $syslogger->consecutivo       = $rec->consecutivo;
													 $syslogger->objeto            = json_encode($detalles);
													 $syslogger->save();
													 $transaction->rollback();
													
												}else{
													 /*Registro Para Audirotia*/
							 
													 $syslogger = new Syslogger();
													 //$syslogger->setTransaction($transaction);
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "Insertado Detalle Recibo Caja ".$detalles->id;
													 $syslogger->descripcion       = "Registro Insertado";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $rec->tipo_documento_id;
													 $syslogger->prefijo           = $rec->prefijo;
													 $syslogger->consecutivo       = $rec->consecutivo;
													 $syslogger->objeto            = json_encode($detalles);
													 $syslogger->save();
												}
										
										endforeach;	
							
								
							
							$transaction->commit();
							}catch(TransactionFailed $e){		
								$sw=1;
								 $syslogger = new Syslogger();
								 ////$syslogger->setTransaction($transaction);
								 $syslogger->username          = '';
								 $syslogger->module            = Router::getModule();
								 $syslogger->application       = Router::getApplication();
								 $syslogger->controller        = 'recibos_caja_movil';
								 $syslogger->action            = 'add';
								 $syslogger->error_sistema     = "Error en la transaccion";
								 $syslogger->descripcion       = "Error en la transaccion".$e->getMessage();
								 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
								 $syslogger->fecha             = date("Y-m-d H:i:s");
								 $syslogger->tipo_documento_id = $tipo_documento_id;
								 $syslogger->prefijo           = $prefijo;
								 $syslogger->consecutivo       = $consecutivo;
								 $syslogger->objeto            = "";
								 $syslogger->save();	
							}	
						 }else{
									 $syslogger = new Syslogger();
									 $syslogger->username          = '';
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = 'recibos_caja_movil';
									 $syslogger->action            = 'add';
									 $syslogger->error_sistema     = "provisional ya actualizado o vacio";
									 $syslogger->descripcion       = "provisional ya actualizado o vacio";
									 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha             = date("Y-m-d H:i:s");
									 $syslogger->tipo_documento_id = $tipo_documento_id;
									 $syslogger->prefijo           = $prefijo;
									 $syslogger->consecutivo       = $consecutivo;
									 $syslogger->objeto            = "";
									 $syslogger->save();
				
						 } //fin si no esta provisional registrado
					//endforeach;	//fin encabezado
					
				}else{
						 $sw=1;
						 $syslogger = new Syslogger();
						 ////$syslogger->setTransaction($transaction);
						 $syslogger->username          = '';
						 $syslogger->module            = Router::getModule();
						 $syslogger->application       = Router::getApplication();
						 $syslogger->controller        = 'recibos_caja_movil';
						 $syslogger->action            = 'add';
						 $syslogger->error_sistema     = "Error json No Valido";
						 $syslogger->descripcion       = "Error json No Valido";
						 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
						 $syslogger->fecha             = date("Y-m-d H:i:s");
						 $syslogger->tipo_documento_id = "";
						 $syslogger->prefijo           = "";
						 $syslogger->consecutivo       = "";
						 $syslogger->objeto            = "";
						 $syslogger->save();	
				}//fin validacion json encabezado
			 /*}else{
				 	$sw=1;
						 $syslogger = new Syslogger();
						 ////$syslogger->setTransaction($transaction);
						 $syslogger->username          = '';
						 $syslogger->module            = Router::getModule();
						 $syslogger->application       = Router::getApplication();
						 $syslogger->controller        = 'recibos_caja_movil';
						 $syslogger->action            = 'add';
						 $syslogger->error_sistema     = "Error json vacio";
						 $syslogger->descripcion       = "Error json vacio";
						 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
						 $syslogger->fecha             = date("Y-m-d H:i:s");
						 $syslogger->tipo_documento_id = "";
						 $syslogger->prefijo           = "";
						 $syslogger->consecutivo       = "";
						 $syslogger->objeto            = $encabezado;
						 $syslogger->save();
				 }//finn validar json vacio*/
				 /*Respuesta*/
				 if($sw==0){
						 $this->setParamToView("responce",$verdadero);
					 }else{
						  $this->setParamToView("responce",$falso);
						 }
			 
			
			 
			
	}

}

?>