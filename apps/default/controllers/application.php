<?php
class ControllerBase {
  	
	public function onStartApplication(){
		
	}
  
	public function init(){
		Router::routeTo("controller: login","action: login");
		
	}
	
	public function beforeFilter(){
	 	
		if(Router::getController()!='login' && Router::getController()!='clientes_movil'){
							//Flash::error( " md5(username) = '".Session::get(md5("admin_username"))."' and md5(id) = '".Session::get(md5("usuarios_id"))."' " );
							
						 if( $this->Admin->count( " md5(username) = '".Session::get(md5("admin_username"))."' and md5(id) = '".Session::get(md5("usuarios_id"))."' "  ) == 0 ){
							//$authLog = new Logger("File", "auth_failed.txt");
							//$authLog->log("El usuario debe estar autenticado para usar este modulo recurso: '". $this->getControllerName()."/".$this->getActionName()." Usuarios del Sistema ".Session::get(md5("admin_username"))."' Fecha ".date("Y-m-d H:i:s"));
							 $syslogger = new Syslogger();
							 $syslogger->username      =  Session::get(md5("admin_username"));
							 $syslogger->module        = Router::getModule();
							 $syslogger->application   = Router::getApplication();
							 $syslogger->controller    = $this->getControllerName();
							 $syslogger->action        = $this->getActionName();
							 $syslogger->error_sistema = "El usuario debe estar autenticado para usar este modulo recurso: '". $this->getControllerName()."/".$this->getActionName()." Usuarios del Sistema ".Session::get(md5("admin_username"))."' Fecha ".date("Y-m-d H:i:s");
							 $syslogger->descripcion   = "Error de Acceso";
							 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
							 $syslogger->fecha         = date("Y-m-d H:i:s");
							 if(!$syslogger->save()){
								foreach($syslogger->getMessages() as $message){ 
										Flash::error("Tabla de errores del sistema: ".$message); 
									}
							 }else{
									 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
								 }
							 
							
							 Flash::error("El usuario debe estar autenticado para usar este modulo");
							 echo "<h4><a href=".core::getInstancePath()."login/login>Haga Click aqui para inicial session</a></h4>";
							 Router::routeTo("controller: login", "action: login");
							 return false;
						 }//fin autenticado
							
		
			 
						 /*CODIGO DE PERIMISOS DE USUARIO*/
						  $role = Session::get(md5('role'));
						 
						  if($role==""){  $role = 'public';   }
							 
							  $acl = new Acl('Model', 'className: AccessList');
							  $resourceName = $this->getControllerName();
							  $operationName = $this->getActionName();
								
						  
						  if($acl->isAllowed($role, $resourceName, $operationName)==false ){
			
							   //$authLog = new Logger("File", "auth_failed.txt");
							   //$authLog->log("Autenticación fallo para el rol '$role' en el recurso '". $this->getControllerName()."/".$this->getActionName()."'  Fecha: ".date("Y-m-d H:i:s"));
							     $syslogger = new Syslogger();
							 	 $syslogger->username      =  Session::get(md5("admin_username"));
								 $syslogger->module        = Router::getModule();
								 $syslogger->application   = Router::getApplication();
								 $syslogger->controller    = $this->getControllerName();
								 $syslogger->action        = $this->getActionName();
								 $syslogger->error_sistema = "Autenticación fallo para el rol '$role' en el recurso '". $this->getControllerName()."/".$this->getActionName()."'  Fecha: ".date("Y-m-d H:i:s");
								 $syslogger->descripcion   = "Error de Rol";
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
									   
									   Router::routeTo("controller: login", "action: login");
									   return false;
								  }
							 /*}*/
						/*FIN*/ /*CODIGO DE PERIMISOS DE USUARIO*/
			
			} // fin si esta logueado y es diferente a administrador
			
			
		}
		
		/*
		* Excepcion de pagina no encontrada
		*/
		
