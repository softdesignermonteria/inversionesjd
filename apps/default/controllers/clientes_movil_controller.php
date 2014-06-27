<?php

	class Clientes_movilController extends ApplicationController {
	
			
		public function initialize() {
			$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
		}
		
		public function addAction(){
					
					$this->setResponse("view");
					
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
						$transaction = new ActiveRecordTransaction(true);   
							try{
								$transaction = TransactionManager::getUserTransaction(); 
										$clientes = json_decode($encabezado);

										$cli  = new Clientes();
										$cli->setTransaction($transaction);
										$cli->id             = '';
										$cli->nit            = $clientes->cedula;
										$cli->nombre1        = trim($clientes->nombre1);
										$cli->nombre2        = trim($clientes->nombre2);
										$cli->apellido1      = trim($clientes->apellido1);
										$cli->apellido2      = trim($clientes->apellido2);
										$cli->razon_social   = trim($cli->nombre1 + " " + $cli->nombre2 + " " + $cli->apellido1 + " " + $cli->apellido2);
										$cli->direccion      = $clientes->direccion;
										$cli->celular        = $clientes->telefono;
										$cli->departamentos_id     = 23;
										$cli->municipios_id        = 108;
										$cli->celular        = $clientes->telefono;
										$cli->referencia_id  = 1;
									
										if( $cli->save() == false){
													
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
													 
													 $transaction->rollback();
																	
											}else{
													
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
									
											 }// fin error guardando clientes
										
										$transaction->commit();
							}catch(TransactionFailed $e){		
								 
								 $respuesta[0]=array("mensaje"=>"false","descripcion"=>$msg." ".$e->getMessage());	
								 
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
							
							}	// fin try catch
							
						} //fin sw=0
										
				 $this->setParamToView("responce",$respuesta);
										   
		}
		
		public function extraer_clientesAction(){
			
			$this->setResponse("view");
		
		}
				
		
}