<?php

	class Login_movilController extends ApplicationController {
	
			
		public function initialize() {
		 
		}
		
		public function indexAction(){
		
		}
		
		
		public function validarAction(){
			
			$this->setResponse('view');
			
				$respuesta[0]=array("mensaje"=>"true","descripcion"=>"por defecto");	
				$admin=$_REQUEST["login"];

				$Usuario = new Admin();
				$cobrador = new Cobradores();
				$usuario = $Usuario->findFirst("username = '".$admin->usuario."' and password = md5('".$admin->clave."') ");
				
				
				if($usuario){
					 $cobrador = $cobrador->findFirst(" id = '"+$admin->cobradores_id+"' ");
					 $respuesta[0]=array("mensaje"=>"true","descripcion"=>"Usuario Registrado");	
					 $respuesta[1]=array(
					 						"nombre"=>$admin->nombre_completo,
											"clave"=>$admin->password,
											"cobradores_id"=>$admin->cobradores_id,
											"cedula_cobrador"=>$cobrador->nit
										);	
					 //nombre,clave,cobradores_id,cedula_cobrador
					 $syslogger = new Syslogger();
					 $syslogger->username      = '';
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    = $this->getControllerName();
					 $syslogger->action        = $this->getActionName();
					 $syslogger->error_sistema = "Usuario Registrado = '".$admin->usuario."' url =  '". $this->getControllerName()."/".$this->getActionName()."'  Fecha: ".date("Y-m-d H:i:s");
					 $syslogger->descripcion   = "Usuario Registrado";
					 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
					 $syslogger->fecha         = date("Y-m-d H:i:s");
					 $syslogger->save();
						
				} else {
					 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Usuario Clave incorrectos");	
					 $syslogger = new Syslogger();
					 $syslogger->username      = '';
					 $syslogger->module        = Router::getModule();
					 $syslogger->application   = Router::getApplication();
					 $syslogger->controller    = $this->getControllerName();
					 $syslogger->action        = $this->getActionName();
					 $syslogger->error_sistema = "Usuario Clave incorrectos "."usuario = '".$admin->usuario."'	and password = '".$admin->clave."'  url= ". $this->getControllerName()."/".$this->getActionName()."'  Fecha: ".date("Y-m-d H:i:s");
					 $syslogger->descripcion   = "Usuario Clave incorrectos";
					 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
					 $syslogger->fecha         = date("Y-m-d H:i:s");
					 $syslogger->save();

				}
			
			$this->setParamToView("responce",$respuesta);
		
		}
		
	
		
}

?>