		public function onException($e){
			
			if($e instanceof DispatcherException){
				   
					if($e->getCode()==Dispatcher::NOT_FOUND_ACTION){
		 			   //$authLog = new Logger("File", "notFoundReports.txt");
		               //$authLog->log(" Error Lo sentimos la pagina no existe: '". $this->getControllerName()."/".$this->getActionName()."' Ip: ".$_SERVER["REMOTE_ADDR"]." Fecha ".date("Y-m-d H:i:s").$e->getCode() );
						 $syslogger = new Syslogger();
						 $syslogger->username      =  Session::get(md5("admin_username"));
						 $syslogger->module        = Router::getModule();
						 $syslogger->application   = Router::getApplication();
						 $syslogger->controller    = $this->getControllerName();
						 $syslogger->action        = $this->getActionName();
						 $syslogger->error_sistema = "Error Lo sentimos la pagina no existe: '". $this->getControllerName()."/".$this->getActionName()."' Ip: ".$_SERVER["REMOTE_ADDR"]." Fecha ".date("Y-m-d H:i:s").$e->getCode() ;
						 $syslogger->descripcion   = "Error de Dispacher";
						 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
						 $syslogger->fecha         = date("Y-m-d H:i:s");
						 if(!$syslogger->save()){
							foreach($syslogger->getMessages() as $message){ 
									Flash::error("Tabla de errores del sistema: ".$message); 
								}
						 }else{
								 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
							 }
					    
					     Flash::error("Error Lo sentimos la pagina no existe ".$this->getControllerName()."/".$this->getActionName());
					     Router::routeTo("controller: home", "action: error");
					   return false;
					 
					}
					if($e->getCode()==Dispatcher::NOT_FOUND_CONTROLLER){
		 			  // $authLog = new Logger("File", "notFoundReports.txt");
		              // $authLog->log(" Error Lo sentimos la pagina no existe: '". $this->getControllerName()."/".$this->getActionName()."' Ip: ".$_SERVER["REMOTE_ADDR"]." Fecha ".date("Y-m-d H:i:s").$e->getCode() );
					  	 $syslogger = new Syslogger();
						 $syslogger->username      =  Session::get(md5("admin_username"));
						 $syslogger->module        = Router::getModule();
						 $syslogger->application   = Router::getApplication();
						 $syslogger->controller    = $this->getControllerName();
						 $syslogger->action        = $this->getActionName();
						 $syslogger->error_sistema = "Error Lo sentimos la Controlador no existe: '". $this->getControllerName()."/".$this->getActionName()."' Ip: ".$_SERVER["REMOTE_ADDR"]." Fecha ".date("Y-m-d H:i:s").$e->getCode() ;
						 $syslogger->descripcion   = "Error de Dispacher";
						 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
						 $syslogger->fecha         = date("Y-m-d H:i:s");
						 if(!$syslogger->save()){
							foreach($syslogger->getMessages() as $message){ 
									Flash::error("Tabla de errores del sistema: ".$message); 
								}
						 }else{
								 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
							 }
					     Flash::addMessage("Error Lo sentimos la pagina no existe  ",Flash::ERROR);
					     Flash::error("Error Lo sentimos la pagina no existe");
					     Router::routeTo("controller: home", "action: error");
					   return false;
					 
					}
					
					if($e->getCode()==Dispatcher::NOT_FOUND_FILE_CONTROLLER){
		 			  // $authLog = new Logger("File", "notFoundReports.txt");
		              // $authLog->log(" Error Lo sentimos la pagina no existe: '". $this->getControllerName()."/".$this->getActionName()."' Ip: ".$_SERVER["REMOTE_ADDR"]." Fecha ".date("Y-m-d H:i:s").$e->getCode() );
					     $syslogger = new Syslogger();
						 $syslogger->username      =  Session::get(md5("admin_username"));
						 $syslogger->module        = Router::getModule();
						 $syslogger->application   = Router::getApplication();
						 $syslogger->controller    = $this->getControllerName();
						 $syslogger->action        = $this->getActionName();
						 $syslogger->error_sistema = "Error Archivo controller no existe: '". $this->getControllerName()."/".$this->getActionName()."' Ip: ".$_SERVER["REMOTE_ADDR"]." Fecha ".date("Y-m-d H:i:s").$e->getCode() ;
						 $syslogger->descripcion   = "Error de Dispacher";
						 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
						 $syslogger->fecha         = date("Y-m-d H:i:s");
						 if(!$syslogger->save()){
							foreach($syslogger->getMessages() as $message){ 
									Flash::error("Tabla de errores del sistema: ".$message); 
								}
						 }else{
								 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
							 }
					     Flash::addMessage("Error Lo sentimos la pagina no existe  ",Flash::ERROR);
					     Flash::error("Error Lo sentimos la pagina no existe");
					     Router::routeTo("controller: home", "action: error");
					   return false;
					 
					}
					
					
					if($e->getCode()==Dispatcher::NOT_FOUND_INIT_ACTION){
		 			  // $authLog = new Logger("File", "notFoundReports.txt");
		              // $authLog->log(" Metodo init no existe '". $this->getControllerName()."/".$this->getActionName()."' Ip: ".$_SERVER["REMOTE_ADDR"]." Fecha ".date("Y-m-d H:i:s").$e->getCode() );
					   	 $syslogger = new Syslogger();
						 $syslogger->username      =  Session::get(md5("admin_username"));
						 $syslogger->module        = Router::getModule();
						 $syslogger->application   = Router::getApplication();
						 $syslogger->controller    = $this->getControllerName();
						 $syslogger->action        = $this->getActionName();
						 $syslogger->error_sistema = "Metodo init no existe '". $this->getControllerName()."/".$this->getActionName()."' Ip: ".$_SERVER["REMOTE_ADDR"]." Fecha ".date("Y-m-d H:i:s").$e->getCode();
						 $syslogger->descripcion   = "Error de Dispacher";
						 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
						 $syslogger->fecha         = date("Y-m-d H:i:s");
						 if(!$syslogger->save()){
							foreach($syslogger->getMessages() as $message){ 
									Flash::error("Tabla de errores del sistema: ".$message); 
								}
						 }else{
								 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
							 }
					     Flash::addMessage("Error Lo sentimos la pagina no existe  ",Flash::ERROR);
					     Flash::error("Error Lo sentimos la pagina no existe");
					     Router::routeTo("controller: home", "action: error");
					   return false;
					 
					}
					
					if($e->getCode()==Dispatcher::INVALID_ACTION_VALUE_PARAMETER){
		 			   //$authLog = new Logger("File", "notFoundReports.txt");
		               //$authLog->log(" Metodo parametro no existe '". $this->getControllerName()."/".$this->getActionName()."' Ip: ".$_SERVER["REMOTE_ADDR"]." Fecha ".date("Y-m-d H:i:s").$e->getCode() );
					     $syslogger = new Syslogger();
						 $syslogger->username      =  Session::get(md5("admin_username"));
						 $syslogger->module        = Router::getModule();
						 $syslogger->application   = Router::getApplication();
						 $syslogger->controller    = $this->getControllerName();
						 $syslogger->action        = $this->getActionName();
						 $syslogger->error_sistema = "Metodo parametro de accion requerido ". $this->getControllerName()."/".$this->getActionName()."' Ip: ".$_SERVER["REMOTE_ADDR"]." Fecha ".date("Y-m-d H:i:s").$e->getCode() ;
						 $syslogger->descripcion   = "Error de Dispacher";
						 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
						 $syslogger->fecha         = date("Y-m-d H:i:s");
						 if(!$syslogger->save()){
							foreach($syslogger->getMessages() as $message){ 
									Flash::error("Tabla de errores del sistema: ".$message); 
								}
						 }else{
								 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
							 }
					     Flash::addMessage("Error Lo sentimos la pagina no existe  ",Flash::ERROR);
					     Flash::error("Error Lo sentimos la pagina no existe");
					     Router::routeTo("controller: home", "action: error");
					   return false;
					 
					}
				
				
				
				
				} else {
					//Se relanza la excepción
					throw $e;
					//print_r($e);
				}
			
		}

}
