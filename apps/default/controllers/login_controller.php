<?php

	class LoginController extends ApplicationController {



		/**

		 * Inicializa el Controlador Login

		 *

		 */



		public function initialize() {

			$this->setTemplateAfter("adminiziolite");

		}



		/**

		 * Index por defecto del Controlador

		 *

		 */

		 

		public function indexAction(){

		

		}

		

		/**

		 * Aqui sale el formulario de Iniciar Sesión

		 *

		 */

		 

		public function LoginAction(){

		

		}

		

		/**

		 * Aqui sale el formulario de Iniciar Sesión

		 *

		 */

		 

		 public function not_found($controller, $action){

				 $this->set_response('view');

				 Flash::error("No esta definida la accion $action, redireccionando");

				 return $this->redirect('administrador');

				 

		 }



		/**

		 * Esta accion es ejecutada por application/before_filter en caso

		 * de que el usuario trate de entrar a una accion a la cual

		 * no tiene permiso

		 *

		 */

		public function no_accesoAction(){

				$this->set_response('view');

				 Flash::error("No esta definida la accion $action, redireccionando");

				 return $this->redirect('administrador');

		}

			

		/**

		 * Validacion si el login y el password son correctos

		 */

		public function validaAction(){
			
				$this->setResponse('view');

				$Usuario = new Admin();
				$usuario = $Usuario->findFirst("username = '".$_REQUEST['login']."'
							and password = '".md5($_REQUEST['password'])."'");
				
				
				if($usuario){
				
					$Empresa = new Empresa();
					$emp = $Empresa->findFirst("id = '".$_REQUEST['empresa']."'");
					
					$empleado = $this->Cobradores->findFirst(" id = '$usuario->cobradores_id' ");
					
					if(!$emp){
						Flash::error('Usuario/Clave incorrectos');
						Flash::error('POR FAVOR ESCOJA UNA EMPRESA/O CREE UNA EMPRESA PREVIAMENTE');
						return false;
					}
					
					 $db = DbBase::rawConnect();
			  		 $db->query("select * from access_list where role = '$usuario->role' ");
					 
					 if($db->numRows()==0 ){
						   //Flash::notice("otra cosa");
						   Flash::notice("Rol no existe en la tabla de permisos '$usuario->role'");
						   //$authLog = new Logger("File", "auth_failed.txt");
						   //$authLog->log("Rol no existe en la tabla de permisos '$usuario->role' Fecha ".date("Y-m-d H:i:s"));
						     $syslogger = new Syslogger();
							 $syslogger->username      =  Session::get(md5("admin_username"));
							 $syslogger->module        = Router::getModule();
							 $syslogger->application   = Router::getApplication();
							 $syslogger->controller    = $this->getControllerName();
							 $syslogger->action        = $this->getActionName();
							 $syslogger->error_sistema = "Rol no Existe ".Session::get(md5("admin_username"))." '". $this->getControllerName()."/".$this->getActionName()."'  Fecha: ".date("Y-m-d H:i:s");
							 $syslogger->descripcion   = "Rol no Existe";
							 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
							 $syslogger->fecha         = date("Y-m-d H:i:s");
							 if(!$syslogger->save()){
								foreach($syslogger->getMessages() as $message){ 
										Flash::error("Tabla de errores del sistema: ".$message); 
									}
							 }else{
									 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
								 }
						   return false;
					  } 
					
					/**
					 * Almaceno en la variable de session el id del usuario
					 * autenticado
					 */
					Session::set(md5('admin_username')      , md5($usuario->username));
					Session::set(md5('tipo_usuario')        , $usuario->tipo_usuario);
					Session::set(md5('usuarios_id')         , md5($usuario->id));
					Session::set('nombre_completo'          , $empleado->nombre_completo);
					Session::set(md5('usuario_autenticado') , md5(true));
					Session::set('id_empresa'               , $emp->id);
					Session::set('nombre_empresa'           , $emp->nombre_empresa);
					Session::set('kardex_id_default'        , $emp->kardex_id_default);
					Session::set('id_empleado'              , $empleado->id);
					Session::set('nombre_empleado'          , $empleado->razon_social);
					Session::set('regimen'                  , $emp->regimen_id);
					Session::set(md5('role')                , $usuario->role);
					Session::set('cobro_tarifa'             , $emp->cobro_tarifa);
					
					/**

					 * Lo redireccionos al formulario de clientes

					 */
						Flash::success('Logueado');
						//$this->setResponse("ajax");
						echo "<script>redireccionar_action('home/aplicaciones');</script>";

				} else {

							 $syslogger = new Syslogger();
							 $syslogger->username      =  Session::get(md5("admin_username"));
							 $syslogger->module        = Router::getModule();
							 $syslogger->application   = Router::getApplication();
							 $syslogger->controller    = $this->getControllerName();
							 $syslogger->action        = $this->getActionName();
							 $syslogger->error_sistema = "Usuario Clave incorrectos ".Session::get(md5("admin_username"))." '". $this->getControllerName()."/".$this->getActionName()."'  Fecha: ".date("Y-m-d H:i:s");
							 $syslogger->descripcion   = "Usuario Clave incorrectos";
							 $syslogger->ip_remota     = $_SERVER['REMOTE_ADDR'];
							 $syslogger->fecha         = date("Y-m-d H:i:s");
							 if(!$syslogger->save()){
								foreach($syslogger->getMessages() as $message){ 
										Flash::error("Tabla de errores del sistema: ".$message); 
									}
							 }else{
									 Flash::success("Registro Guardado en Tabla de errores del sistema: ".$message); 
								 }

					Flash::error('Usuario/Clave incorrectos');

					//return $this->routeTo('action: login');

				}



		}

		/*

		* Salir Sale del sistema y cierra todas las variables 

		* de las sessiones activas para este hilo de conexion

		*/

		

		public function salirAction(){

			

				Session::unsetData(md5('admin_username') );
				Session::unsetData(md5('tipo_usuario'));
				Session::unsetData(md5('usuarios_id'));
				Session::unsetData('nombre_completo');
				Session::unsetData(md5('usuario_autenticado'));
				Session::unsetData('nombre_completo');
				Session::unsetData('id_empresa');
				Session::unsetData('nombre_empresa');
				Session::unsetData('kardex_id_default');
				Session::unsetData('id_empleado');
				Session::unsetData('nombre_empleado');
				Session::unsetData('regimen');
				Session::unsetData(md5('role'));
				Session::unsetData('cobro_tarifa');


		

			Flash::notice('Has salido Gracias');

			return $this->routeTo('action: login');

		}

		

		

		public function addAction(){

			$this->setResponse("ajax");

			$Usuario= new Admin();

			$sw=0;

			$usuario = $Usuario->findFirst("username = '".$_REQUEST['username']."'");

			

			if($usuario){

				Flash::error("Error: Nombre usuario ya existe!!!");

			}else{

				

				if($this->getPostParam("password")!=$this->getPostParam("confirmar")){$sw=1;Flash::error("Error Contraseñas no son iguales..");}

			

				if($sw==0){

					$Usuario->id               = $this->getPostParam("id");;

					$Usuario->username         = $this->getPostParam("username");

					$Usuario->password         = $this->getPostParam("password");

					$Usuario->nombre_completo  = $this->getPostParam("nombre_completo");

					$Usuario->tipo_usuario     = $this->getPostParam("tipo_usuario");

					$Usuario->empleado_id     = $this->getPostParam("empleado_id");

					$Usuario->role             = $this->getPostParam("role");

					

					if($Usuario->save()){

						    Flash::addMessage("Se creo correctamente el registro",FLASH::SUCCESS);
							

						  /*echo "<script>redireccionar_action('menu');</script>";	*/

						   return $this->redirect('menu');

					}else{

							

						 foreach($Usuario->getMessages() as $message){ 

							Flash::error("Error tabla Usuarios : ".$message); 

						}

						Flash::addMessage("NO SE INSERTO EL REGISTRO",FLASH::ERROR);

						  /*echo "<script>redireccionar_action('menu');</script>";	*/

						   return $this->redirect('menu');

					}

				

				}

			}

					

		}

		

		public function showAction($id){

          

            $admin = $this->Admin->find("id='$id'");

            $this->setParamToView("admin", $admin);

	

		}

		

		 

		

		

		



	}



?>