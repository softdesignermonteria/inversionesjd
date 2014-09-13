<?php

	class Creditos_tempController extends ApplicationController {
	
		public $prefijo;
		public $tipo_documento;
		public $tipo_documento_nombre;
		public $id_consecutivo;
		
		
		public function initialize() {
		
			$this->setTemplateAfter("adminiziolite");
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
					 $syslogger->error_sistema = "tipo de documento no existe en la bd. se recomienda crear este tipo de documento en el apartado de configuraciones 'creditos_temp/add'  Fecha: ".date("Y-m-d H:i:s");
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
					 $syslogger->error_sistema = "tipo de documento no existe en la bd - Consecutivos del Sistema o no se la ha Asignado un Consecutivo valido '".'creditos_temp'."/".'add'."'  Fecha: ".date("Y-m-d H:i:s");
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
		 
		 
		 public function indexAction(){
		
		}
		
		public function agregarAction(){
		
		}
		
		
		public function addAction(){
					
					$this->setResponse("view");
					$cli  = new Clientes();
					$msg="";
					$sw = 0;
					$id = $_REQUEST["id"];
					$nit = $_REQUEST["cedula"];
					$cobradores_id = $_REQUEST["cobradores_id"]; 
					$capital = $_REQUEST["capital"]; 
					$intereses = $_REQUEST["interes"]; 
					$cuotas = $_REQUEST["cuotas"]; 
					$valor_cuotas = $_REQUEST["valor_cuotas"]; 
						
						/* 1.- Fin Validaciones */
						
						if($this->Clientes->count( " nit = '$nit' " )==0){
								$sw=1; Flash::error("cliente No esta creado en la tabla de clientes");
						}else{
								$cli = $this->Clientes->findFirst( " nit = '$nit' " );
							}
							
						if($this->Cobradores->count( " id = '$cobradores_id' " )==0){
								$sw=1; Flash::error("Cobrador No esta creado en la tabla de cobradores");
						}
							
					
						/* 2.- Validacion creditos  */
						if( $this->ViewCartera->count(" (valor_cuota - valor_pagado - valor_nota_credito) <> 0 and clientes_id = '$creditos_json->clientes_id' ")>0 ){
								$sw=1; Flash::error("cliente Tiene un credito activo");
							}
						/* 2.- Validacion  creditos */
						
						/* 3.- Validacion creditos  */
						if( $this->RecibosCaja->count(" fecha = '".date("Y-m-d")."' and clientes_id = '$creditos_json->clientes_id' and anulado = 0 ")>0 ){
								$sw=1; Flash::error("No se puede Realizar Credito ya que acaba de terminar de pagar hoy.. espere el dia de mañana para acreditar de nuevo ");
							}
						/* 3.- Validacion  creditos */
					
										
					if( $sw==0 ){
						
						//$creditos_json = json_decode($encabezado);
						
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
									 $creditos->clientes_id         = $cli->id;
									 $creditos->cobradores_id       = $cobradores_id;
									 $creditos->tipo_documento_id   = $cons->tipo_documento_id;
									 $creditos->prefijo             = $cons->prefijo;
									 $creditos->consecutivo         = $cons->desde;   
									 $creditos->fecha_act           = date("Y-m-d H:i:s");
									 $creditos->fecha               = date("Y-m-d");
									 $creditos->fecha_cuota         = date("Y-m-d");
									 $creditos->capital             = round($capital);
									 $creditos->anulado             = '0';
									 $creditos->observaciones       = "creados desde dispositivo movil";
										
									 Flash::notice("capital = ". $creditos->capital);	 
									 
									 $porcentaje = ($intereses/100)+1;
									 $total_credito =  round(($porcentaje*$capital));
									 Flash::notice("porcentaje = ". $porcentaje);	 
									 Flash::notice("total_credito = ". $total_credito);	 
									 
									  Flash::notice("cuotas = ". $cuotas);	 
											
									 $creditos->cuotas              = $cuotas;
									 $creditos->valor_cuotas        = round(($valor_cuotas),2);
									 $creditos->total_credito       = $total_credito;
									 $creditos->porcentaje          = $intereses;
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
													 Flash::error("Error Generando Creditos ". $msg_error);		 
													
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
			
										$multiplo=0;
										$i=1;
										while($i<=$cuotas){
										    Flash::notice("i = ". $i);	 
											$multiplo=$i;
											Flash::notice("multiplo = ". $multiplo);	 
											$fecha = new Date($creditos->fecha_cuota);
											$db = DbBase::rawConnect();
											$result = $db->query("select DATE_ADD('$fecha',INTERVAL $multiplo DAY) as name, date_format(DATE_ADD('$fecha',INTERVAL $multiplo DAY), '%w') as dia_semana  ");
											
											while($row = $db->fetchArray($result)){
												 $fecha =  $row['name'];
											     $dia_semana =  $row['dia_semana'];
												 Flash::notice(" 1 select DATE_ADD('$fecha',INTERVAL $multiplo DAY) as name, date_format(DATE_ADD('$fecha',INTERVAL $multiplo DAY), '%w') as dia_semana  ");	 
											}
											
											if( $dia_semana !== 2){
												$i++;
												/*$result2 = $db->query("select DATE_ADD('$fecha',INTERVAL $multiplo DAY) as name, date_format(DATE_ADD('$fecha',INTERVAL $multiplo DAY), '%w') as dia_semana  ");
												Flash::notice("2 select DATE_ADD('$fecha',INTERVAL $multiplo DAY) as name, date_format(DATE_ADD('$fecha',INTERVAL $multiplo DAY), '%w') as dia_semana  ");	 
												while($row2 = $db->fetchArray($result2)){
													 $fecha =  $row2['name'];
													 $dia_semana =  $row2['dia_semana'];
												}*/
											
											 Flash::notice("fecha = ". $fecha);	 
											 Flash::notice("dia_semana = ". $dia_semana);	 
											  
											$detalles = new DetalleCreditos();
											$detalles->setTransaction($transaction);
											
											$detalles->id                     = '0';
											$detalles->codigo                 = $multiplo;
											$detalles->creditos_id            = $creditos->id;
											$detalles->valor                  = $valor_cuotas;
											$detalles->vencimiento            = $fecha; 
											$detalles->multiplicar            = 1;
											$detalles->financiacion           = 0;
											$detalles->capital                = 0;
											$detalles->iva                    = 0;
											$detalles->anulado                = 0;
											$total_credito_detalles += $valor_cuotas; 
											
											Flash::notice("valor_cuotas = ". $valor_cuotas);
											Flash::notice("total_credito_detalles = ". $total_credito_detalles);
											
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
													 Flash::error("Error Guardando Detalle Creditos ". $msg_error);		 
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
											
									
							}	
		
							if( round($total_credito_detalles) <> $total_credito ){ 
								
								$dif = round($total_credito_detalles) - $total_credito;
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
								Flash::error("Error  OJO LAS CUOTAS NO SUMAN EL TOTAL DEL CREDITOS DIFERENCIA: $dif ");		 
								$transaction->rollback(); 
								
							 }
							 
							$clientes = new ClientesTemp();
							$clientes->setTransaction($transaction);
							$clientes = $this->ClientesTemp->findFirst( " id = '$id' ");
							$clientes->estado_credito = 1;
							if(!$clientes->save()){
								$transaction->rollback(); 	
								Flash::error("Error actualizando clientes temp ");
							}					
		
							$transaction->commit();
							Flash::success("Credito Realizado");
						
							}catch(TransactionFailed $e){		
								 Flash::error("Transaccion fallida. ".$e->getMessage());	

							}catch(DbContraintViolationException $e){		
								 Flash::error("Cedula Ya existe (Se esta violando llave unica o llave Primaria) ".$msg);
								 $error.=$msg." ".$e->getMessage();	
								// fin try catch
							}catch(DbSQLGrammarException $e){		
								 Flash::error("Error en sql. ".$e->getMessage());	
								 $error.=$msg." ".$e->getMessage();
								// fin try catch
							}catch(DbInvalidFormatException $e){		
								 Flash::error("Formato Invalido para Columna de la db ".$e->getMessage());
								// fin try catch*/
							}catch(DbException $e){		
								 Flash::error("Exepcion en la base de datos. ".$e->getMessage());
								// fin try catch
							}

					} // cierra si sw = 0
				
				
										   
		}
		
		
   }
?>