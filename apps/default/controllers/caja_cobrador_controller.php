<?php

	class Caja_cobradorController extends ApplicationController {

		public function initialize() {
		  // $this->setTemplateAfter("a_bit_boxy");
		   //$this->setTemplateAfter("menu_azul");
		   	$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
		}	
						
		public function indexAction(){

		}
		
		public function buscarAction(){

		}
		
		public function modificarAction($id){
				$encabezado = new CajaCobrador();
				$encabezado = $this->CajaCobrador->findFirst(" id = '$id' ");
				
				Tag::displayTo("id",$encabezado->id);
				Tag::displayTo("cobradores_id",$encabezado->cobradores_id);
				Tag::displayTo("fecha",$encabezado->fecha);
				Tag::displayTo("valor",$encabezado->valor);
				$this->setParamToView("cobradores_id",$encabezado->cobradores_id);

		}
		
		public function eliminarAction($id){
				$encabezado = new CajaCobrador();
				$encabezado = $this->CajaCobrador->findFirst(" id = '$id' ");
				
				Tag::displayTo("id",$encabezado->id);
				Tag::displayTo("cobradores_id",$encabezado->cobradores_id);
				Tag::displayTo("fecha",$encabezado->fecha);
				Tag::displayTo("valor",$encabezado->valor);
				
				$this->setParamToView("cobradores_id",$encabezado->cobradores_id);

		}
		
						
		public function agregarAction(){

		}
		
						
		public function addAction(){
			$this->setResponse("ajax");
			$sw=0;
			$encabezado = new CajaCobrador();
			
			$encabezado->id             = $_REQUEST["id"];
			$encabezado->cobradores_id  = $_REQUEST["cobradores_id"];
			$encabezado->fecha          = $_REQUEST["fecha"];
			$encabezado->valor          = $_REQUEST["valor"];
			
			if($sw==0){					
				if($encabezado->save()){
					
					Flash::success(Router::getController()." Guardada Satisfactoriamente");
								
								 	 $syslogger = new Syslogger();
									
									 $syslogger->username          = Session::get(md5("admin_username"));
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = $this->getControllerName();
									 $syslogger->action            = $this->getActionName();
									 $syslogger->error_sistema     = "Insertado Satisfactoriamente ";
									 $syslogger->descripcion       = "Registro Insertado";
									 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha             = date("Y-m-d H:i:s");
									 $syslogger->tipo_documento_id = "";
									 $syslogger->prefijo           = "";
									 $syslogger->consecutivo       = "";
									 $syslogger->objeto            = json_encode($encabezado);
									 if(!$syslogger->save()){
										foreach($syslogger->getMessages() as $message){ 
												Flash::error("Tabla de Aduditoria del sistema: ".$message); 
											}
									 }else{
											 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
									 }
									 
					echo "<script>quitar_mensajes();</script>";
	
				}else{
					Flash::error("Error: No se pudo Guardar el registro...");	
					$msg_error="";
					foreach($encabezado->getMessages() as $message){
							  Flash::error($message->getMessage());$msg_error.=$message;
					}	
					
									$syslogger = new Syslogger();
									 
									 $syslogger->username          = Session::get(md5("admin_username"));
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = $this->getControllerName();
									 $syslogger->action            = $this->getActionName();
									 $syslogger->error_sistema     = $msg_error;
									 $syslogger->descripcion       = "Registro No Insertado";
									 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha             = date("Y-m-d H:i:s");
									 $syslogger->tipo_documento_id = "";
									 $syslogger->prefijo           = "";
									 $syslogger->consecutivo       = "";
									 $syslogger->objeto            = json_encode($encabezado);
									 if(!$syslogger->save()){
										foreach($syslogger->getMessages() as $message){ 
												Flash::error("Tabla de Aduditoria del sistema: ".$message); 
											}
									 }else{
											 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
									 }  
				}
				
			}
			
		}
		
		public function updateAction(){
			$this->setResponse("ajax");
			$sw=0;
			$encabezado = new CajaCobrador();
			
			$encabezado->id             = $_REQUEST["id"];
			$encabezado->cobradores_id  = $_REQUEST["cobradores_id"];
			$encabezado->fecha          = $_REQUEST["fecha"];
			$encabezado->valor          = $_REQUEST["valor"];
			
			if($sw==0){					
				if($encabezado->save()){
					
					Flash::success(Router::getController()." Actualizado Satisfactoriamente");
									 $syslogger = new Syslogger();
									
									 $syslogger->username          = Session::get(md5("admin_username"));
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = $this->getControllerName();
									 $syslogger->action            = $this->getActionName();
									 $syslogger->error_sistema     = "Actualizado Satisfactoriamente ";
									 $syslogger->descripcion       = "Registro Actualizado";
									 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha             = date("Y-m-d H:i:s");
									 $syslogger->tipo_documento_id = "";
									 $syslogger->prefijo           = "";
									 $syslogger->consecutivo       = "";
									 $syslogger->objeto            = json_encode($encabezado);
									 if(!$syslogger->save()){
										foreach($syslogger->getMessages() as $message){ 
												Flash::error("Tabla de Aduditoria del sistema: ".$message); 
											}
									 }else{
											 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
									 }
					echo "<script>quitar_mensajes();</script>";
					echo "<script>redireccionar_action('".Router::getController()."/modificar/$encabezado->id');</script>";
	
				}else{
					Flash::error("Error: No se pudo Modificar el registro...");	
					$msg_error="";
					foreach($encabezado->getMessages() as $message){
							  Flash::error($message->getMessage());$msg_error.=$message;
					}	
					
									$syslogger = new Syslogger();
									 
									 $syslogger->username          = Session::get(md5("admin_username"));
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = $this->getControllerName();
									 $syslogger->action            = $this->getActionName();
									 $syslogger->error_sistema     = $msg_error;
									 $syslogger->descripcion       = "Registro No Actualizado";
									 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha             = date("Y-m-d H:i:s");
									 $syslogger->tipo_documento_id = "";
									 $syslogger->prefijo           = "";
									 $syslogger->consecutivo       = "";
									 $syslogger->objeto            = json_encode($encabezado);
									 if(!$syslogger->save()){
										foreach($syslogger->getMessages() as $message){ 
												Flash::error("Tabla de Aduditoria del sistema: ".$message); 
											}
									 }else{
											 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
									 }    
				}
				
			}
			
		}
		
		public function deleteAction($id){
			$this->setResponse("ajax");
			$sw=0;
			$encabezado = new CajaCobrador();
			$encabezado = $this->CajaCobrador->findFirst(" id = '$id' ");
			
			if($sw==0){					
				if($encabezado->delete()){
					Flash::success(Router::getController()." Eliminado Satisfactoriamente");
					Flash::addMessage(Router::getController()." Eliminado Satisfactoriamente",Flash::SUCCESS);
									 $syslogger = new Syslogger();
									
									 $syslogger->username          = Session::get(md5("admin_username"));
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = $this->getControllerName();
									 $syslogger->action            = $this->getActionName();
									 $syslogger->error_sistema     = "Borrado Satisfactoriamente ";
									 $syslogger->descripcion       = "Registro Borrado";
									 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha             = date("Y-m-d H:i:s");
									 $syslogger->tipo_documento_id = "";
									 $syslogger->prefijo           = "";
									 $syslogger->consecutivo       = "";
									 $syslogger->objeto            = json_encode($encabezado);
									 if(!$syslogger->save()){
										foreach($syslogger->getMessages() as $message){ 
												Flash::error("Tabla de Aduditoria del sistema: ".$message); 
											}
									 }else{
											 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
									 }
					echo "<script>redireccionar_action('".Router::getController()."/agregar');</script>";
				}else{
					Flash::error("Error: No se pudo Eliminar el registro...");	
					$msg_error="";
					foreach($encabezado->getMessages() as $message){
							  Flash::error($message->getMessage());$msg_error.=$message;
					}	
					
									$syslogger = new Syslogger();
									 
									 $syslogger->username          = Session::get(md5("admin_username"));
									 $syslogger->module            = Router::getModule();
									 $syslogger->application       = Router::getApplication();
									 $syslogger->controller        = $this->getControllerName();
									 $syslogger->action            = $this->getActionName();
									 $syslogger->error_sistema     = $msg_error;
									 $syslogger->descripcion       = "Registro No Borrado";
									 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
									 $syslogger->fecha             = date("Y-m-d H:i:s");
									 $syslogger->tipo_documento_id = "";
									 $syslogger->prefijo           = "";
									 $syslogger->consecutivo       = "";
									 $syslogger->objeto            = json_encode($encabezado);
									 if(!$syslogger->save()){
										foreach($syslogger->getMessages() as $message){ 
												Flash::error("Tabla de Aduditoria del sistema: ".$message); 
											}
									 }else{
											 Flash::success("Registro Guardado en Tabla de Aduditoria del sistema: ".$message); 
									 }    
				}
				
			}
			
		}
		
		
		
		
		public function find_buscarAction(){
			$this->setResponse("ajax");
			//public $scaffold = false;
		}
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
			//public $scaffold = false;
		}
		
		public function validarAction($id,$opcion){

			$this->setResponse("view");
			
			$sw=0;
			$encabezado = new CajaCobrador();
			if( $this->CajaCobrador->count(" id = '$id' ") > 0 ){
				$encabezado = $this->CajaCobrador->findFirst(" id = '$id' ");
				echo "<script>jQuery(\"#$opcion\").val(\"\");jQuery(\"#$opcion\").val(\"$encabezado->departamento\");</script>";
				
			}else{
				Flash::error("No se Encontro Departamento");
				echo "<script>jQuery(\"#$opcion\").val(\"\");</script>";
				}
			
			
			//public $scaffold = false;
		}
			
	}

?>