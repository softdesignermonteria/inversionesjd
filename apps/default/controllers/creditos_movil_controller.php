<?php

	class Creditos_movilController extends ApplicationController {
	
			
		public function initialize() {
			$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
		}
		
		
		public function beforeFilter(){
			
			if( Router::getAction()=='add' ){	
			
				$td = new TipoDocumento();
				$tipo_document = $td->findFirst("nombre = 'creditos' and empresa_id = '3' ");
							 
				if(!$tipo_document){
					 $syslogger = new Syslogger();
					 $syslogger->username      = '';
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    = "clientes_movil";
					 $syslogger->action        = "add";
					 $syslogger->error_sistema = "tipo de documento no existe en la bd. se recomienda crear este tipo de documento en el apartado de configuraciones 'recibos_caja_movil/add'  Fecha: ".date("Y-m-d H:i:s");
					 $syslogger->descripcion   = "Tipo Documento No Existe";
					 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
					 $syslogger->fecha         = date("Y-m-d H:i:s");
					 $syslogger->save();
					return false;
				}else{
					$this->tipo_documento = $tipo_document->id;
				}//fin si o no existe docuemnto
				
				$det= new DetalleConsecutivos();
				
				$cons = $det->findFirst("tipo_documento_id = '$this->tipo_documento' and empresa_id = '3' and activo = '0' ");
				
				if(!$cons){
					 $syslogger = new Syslogger();
					 $syslogger->username      =  '';
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    ='clientes_movil';
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
					
					$respuesta[0]=array("mensaje"=>"true","descripcion"=>"por defecto");	
					$encabezado=$_REQUEST["clientes"];
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
							// $syslogger->objeto        = json_encode($cli);
							 $syslogger->save();
						     $sw=1;
							 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Json Incorrecto");
					}
					
					$sw = 0;
					//Flash::error($sw1);
										
					if( $sw==0 ){
						
						$clientes = json_decode($encabezado);
						
						$cli->id             = '0';
						$cli->nit            = $clientes->cedula;
						$cli->nombre1        = trim($clientes->nombre1);
						$cli->nombre2        = trim($clientes->nombre2);
						$cli->apellido1      = trim($clientes->apellido1);
						$cli->apellido2      = trim($clientes->apellido2);
						$cli->razon_social   = trim($cli->nombre1 + " " + $cli->nombre2 + " " + $cli->apellido1 + " " + $cli->apellido2);
						$cli->direccion      = $clientes->direccion;
						//$cli->telefono       = $clientes->telefono;
						$cli->celular        = $clientes->telefono;
						$cli->referencia_id  = 1;
						//$cli->departamentos_id = $_REQUEST["departamentos_id");
						//$cli->municipios_id = $_REQUEST["municipios_id");				
							
					
						if( $cli->save() ){
								$msg="Se insertó correctamente el registro";
								$respuesta[0]=array("mensaje"=>"true","descripcion"=>$msg);	
								
									 $syslogger = new Syslogger();
									 $syslogger->username      = "";
									 $syslogger->module        = Router::getModule();
									 $syslogger->application   = Router::getApplication();
									 $syslogger->controller    = $this->getControllerName();
									 $syslogger->action        = $this->getActionName();
									 $syslogger->error_sistema = "Cliente Agregado desde Dispositivo Movil";
									 $syslogger->descripcion   = "Cliente Agregado desde Dispositivo Movil";
									 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha         = date("Y-m-d H:i:s");
									 $syslogger->objeto        = json_encode($cli);
									 $syslogger->save();
													
							}else{
								$msg="";
								$i=1;
								foreach($cli->getMessages() as $message){
										$msg.=" Error $i : " . $message->getMessage(); $i++;
								}
								$respuesta[0]=array("mensaje"=>"false","descripcion"=>$msg);	
								
									 $syslogger = new Syslogger();
									 $syslogger->username      = "";
									 $syslogger->module        = Router::getModule();
									 $syslogger->application   = Router::getApplication();
									 $syslogger->controller    = $this->getControllerName();
									 $syslogger->action        = $this->getActionName();
									 $syslogger->error_sistema = "Cliente No Fue Agregado desde Dispositivo Movil";
									 $syslogger->descripcion   = "$msg";
									 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha         = date("Y-m-d H:i:s");
									 $syslogger->objeto        = json_encode($cli);
									 $syslogger->save();
					
							 }
						}
						
						
						
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
									 $creditos = new Creditos();
									 $creditos->setTransaction($transaction);
									//para traer el mismo modelo ya instanciado
									 $creditos->id                  = "";
									 $creditos->empresa_id          = 3;
									 $creditos->clientes_id         = $cli->id;
									 $creditos->cobradores_id       = $_REQUEST["cobradores_id"];
									 $creditos->tipo_documento_id   = $cons->tipo_documento_id;
									 $creditos->prefijo             = $cons->prefijo;
									 $creditos->consecutivo         = $cons->desde;   
									 $creditos->fecha_act           = date("Y-m-d H:i:s");
									 $creditos->fecha               = date("Y-m-d");
									 $creditos->fecha_cuota         = date("Y-m-d");
									 $creditos->capital             = $clientes->valor;
									 $creditos->anulado             = '0';
									 $creditos->observaciones       = "creados desde dispositivo movil";
									 $creditos->cuotas              = $_REQUEST["numero_cuotas"];
									 $creditos->valor_cuotas        = $_REQUEST["valor_cuotas"];
									 $creditos->total_credito       = $_REQUEST["total_credito"];
									 $creditos->porcentaje          = $_REQUEST["porcentaje"];
									 //Flash::error($cons->desde);
									 if($creditos->save()==false){
											//abre for each
											foreach($creditos->getMessages() as $message){ 
												Flash::error("TABLA CREDITOS: ".$message); 
												$msg_error.=Flash::error("TABLA CREDITOS: ".$message); 
											}
											//cierra foreach
											$transaction->rollback();
										//cierra if
										}
									
									$total_credito = 0;
									
			
										$k=0;
										foreach( $detalles_item as $items):
										$k++;
										
											$detalles = new DetalleCreditos();
											$detalles->setTransaction($transaction);
											//$detalles->id                     = $items->id;
											if( trim(substr($items->id,0,4)) == trim('temp') ){
												$detalles->id                     = '0';
											}else{
												$detalles->id                     = $items->id;
											}
											$detalles->codigo                 = $items->codigo;
											$detalles->creditos_id            = $creditos->id;
											$detalles->valor                  = $items->valor;
											$detalles->vencimiento            = $items->vencimiento;
											$detalles->multiplicar            = 1;
											$detalles->financiacion           = 0;
											$detalles->capital                = 0;//( $creditos->capital /  $creditos->cuotas );
											$detalles->iva                    = 0;
											//$detalles->anulado                = '0';
											if($items->anulado == "SI") {  $detalles->anulado = '1';}
											if($items->anulado == "NO") {  $detalles->anulado = '0';  $total_credito += $detalles->valor; }
											
												if($detalles->save()==false){
													echo $deshabilitar;
													foreach($detalles->getMessages() as $message){ 
														$msg_error.=Flash::error(" TABLA DETALLE CREDITOS : ".$message); 
														Flash::error(" TABLA DETALLE CREDITOS: ".$message); 
													}
													$transaction->rollback();
													
												}	
															  
										endforeach; //cierra los detalles		
									
								} //cierra detalles json	
		
							if($total_credito <> $_REQUEST["total_credito"] ){ 
								$dif = $total_credito - $_REQUEST["total_credito"];
								Flash::error("OJO LAS CUOTAS NO SUMAN EL TOTAL DEL CREDITOS DIFERENCIA: $dif");	
								$transaction->rollback(); 
								
							 }						
		
							$transaction->commit();
			
							Flash::success("CREDITO GENERADO SATISFACTORIAMENTE");	
							
					
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
						
						/* Creando creditos */
					 $this->setParamToView("responce",$respuesta);
										   
		}
		
		public function extraer_clientesAction(){
			
			$this->setResponse("view");
		
		}
				
		
}