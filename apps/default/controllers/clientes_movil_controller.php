<?php

	class Clientes_movilController extends ApplicationController {
	
			
		public function initialize() {
			$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
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
						$cli->celular        = $clientes->telefono;
						$cli->referencia_id  = 1;
					
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
						
					 $this->setParamToView("responce",$respuesta);
										   
		}
		
		public function extraer_clientesAction(){
			
			$this->setResponse("view");
		
		}
				
		
}