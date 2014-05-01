<?php

	class AdministradorController extends ApplicationController {
	
		
		
		
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
				foreach($menu->find("posicion_y <> 0 and url <> '#' ") as $menu):
					Flash::success("verificando Permisos del Perfil '".$role->role."");
					$tmp = explode("/",$menu->url);
					$resource = $tmp[0]; 
					$action   = $tmp[1]; 
					if($action==''){ $action = 'index'; }
					//Flash::notice(count($tmp);
					//Flash::notice($menu->url);
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
	
		
	
	}

?>