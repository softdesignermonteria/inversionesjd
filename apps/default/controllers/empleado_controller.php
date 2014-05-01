<?php

	class EmpleadoController extends ApplicationController {
		
		
	
				
		
		public function initialize() {
		  // $this->setTemplateAfter("a_bit_boxy");
		   //$this->setTemplateAfter("menu_azul");
		   	$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
		}



		public function indexAction(){
		
		}
				
	
	
		/****
			agregarAction vista en la cual se mostrara el 
			formulario para agregar proveedores
		***/
		public function agregarAction(){
					
        }
		/****
			addAction metodo en la cual se insertarán
			los datos del proveedor
		***/
		
		public function buscarAction(){
		
		}
		
		public function addAction(){
			//primero instanciamos clase proveedores
			
			$this->setResponse("view");
			
			$sw = 0;
			if($this->Empleado->count("cedula = '".$this->getPostParam("cedula")."'")>0){
				Flash::error("DOCUMENTO DE IDENTIFICACION (NIT/CEDULA) YA SE EXISTE EN NUESTRA BASE DE DATOS");
				$sw=1;
			}
			
			$fecha_act=date("Y-m-d H:i:s");
			
			if($sw==0){
				$empleado  = new Empleado();
				//cargamos el objeto mediantes los metodos setters
				$empleado->id                = $this->getPostParam("id");
				$empleado->empresa_id        = $_REQUEST["empresa_id"];
				$empleado->cedula            = $this->getPostParam("cedula");
				$empleado->nombre_completo   = $this->getPostParam("nombre_completo");
				$empleado->direccion         = $this->getPostParam("direccion");
				$empleado->email             = $this->getPostParam("email");
				$empleado->telefono          = $this->getPostParam("telefono");
				$empleado->celular           = $this->getPostParam("celular");
				$empleado->web               = $this->getPostParam("web");
				$empleado->activo            = $this->getPostParam("activo");
				$empleado->fecha_act         = $fecha_act;
				$empleado->email             = $this->getPostParam("email");
				$empleado->web               = $this->getPostParam("web");
				$empleado->fecha_ingreso     = $this->getPostParam("fecha_ingreso");
				$empleado->fecha_vencimiento = $this->getPostParam("fecha_vencimiento");
				$empleado->salario           = $this->getPostParam("salario");
				
						
				if($empleado->save()){
					
					Flash::success("Se insertó correctamente el registro");
					echo "<script>quitar_mensajes();</script>";	

				 }else{
					Flash::error("Error: No se pudo insertar registro");	
					foreach($empleado->getMessages() as $message):
						Flash::error("Error: ".$message);
					endforeach;
				 }
				
			}//fin si todo bien
					
	    }
		
		public function modificarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){
					
				$id_empleado = $id;
						
				$empl = $this->Empleado->findFirst(" id = '$id_empleado' ");
		/*		$dpto= $this->Departamentos->findFirst("id = '$cli->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$cli->municipios_id'");*/
				Tag::displayTo("id",$empl->id);
				Tag::displayTo("cedula",$empl->cedula);
				Tag::displayTo("nombre_completo",$empl->nombre_completo);
				Tag::displayTo("direccion",$empl->direccion);
				Tag::displayTo("email",$empl->email);
				Tag::displayTo("telefono",$empl->telefono);
				Tag::displayTo("celular",$empl->celular);
				Tag::displayTo("web",$empl->web);
				Tag::displayTo("activo",$empl->activo);
				Tag::displayTo("fecha_ingreso",$empl->fecha_ingreso);
				Tag::displayTo("fecha_vencimiento",$empl->fecha_vencimiento);
				Tag::displayTo("salario",$empl->salario);
							
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Ies para modificar.");
				}
		}
		
		public function eliminarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){
				
				$id_empleado = $id;
		
				$empl  = $this->Empleado->findFirst(" id = '$id_empleado' ");
		/*		$dpto= $this->Departamentos->findFirst("id = '$cli->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$cli->municipios_id'");*/
				
				Tag::displayTo("id",$empl->id);
				Tag::displayTo("cedula",$empl->cedula);
				Tag::displayTo("nombre_completo",$empl->nombre_completo);
				Tag::displayTo("direccion",$empl->direccion);
				Tag::displayTo("email",$empl->email);
				Tag::displayTo("telefono",$empl->telefono);
				Tag::displayTo("celular",$empl->celular);
				Tag::displayTo("web",$empl->web);
				Tag::displayTo("activo",$empl->activo);
				Tag::displayTo("fecha_ingreso",$empl->fecha_ingreso);
				Tag::displayTo("fecha_vencimiento",$empl->fecha_vencimiento);
				Tag::displayTo("salario",$empl->salario);
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar ".strtoupper(Router::getController())." para modificar.");
				}
		}
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$empl  = new Empleado();
			
				
				if($empl->delete(" id = '".$_REQUEST["id"]."' ")){
					
					Flash::success(strtoupper(Router::getController())." Eliminada Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($cli->getMessages() as $message){
							  Flash::error("Error Eliminando Ies ".$message->getMessage());
					}	  
					
				}
					
	    }
		
		public function updateAction(){
			
			$this->setResponse("ajax");
			$cli= new Empleado();
			$sw=0;
			//$usuario = $Usuario->findFirst("username = '".$_REQUEST['username']."'");
			
			if($sw==1){
				Flash::error("Error: Clientes ya existe!!!");
			
			}else{
				
				if($sw==0){
					
						$empl = $this->Empleado->findFirst(" id = '".$_REQUEST["id"]."' ");
						//$Usuario->setId($this->getPostParam("id"));
						$empl->cedula = $this->getPostParam("cedula");
						$empl->nombre_completo = $this->getPostParam("nombre_completo");
						$empl->direccion = $this->getPostParam("direccion");
						$empl->email = $this->getPostParam("email");
						$empl->telefono = $this->getPostParam("telefono");
						$empl->celular = $this->getPostParam("celular");
						$empl->web = $this->getPostParam("web");
						$empl->activo = $this->getPostParam("activo");
						$empl->fecha_ingreso = $this->getPostParam("fecha_ingreso");
						$empl->fecha_vencimiento = $this->getPostParam("fecha_vencimiento");
						$empl->salario = $this->getPostParam("salario");
									
						if($empl->save()){
							  Flash::success("Se Actualizo correctamente el registro");
							  /*echo "<script>redireccionar_action('menu');</script>";	*/
							  echo "<script>quitar_mensajes();</script>";
							  
						}else{
							 Flash::success("Error: No se pudo Actualizar el registro");	
							 /*echo "<script>redireccionar_action('menu');</script>";	*/
									
						}
				  }
			  }
			
		}
		
		/****
			mostrarAction vista en la cual se mostrarán
			los datos del proveedor
		***/
		public function showAction($id){
          
            $proveedores = $this->Proveedores->findFirst(" id = '$id' ");
			$municipios  = $this->Municipios->findFirst(" id = '$proveedores->municipios_id' ");
			Flash::error($proveedores->municipios_id."-".$municipios->departamentos_id);
			$departamentos = $this->Departamentos->findFirst("id='$municipios->departamentos_id'");
			
            $this->setParamToView("proveedores", $proveedores);
			$this->setParamToView("municipios", $municipios);
			$this->setParamToView("departamentos", $departamentos);
	
		}
	
		/****
			actualizarAction metodo en el cual se actualizaran
			los datos del proveedor
		***/
	
		public function find_buscarAction(){
				$this->setResponse('ajax');		
		}
		
		public function find_detalle_buscarAction(){
				$this->setResponse('ajax');
		}
		
		 public function validarAction($id,$opcion){

			$this->setResponse("view");
			
			$sw=0;
			$emp = new Empleado();
			if( $this->Empleado->count(" 1=1 and (id = '$id' or cedula ='$id') ") > 0 ){
				$emp = $this->Empleado->findFirst(" 1=1 and (id = '$id' or cedula ='$id')  ");
				echo "<script>jQuery(\"#$opcion\").val(\"\");jQuery(\"#".Router::getController()."_id\").val(\"$emp->id\");jQuery(\"#empleado\").val(\"$emp->nombre_completo\");</script>";
			}else{
				Flash::error("No se encontró Empleado");
				echo "<script>jQuery(\"#$opcion\").val(\"\");</script>";
				echo "<script>jQuery(\"#".Router::getController()."_id\").val(\"\");</script>";
				}
			//public $scaffold = false;
		}
		
	  
   }
?>