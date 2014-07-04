<?php

	class Creditos_movilController extends ApplicationController {
	
		public $prefijo;
		public $tipo_documento;
		public $tipo_documento_nombre;
		public $id_consecutivo;
		
		public function initialize() {
			//$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
		}
		
		
		public function beforeFilter(){
			
			if( Router::getAction()=='add' ){	
				$emp = new Empresa();
				$emp = $emp->findFirst(" activo = 0 ");
				$td = new TipoDocumento();
				$tipo_document = $td->findFirst("nombre = 'creditos' and empresa_id = '$emp->id' ");
							 
				if(!$tipo_document){
					 $syslogger = new Syslogger();
					 $syslogger->username      = '';
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    = "creditos_movil";
					 $syslogger->action        = "add";
					 $syslogger->error_sistema = "tipo de documento no existe en la bd. se recomienda crear este tipo de documento en el apartado de configuraciones 'creditos_movil/add'  Fecha: ".date("Y-m-d H:i:s");
					 $syslogger->descripcion   = "Tipo Documento No Existe";
					 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
					 $syslogger->fecha         = date("Y-m-d H:i:s");
					 $syslogger->save();
					return false;
				}else{
					$this->tipo_documento = $tipo_document->id;
				}//fin si o no existe docuemnto
				
				$det= new DetalleConsecutivos();
				
				$cons = $det->findFirst("tipo_documento_id = '$this->tipo_documento' and empresa_id = '$emp->id' and activo = '0' ");
				
				if(!$cons){
					 $syslogger = new Syslogger();
					 $syslogger->username      =  '';
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    ='creditos_movil';
					 $syslogger->action        = 'add';
					 $syslogger->error_sistema = "tipo de documento no existe en la bd - Consecutivos del Sistema o no se la ha Asignado un Consecutivo valido '".'recibos_caja_movil'."/".'add'."'  Fecha: ".date("Y-m-d H:i:s");
					 $syslogger->descripcion   = "No existe un consecutivo valido";
					 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
					 $syslogger->fecha         = date("Y-m-d H:i:s");
					 $syslogger->save();
					return false;
				}else{
					$this->prefijo = $cons->prefijo;
					$this->id_consecutivo = $cons->id;
					
				}//fin si o no existe docuemnto
			} //fin si comprobacion action = agregar
		 }
		
		
		public function addAction(){
					
					$this->setResponse("view");
					$cli  = new Clientes();
					$msg="";
					$sw = 0;
					
					
					$respuesta[0]=array("mensaje"=>"true","descripcion"=>"por defecto");	
					$encabezado=$_REQUEST["creditos"];
					/* Validaciones */
					
					/* 1.- Validacion json */
					if(!json_decode($encabezado)){
							 $syslogger = new Syslogger();
							 $syslogger->username      = "";
							 $syslogger->module        = Router::getModule();
							 $syslogger->application   = Router::getApplication();
							 $syslogger->controller    = $this->getControllerName();
							 $syslogger->action        = $this->getActionName();
							 $syslogger->error_sistema = "Json Incorrepto";
							 $syslogger->descripcion   = "Json Incorrepto";
							 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
							 $syslogger->fecha         = date("Y-m-d H:i:s");
							 $syslogger->objeto        = $encabezado;
							 $syslogger->save();
						     $sw=1;
							 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Json Incorrecto");
					}
					
					
					/* Fin Validaciones */
					
										
					if( $sw==0 ){
						
						$creditos_json = json_decode($encabezado);
						
						$emp = new Empresa();
						$emp = $emp->findFirst(" activo = 0 ");
						$rangos = new Rangos();
						/*Creando Creditos..*/
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
											
											 $syslogger = new Syslogger();
											 $syslogger->username          = '';
											 $syslogger->module            = Router::getModule();
											 $syslogger->application       = Router::getApplication();
											 $syslogger->controller        = 'creditos_movil';
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
									 $creditos = new Creditos();
									 $creditos->setTransaction($transaction);
									//para traer el mismo modelo ya instanciado
									 $creditos->id                  = "";
									 $creditos->empresa_id          = $emp->id;
									 $creditos->clientes_id         = $creditos_json->clientes_id;
									 $creditos->cobradores_id       = $creditos_json->cobradores_id;
									 $creditos->tipo_documento_id   = $cons->tipo_documento_id;
									 $creditos->prefijo             = $cons->prefijo;
									 $creditos->consecutivo         = $cons->desde;   
									 $creditos->fecha_act           = date("Y-m-d H:i:s");
									 $creditos->fecha               = date("Y-m-d");
									 $creditos->fecha_cuota         = date("Y-m-d");
									 $creditos->capital             = $creditos_json->valor;
									 $creditos->anulado             = '0';
									 $creditos->observaciones       = "creados desde dispositivo movil";
									 
									 $porcentaje = ($emp->porcentaje/100)+1;
									 $total_credito = ($porcentaje*$creditos_json->valor) + $creditos_json->valor;
									
											 if($rangos->count(" $total_credito>=desde and $total_credito<=hasta ")==0){
										 
												 $syslogger = new Syslogger();
												 $syslogger->username          = '';
												 $syslogger->module            = Router::getModule();
												 $syslogger->application       = Router::getApplication();
												 $syslogger->controller        = 'creditos_movil';
												 $syslogger->action            = 'add';
												 $syslogger->error_sistema     = "Rando No existe para esta cantidad";
												 $syslogger->descripcion       = "Rando No existe para esta cantidad ". $total_credito ;
												 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
												 $syslogger->fecha             = date("Y-m-d H:i:s");
												 $syslogger->tipo_documento_id = $tipo_documento_id;
												 $syslogger->prefijo           = $prefijo;
												 $syslogger->consecutivo       = $consecutivo;
												 $syslogger->objeto            = json_encode($creditos);
												 $syslogger->save();	
												 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Rando No existe para esta cantidad ". $total_credito);
												 $transaction->rollback();
											
										 	}else{
												
											 	$rangos = $rangos->findFirst(" $total_credito>=desde and $total_credito<=hasta ");
												
											 }
											 
									 $creditos->cuotas              = $rangos->dias;
									 $creditos->valor_cuotas        = ($total_credito/$rangos->dias);
									 $creditos->total_credito       = $total_credito;
									 $creditos->porcentaje          = $emp->porcentaje;
									 //Flash::error($cons->desde);
											 if($creditos->save()==false){
										
												   $msg_error="";
													foreach($creditos->getMessages() as $message){ 
														$msg_error.=$message; 
													}
													 
													 $syslogger = new Syslogger();
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "Credito no Insertado ".$msg_error;
													 $syslogger->descripcion       = "Registro No Insertado desde Movil";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $creditos->tipo_documento_id;
													 $syslogger->prefijo           = $creditos->prefijo;
													 $syslogger->consecutivo       = $creditos->consecutivo;
													 $syslogger->objeto            = json_encode($creditos);
													 $syslogger->save();
													 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Error Generando Creditos ". $msg_error);		 
													
													$transaction->rollback();
							
										}else{
												      $syslogger = new Syslogger();
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "Credito Insertado ";
													 $syslogger->descripcion       = "Registro Insertado desde Movil";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $creditos->tipo_documento_id;
													 $syslogger->prefijo           = $creditos->prefijo;
													 $syslogger->consecutivo       = $creditos->consecutivo;
													 $syslogger->objeto            = json_encode($creditos);
													 $syslogger->save();
										}
									
										$total_credito_detalles = 0;
			
										
										for( $i=1; $i<=$creditos->cuotas; $i++  ){
									
											$multiplo = $i;
											$fecha = new Date($creditos->fecha_cuota);
											$db = DbBase::rawConnect();
											$result = $db->query("select DATE_ADD('$fecha',INTERVAL $multiplo DAY) as name");
											
											while($row = $db->fetchArray($result)){
												 $fecha =  $row['name'];
											}
											
											$detalles = new DetalleCreditos();
											$detalles->setTransaction($transaction);
											
											$detalles->id                     = '0';
											$detalles->codigo                 = $multiplo;
											$detalles->creditos_id            = $creditos->id;
											$detalles->valor                  = $creditos->valor_cuotas;
											$detalles->vencimiento            = $fecha; 
											$detalles->multiplicar            = 1;
											$detalles->financiacion           = 0;
											$detalles->capital                = 0;
											$detalles->iva                    = 0;
											$detalles->anulado                = 0;
											$total_credito_detalles += $creditos->valor_cuotas; 
											
												if($detalles->save()==false){
													$msg_error="";
													
													foreach($detalles->getMessages() as $message){ 
														$msg_error.=$message; 
														
													}
													 $syslogger = new Syslogger();
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "Detalle Credito no Insertado ".$msg_error;
													 $syslogger->descripcion       = "Registro No Insertado desde Movil";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $creditos->tipo_documento_id;
													 $syslogger->prefijo           = $creditos->prefijo;
													 $syslogger->consecutivo       = $creditos->consecutivo;
													 $syslogger->objeto            = json_encode($detalles);
													 $syslogger->save();
													 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Error Guardando Detalle Creditos ". $msg_error);		 
													$transaction->rollback();
													
												}else{
													 $syslogger = new Syslogger();
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "Detalle Credito Insertado ";
													 $syslogger->descripcion       = "Registro Insertado desde Movil";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $creditos->tipo_documento_id;
													 $syslogger->prefijo           = $creditos->prefijo;
													 $syslogger->consecutivo       = $creditos->consecutivo;
													 $syslogger->objeto            = json_encode($detalles);
													 $syslogger->save();
												}	
										}
											
									
								
		
							if( $total_credito_detalles <> $total_credito ){ 
								
								$dif = $total_credito - $_REQUEST["total_credito"];
													  $syslogger = new Syslogger();
													 $syslogger->username          = '';
													 $syslogger->module            = Router::getModule();
													 $syslogger->application       = Router::getApplication();
													 $syslogger->controller        = $this->getControllerName();
													 $syslogger->action            = $this->getActionName();
													 $syslogger->error_sistema     = "Error  OJO LAS CUOTAS NO SUMAN EL TOTAL DEL CREDITOS DIFERENCIA: $dif ";
													 $syslogger->descripcion       = "OJO LAS CUOTAS NO SUMAN EL TOTAL DEL CREDITOS DIFERENCIA: $dif ";
													 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
													 $syslogger->fecha             = date("Y-m-d H:i:s");
													 $syslogger->tipo_documento_id = $creditos->tipo_documento_id;
													 $syslogger->prefijo           = $creditos->prefijo;
													 $syslogger->consecutivo       = $creditos->consecutivo;
													 $syslogger->objeto            = json_encode($creditos);
													 $syslogger->save();
								$respuesta[0]=array("mensaje"=>"false","descripcion"=>"Error  OJO LAS CUOTAS NO SUMAN EL TOTAL DEL CREDITOS DIFERENCIA: $dif ");		 
								$transaction->rollback(); 
								
							 }						
		
							$transaction->commit();
			
						
							}catch(TransactionFailed $e){		
								 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Transaccion fallida. ".$msg);	
								 $error.=$msg." ".$e->getMessage();
							}catch(DbContraintViolationException $e){		
								 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Cedula Ya existe (Se esta violando llave unica o llave Primaria) ".$msg);
								 $error.=$msg." ".$e->getMessage();	
								// fin try catch
							}catch(DbSQLGrammarException $e){		
								 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Error en sql. ".$msg);	
								 $error.=$msg." ".$e->getMessage();
								// fin try catch
							}catch(DbInvalidFormatException $e){		
								 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Formato Invalido para Columna de la db ".$msg);	
								 $error.=$msg." ".$e->getMessage();
								// fin try catch*/
							}catch(DbException $e){		
								 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Exepcion en la base de datos. ".$msg);	
								 $error.=$msg." ".$e->getMessage();
								// fin try catch
							}

					} // cierra si sw = 0
				
				
						/* Creando creditos */
				$this->setParamToView("responce",$respuesta);
										   
		}
		
		public function extraer_clientesAction(){
			
			$this->setResponse("view");
		
		}
				
		
}