<?php

	class RangosController extends ApplicationController {

		public function initialize() {
		   	$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
		}	
						
		public function indexAction(){

		}
		
		public function buscarAction(){

		}
		
		public function modificarAction($id){
				$rango = new Rangos();
				$rango = $this->Rangos->findFirst(" id = '$id' ");
				
				Tag::displayTo("id",$rango->id);
				Tag::displayTo("valor_desde",$rango->desde);
				Tag::displayTo("valor_hasta",$rango->hasta);
				Tag::displayTo("dia",$rango->dias);

		}
		
		public function eliminarAction($id){
				$rango = new Rangos();
				$rango = $this->Rangos->findFirst(" id = '$id' ");
				
				Tag::displayTo("id",$rango->id);
				Tag::displayTo("valor_desde",$rango->desde);
				Tag::displayTo("valor_hasta",$rango->hasta);
				Tag::displayTo("dia",$rango->dias);

		}
		
						
		public function agregarAction(){

		}
		
						
		public function addAction(){
			$this->setResponse("ajax");
			$sw=0;
			$rango = new Rangos();
			
			$rango->id            = $_REQUEST["id"];
			$rango->desde         = $_REQUEST["valor_desde"];
			$rango->hasta         = $_REQUEST["valor_hasta"];
			$rango->dias          = $_REQUEST["dia"];
			$rango->fecha_act     = date("Y-m-d H:i:s");
 			
			if($sw==0){					
				if($rango->save()){
					
							 $syslogger = new Syslogger();
							 $syslogger->username      =  Session::get(md5("admin_username"));
							 $syslogger->module        = Router::getModule();
							 $syslogger->application   = Router::getApplication();
							 $syslogger->controller    = $this->getControllerName();
							 $syslogger->action        = $this->getActionName();
							 $syslogger->error_sistema = "Rango Guardado";
							 $syslogger->descripcion   = "Rango Guardado Satisfactoriamente";
							 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
							 $syslogger->fecha         = date("Y-m-d H:i:s");
							 $syslogger->objeto        = json_encode($rango);
							 if(!$syslogger->save()){
								foreach($syslogger->getMessages() as $message){ 
										Flash::error("Tabla de errores del sistema: ".$message); 
									}
							 }else{
									 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
								 }
								 
					Flash::success(Router::getController()." Guardada Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
					Flash::error("Error: No se pudo Guardar el registro...");	
					$msg_error = "";
					foreach($rango->getMessages() as $message){
							  Flash::error($message->getMessage());$msg_error.=$message->getMessage();
					}	
					
							 $syslogger = new Syslogger();
							 $syslogger->username      =  Session::get(md5("admin_username"));
							 $syslogger->module        = Router::getModule();
							 $syslogger->application   = Router::getApplication();
							 $syslogger->controller    = $this->getControllerName();
							 $syslogger->action        = $this->getActionName();
							 $syslogger->error_sistema = "Rango Guardado";
							 $syslogger->descripcion   = $msg_error;
							 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
							 $syslogger->fecha         = date("Y-m-d H:i:s");
							 $syslogger->objeto        = json_encode($rango);
							 if(!$syslogger->save()){
								foreach($syslogger->getMessages() as $message){ 
										Flash::error("Tabla de errores del sistema: ".$message); 
									}
							 }else{
									 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
								 }  
				}
				
			}
			
		}
		
		public function updateAction(){
			$this->setResponse("ajax");
			$sw=0;
			$rango = new Rangos();
			
			$rango->id            = $_REQUEST["id"];
			$rango->desde         = $_REQUEST["valor_desde"];
			$rango->hasta         = $_REQUEST["valor_hasta"];
			$rango->dias          = $_REQUEST["dia"];
			$rango->fecha_act     = date("Y-m-d H:i:s");
			
			if($sw==0){					
				if($rango->save()){
					
							 $syslogger = new Syslogger();
							 $syslogger->username      =  Session::get(md5("admin_username"));
							 $syslogger->module        = Router::getModule();
							 $syslogger->application   = Router::getApplication();
							 $syslogger->controller    = $this->getControllerName();
							 $syslogger->action        = $this->getActionName();
							 $syslogger->error_sistema = "Rango Guardado";
							 $syslogger->descripcion   = "Rango Guardado Satisfactoriamente";
							 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
							 $syslogger->fecha         = date("Y-m-d H:i:s");
							 $syslogger->objeto        = json_encode($rango);
							 if(!$syslogger->save()){
								foreach($syslogger->getMessages() as $message){ 
										Flash::error("Tabla de errores del sistema: ".$message); 
									}
							 }else{
									 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
								 }	
					
					Flash::success(Router::getController()." Actualizado Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
					echo "<script>redireccionar_action('".Router::getController()."/modificar/$rango->id');</script>";
					
					 		 
								 
	
				}else{
						Flash::error("Error: No se pudo Modificar el registro...");	
						$msg_error = "";
						foreach($rango->getMessages() as $message){
								  Flash::error($message->getMessage());$msg_error.=$message->getMessage();
						}	
					
							 $syslogger = new Syslogger();
							 $syslogger->username      =  Session::get(md5("admin_username"));
							 $syslogger->module        = Router::getModule();
							 $syslogger->application   = Router::getApplication();
							 $syslogger->controller    = $this->getControllerName();
							 $syslogger->action        = $this->getActionName();
							 $syslogger->error_sistema = "Rango Guardado";
							 $syslogger->descripcion   = $msg_error;
							 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
							 $syslogger->fecha         = date("Y-m-d H:i:s");
							 $syslogger->objeto        = json_encode($rango);
							 if(!$syslogger->save()){
								foreach($syslogger->getMessages() as $message){ 
										Flash::error("Tabla de errores del sistema: ".$message); 
									}
							 }else{
									 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
								 }   
				}
				
			}
			
		}
		
		public function deleteAction($id=''){

			$this->setResponse("ajax");
			$sw=0;
			
			if($id==''){ $id = $_REQUEST["id"]; }
			
			$rango = new Rangos();
			
			$rango = $this->Rangos->findFirst(" id = '$id' ");
			
			if($sw==0){					
				if($rango->delete()){
					
							 $syslogger = new Syslogger();
							 $syslogger->username      =  Session::get(md5("admin_username"));
							 $syslogger->module        = Router::getModule();
							 $syslogger->application   = Router::getApplication();
							 $syslogger->controller    = $this->getControllerName();
							 $syslogger->action        = $this->getActionName();
							 $syslogger->error_sistema = "Rango Guardado";
							 $syslogger->descripcion   = "Rango Guardado Satisfactoriamente";
							 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
							 $syslogger->fecha         = date("Y-m-d H:i:s");
							 $syslogger->objeto        = json_encode($rango);
							 if(!$syslogger->save()){
								foreach($syslogger->getMessages() as $message){ 
										Flash::error("Tabla de errores del sistema: ".$message); 
									}
							 }else{
									 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
								 }
					
					Flash::success(Router::getController()." Eliminado Satisfactoriamente");
					Flash::addMessage(Router::getController()." Eliminado Satisfactoriamente",Flash::SUCCESS);
					echo "<script>redireccionar_action('".Router::getController()."/');</script>";
				}else{
						Flash::error("Error: No se pudo Eliminar el registro...");	
						$msg_error = "";
						foreach($rango->getMessages() as $message){
								  Flash::error($message->getMessage());$msg_error.=$message->getMessage();
						}	
					
							 $syslogger = new Syslogger();
							 $syslogger->username      =  Session::get(md5("admin_username"));
							 $syslogger->module        = Router::getModule();
							 $syslogger->application   = Router::getApplication();
							 $syslogger->controller    = $this->getControllerName();
							 $syslogger->action        = $this->getActionName();
							 $syslogger->error_sistema = "Rango Guardado";
							 $syslogger->descripcion   = $msg_error;
							 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
							 $syslogger->fecha         = date("Y-m-d H:i:s");
							 $syslogger->objeto        = json_encode($rango);
							 if(!$syslogger->save()){
								foreach($syslogger->getMessages() as $message){ 
										Flash::error("Tabla de errores del sistema: ".$message); 
									}
							 }else{
									 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
								 }   
				}
				
			}
			
		}
		
		public function find_detalle_buscarAction(){
				$this->setResponse("ajax");
		}
		
		
			
	}

?>