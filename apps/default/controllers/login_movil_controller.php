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
				
				//$encabezado=$_REQUEST["creditos"];
					/* Validaciones */
					
				/* 1.- Validacion json */
				if(!json_decode($admin)){
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
						 $syslogger->objeto        = $admin;
						 $syslogger->save();
						 $sw=1;
						 $respuesta[0]=array("mensaje"=>"false","descripcion"=>"Json Incorrecto");
				}
				
				
				/* Fin Validaciones */

				$Usuario = new Admin();
				$cobrador = new Cobradores();
				
				$admin = json_decode($admin);
				
				$usuario = $Usuario->findFirst("username = '".$admin->usuario."' and password = md5('".$admin->clave."') ");
				
				
				if($usuario){
					 $cobrador = $cobrador->findFirst(" id = '"+$usuario->cobradores_id+"' ");
					 $respuesta[0]=array("mensaje"=>"true","descripcion"=>"Usuario Registrado");	
					 /*$respuesta[1]=array(
					 						"nombre"=>$usuario->nombre_completo,
											"clave"=>$usuario->password,
											"cobradores_id"=>$usuario->cobradores_id,
											"cedula_cobrador"=>$cobrador->nit
										);	*/
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
					 $syslogger->objeto        = date("Y-m-d H:i:s");
					 $syslogger->save();

				}
			
			$this->setParamToView("responce",$respuesta);
		
		}
		
	
		
}

?>