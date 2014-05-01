<?php

	class UsuariosController extends ApplicationController {
	
				
		
		public function initialize() {
		
		
			$this->setTemplateAfter("adminiziolite");
	
		}


		/**
		 * Aqui sale el formulario de Iniciar Sesión
		 *
		 */
		 
		public function indexAction(){
		
		}
		
		
		 public function not_found($controller, $action){
				 $this->set_response('view');
				 Flash::error("No esta definida la accion $action, redireccionando");
				 return $this->redirect('menu');
				 
		 }

		/**
		 * Esta accion es ejecutada por application/before_filter en caso
		 * de que el usuario trate de entrar a una accion a la cual
		 * no tiene permiso
		 *
		 */
		public function no_accesoAction(){

		}
		
		
		
		public function cambioAction(){

		}
		
		
		
		
		public function permisosAction(){
			
			//verficando permisos
			$acl  = new AccessList();
			
			$role = new Role();
			
			Flash::success("Verificando Permisos");
			
			
			foreach($role->find(" role != 'administrador' ") as $role):
				Flash::success("verificando Permisos del Perfil '".$role->role."");
				
				if($acl->count(" role = '".$role->role."' and resource = 'administrador' and action = '*' ") == 0 ){
						$acl->id       = '';
						$acl->role     = $role->role;
						$acl->resource ="administrador";
						$acl->action   ="*";
						$acl->allow    ='N';
						//Flash::notice(count($tmp).$menu->url);
						if( !$acl->save() ){
							Flash::error("Error Guardando Registro");
							foreach($acl->getMessages() as $message){ 
								Flash::error("Error tabla access list : ".$message); 
							}
						}
				}
				
				
				
			Flash::success("Permisos Verificados y actualizados");	
			
				$menu = new Menu();
				foreach($menu->find("posicion_y <> 0") as $menu):
					Flash::success("verificando Permisos del Perfil '".$role->role."");
					$tmp = explode("/",$menu->url);
					$resource = $tmp[0]; 
					$action   = $tmp[1]; 
					if($action==''){ $action = 'index'; }
					//Flash::notice(count($tmp);
					if($acl->count(" role = '".$role->role."' and resource = '$resource' and action = '$action' ") == 0 ){
						$acl->id       = '';
						$acl->role     = $role->role;
						$acl->resource =$resource;
						$acl->action   =$action;
						$acl->allow    ='Y';
						//Flash::notice(count($tmp).$menu->url);
						if( !$acl->save() ){
							Flash::error("Error Guardando Registro");
							foreach($acl->getMessages() as $message){ 
								Flash::error("Error tabla access list : ".$message); 
							}
						}
						
						if($acl->count("role = '".$role->role."' and  resource = '$resource' and action = 'agregar' ") == 0 ){
							$acl->id        = '';
							$acl->role      = $role->role;
							$acl->resource  = $resource;
							$acl->action    = "agregar";
							$acl->allow     = 'N';
							//Flash::notice(count($tmp).$menu->url);
							if( !$acl->save() ){
								Flash::error("Error Guardando Registro");
								foreach($acl->getMessages() as $message){ 
									Flash::error("Error tabla access list : ".$message); 
								}
							}
						}
						if($acl->count("role = '".$role->role."' and  resource = '$resource' and action = 'buscar' ") == 0 ){
							$acl->id        = '';
							$acl->role      = $role->role;
							$acl->resource  = $resource;
							$acl->action    ="buscar";
							$acl->allow     ='N';
							//Flash::notice(count($tmp).$menu->url);
							if( !$acl->save() ){
								Flash::error("Error Guardando Registro");
								foreach($acl->getMessages() as $message){ 
									Flash::error("Error tabla access list : ".$message); 
								}
							}
						}
						if($acl->count("role = '".$role->role."' and  resource = '$resource' and action = 'eliminar' ") == 0 ){
							$acl->id         = '';
							$acl->role       = $role->role;
							$acl->resource   = $resource;
							$acl->action     = "eliminar";
							$acl->allow      = 'N';
							//Flash::notice(count($tmp).$menu->url);
							if( !$acl->save() ){
								Flash::error("Error Guardando Registro");
								foreach($acl->getMessages() as $message){ 
									Flash::error("Error tabla access list : ".$message); 
								}
							}
						}
						if($acl->count("role = '".$role->role."' and  resource = '$resource' and action = 'modificar' ") == 0 ){
							$acl->id        = '' ;
							$acl->role      = $role->role ;
							$acl->resource  = $resource;
							$acl->action    = "modificar";
							$acl->allow     = 'N';
							//Flash::notice(count($tmp).$menu->url);
							if( !$acl->save() ){
								Flash::error("Error Guardando Registro");
								foreach($acl->getMessages() as $message){ 
									Flash::error("Error tabla access list : ".$message); 
								}
							}
						}
						
					}
				endforeach;
				
			endforeach; //roles
			
			Flash::success("Permisos Actualizados");
			
			echo "<script>quitar_mensajes();</script>";
			
				
				
		}
		
		
		public function ver_permisosAction(){
			$this->setResponse("ajax");
			
			if( isset($_REQUEST["role"])==true && isset($_REQUEST["controlador"])==true && isset($_REQUEST["accion"])==true && isset($_REQUEST["permiso"])==true ){
				$role = $_REQUEST["role"];
				$controlador = $_REQUEST["controlador"];
				$accion = $_REQUEST["accion"];
				$permiso = $_REQUEST["permiso"];
				$acl = new AccessList();
				if($permiso=='Y'){ $permiso = 'N'; }else{ $permiso = 'Y'; }
				$acl = $this->AccessList->findFirst(" role = '$role' and resource = '$controlador' and  action = '$accion' ");
				$acl->allow = $permiso;
				
				if(!$acl->save()){
					Flash::Error("Error Actualizando el permiso");
				}
				
			}
			echo "<script>quitar_mensajes();</script>";
		}
		
		
		public function AgregarAction(){

		}
		
		
			
		public function modificarAction(){
			$id = '';
			//Flash::notice($id);
			if(isset($_REQUEST["id"])){ 
			
			$id = $_REQUEST["id"]; 
			//Flash::notice($id);
			$user =  $this->Admin->findFirst("id = '".$id."'");
			$roles = $this->Role->findFirst("role = '".$user->role."'");
			//Flash::notice($id);
			Tag::displayTo("id",$user->id);
			Tag::displayTo("username",$user->username);
			Tag::displayTo("password",$user->password);
			Tag::displayTo("confirmar",$user->password);
			Tag::displayTo("empleado",$user->empleado_id);
			Tag::displayTo("role",$roles->role);
								
			}
		
		}
		

		public function updateAction(){
			
			$this->setResponse("ajax");
			$usuario= new Admin();
			$sw=0;
			$sw1=0;
			$sw2=0;
			$sw3=0;
				
			if($this->getPostParam("password")=="" || $this->getPostParam("confirmar") =="" ){$sw=1;Flash::error("Contrasenas Requeridas..");}
				if($this->getPostParam("password")!=$this->getPostParam("confirmar")){$sw=1;Flash::error("Error Contrase&ntilde;as no son iguales..");}
													
					/*$sql="select count(*) from admin where empleado_id='".$this->getPostParam("empleado_id")."'";
				   
				   	if($usuario->countBySql($sql)>=1){
					
					$sw1=1;
									    
					Flash::error("Error: El empleado seleccionado ya tiene usuario creado.");
					
					}else{
						
					$sw1=0;
					
					}
					
					if($this->getPostParam("password")!=$this->getPostParam("confirmar")){
					
					$sw2=1;
				    
					Flash::error("Error: Las claves no son iguales...");
										 					  
					}else{
						
					$sw2=0;
					
					}
					
					$sql="select count(*) from admin where username='".$this->getPostParam("username")."'";
					
					if($usuario->countBySql($sql)){
						
					$sw3=1;
				    
					Flash::error("Error: El nombre de usuario ya existe...");
					
					 					  
					}else{
						
					$sw3=0;
					
					}*/
			
				if(($sw==0)&&($sw1==0)&&($sw2==0)&&($sw3==0)){
					
						$usuario = $this->Admin->findFirst(" id = '".$_REQUEST["id"]."' ");
						//$Usuario->id$this->getPostParam("id");
						$usuario->username  		= $this->getPostParam("username");
						$usuario->password        = $this->getPostParam("password");
						$usuario->nombre_completo = $this->getPostParam("empleado");
						$usuario->tipo_usuario    = '1';
						$usuario->empleado_id     = $this->getPostParam("empleado_id");
						$usuario->role            = $this->getPostParam("role");
												
						//$Usuario->cedula    = $this->getPostParam("cedula");
						//$Usuario->nombre1   = $this->getPostParam("nombre1");
						//$Usuario->nombre2   = $this->getPostParam("nombre2");
						//$Usuario->apellido1 = $this->getPostParam("apellido1");
						//$Usuario->apellido2 = $this->getPostParam("apellido2");
					
						//$Usuario->nombrecompleto("");
						
						if($this->getPostParam("password")!=''){
							$usuario->password  = md5($this->getPostParam("password"));
						}
						
						/*$Usuario->nombrecompleto = $this->getPostParam("nombre_completo");
						if(Session::get("role")=="superadministrador" ) {
								$Usuario->role  = $this->getPostParam("role");
						}*/
					
						if($usuario->save()){
							  Flash::success("Se Actualizo correctamente el registro");
							  /*echo "<script>redireccionar_action('menu');</script>";	*/
							  echo "<script>quitar_mensajes();</script>";
							  
						}else{
							 Flash::success("Error: No se pudo Actualizar el registro");	
							 /*echo "<script>redireccionar_action('menu');</script>";	*/
							 
							 foreach($usuario->getMessages() as $message){ 
								Flash::error("Error tabla Usuarios : ".$message); 
							}
						}
				}
			
		}
		
				
		public function eliminarAction(){
			//$this->setResponse("ajax");
			
			$id= $_REQUEST['id'];
			
			if( isset($id) ){
				
				$id_usuario = $id;
		
				$user =  $this->Admin->findFirst("id = '".$id_usuario."'");
				$roles = $this->Role->findFirst("role = '".$user->role."'");
				
				Tag::displayTo("id",$user->id);
				Tag::displayTo("username",$user->username);
				Tag::displayTo("password",$user->password);
				Tag::displayTo("confirmar",$user->password);
				Tag::displayTo("empleado",$user->empleado_id);
				Tag::displayTo("role",$roles->role);
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar ".strtoupper(Router::getController())." para modificar.");
				}
		}
		
		
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$usuario  = new Admin();
			
				
				if($usuario->delete(" id = '".$_REQUEST["id"]."' ")){
					
					Flash::success(strtoupper(Router::getController())." Eliminado Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($usuario->getMessages() as $message){
							  Flash::error("Error Eliminando usuario ".$message->getMessage());
					}	  
					
				}
					
	    }
		
		public function buscarAction(){
			
		}
		
		
		
		public function find_buscarAction(){
			
		}
		
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		
		
		public function addAction(){
			
			$this->setResponse("ajax");
		
					$usuario= new Admin();
					$sw=0;
					$sw1=0;
					$sw2=0;
					$sw3=0;
				
					$sql="select count(*) from admin where empleado_id='".$this->getPostParam("empleado_id")."'";
				   
				   	if($usuario->countBySql($sql)>=1){
					
					$sw1=1;
									    
					Flash::error("Error: El empleado seleccionado ya tiene usuario creado.");
					
					}else{
						
					$sw1=0;
					
					}
					
					if($this->getPostParam("password")!=$this->getPostParam("confirmar")){
					
					$sw2=1;
				    
					Flash::error("Error: Las claves no son iguales...");
										 					  
					}else{
						
					$sw2=0;
					
					}
					
					$sql="select count(*) from admin where username='".$this->getPostParam("username")."'";
					
					if($usuario->countBySql($sql)){
						
					$sw3=1;
				    
					Flash::error("Error: El nombre de usuario ya existe...");
					
					 					  
					}else{
						
					$sw3=0;
					
					}
							
					if(($sw==0)&&($sw1==0)&&($sw2==0)&&($sw3==0)){
						
						$usuario->id             = '0';
						$usuario->username       = $this->getPostParam("username");
						$usuario->password       = md5($this->getPostParam("password"));
						$usuario->nombre_completo= $this->getPostParam("empleado");
						$usuario->empleado_id    = $this->getPostParam("empleado_id");
						$usuario->tipo_usuario   = '1';
						$usuario->plantilla      = 'adminiziolite';
						$usuario->role           = $this->getPostParam("role");
						
						if($usuario->save()){
								Flash::success("Usuario creado correctamente el registro");
								echo "<script>quitar_mensajes();</script>";
						}else{
							 foreach($usuario->getMessages() as $message){ 
								Flash::error("Error tabla Usuarios : ".$message); 
							}
							Flash::error("Error: No se inserto el registro");
						}
					}
					
			}
		
	 } 

?>