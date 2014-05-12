<?php

	class EmpresaController extends ApplicationController {
	
		public function initialize() {
		   //$this->setTemplateAfter("a_bit_boxy");
		    //$this->setTemplateAfter("menu_azul");
			$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
		}
		
		public function indexAction(){
			
			$this->setParamToView("detalles",$this->Empresa->find());
			
		}
		
		public function find_buscarAction(){
		
			$this->setResponse('view');
					
		}
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		public function agregarAction(){
		}
		
		public function addAction(){
			//primero instanciamos clase clientes
			$emp  = new Empresa();
			//cargamos el objeto mediantes los metodos setters
			$emp->id = '0';
			$emp->nombre_empresa = $this->getPostParam("nombre_empresa");
			$emp->nit = $this->getPostParam("nit");
			$emp->direccion = $this->getPostParam("direccion");
			$emp->logo = $this->getPostParam("imagen");
			$emp->regimen_id = $this->getPostParam("regimen_id");
								
			if($emp->save()){
				Flash::success("Se insertó correctamente el registro");
				print("<script>document.location.replace(".core::getInstancePath()."'empresa/mostrar/$emp->id');</script>");
			}else{
				Flash::error("Error: No se pudo insertar registro");	
			}
					
	    }
		
		public function buscarAction(){
		
		}
		
		public function showAction($id){
          
            $empresa = $this->Empresa->find("id='$id'");
            $this->setParamToView("empresa", $empresa);
	
		}
		
		public function modificarAction(){
			//$this->setResponse("ajax");
			$id_empresa= $_REQUEST['id'];
			
			if( isset($id_empresa) ){
					
						
				$emp = $this->Empresa->findFirst(" id = '$id_empresa' ");
				/*$dpto= $this->Departamentos->findFirst("id = '$cli->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$cli->municipios_id'");
				$nit_huella= $this->Somhue->findFirst("nit = '$cli->nit'");*/
				
				Tag::displayTo("id",$emp->id);
				Tag::displayTo("nit",$emp->nit);
				Tag::displayTo("nombre_corto",$emp->nombre_corto);
				Tag::displayTo("nombre_empresa",$emp->nombre_empresa);
				Tag::displayTo("direccion",$emp->direccion);
				Tag::displayTo("telefonos",$emp->telefonos);
				Tag::displayTo("celular",$emp->celular);
				Tag::displayTo("web",$emp->web);
				Tag::displayTo("correo",$emp->correo);
				Tag::displayTo("porcentaje",$emp->porcentaje);
				Tag::displayTo("huellas",$emp->huella);
				Tag::displayTo("foto",$emp->foto);
				Tag::displayTo("tipo_documento_id_creditos",$emp->tipo_documento_id_creditos);
				Tag::displayTo("tipo_documento_id_notas_debito",$emp->tipo_documento_id_notas_debito);
				Tag::displayTo("tipo_documento_id_recibos_caja",$emp->tipo_documento_id_recibos_caja);
				/*Tag::displayTo("telefono2",$cli->telefono2);
				Tag::displayTo("sueldo",$cli->sueldo);
				Tag::displayTo("otros_ingresos",$cli->otros_ingresos);
				Tag::displayTo("eps",$cli->eps);
				Tag::displayTo("casa",$cli->casa);
				Tag::displayTo("vehiculos",$cli->vehiculos);
				Tag::displayTo("celular",$cli->celular);
				Tag::displayTo("departamentos",$cli->departamentos_id);
				Tag::displayTo("departamento",$dpto->departamento);
				Tag::displayTo("municipios",$cli->municipios_id);
				Tag::displayTo("municipio",$mpio->municipio);
				Tag::displayTo("email",$cli->correo);
				Tag::displayTo("web",$cli->web);*/
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Ies para modificar.");
				}
		}
		
		/*public function updateAction(){
			
			$this->setResponse('view');
			$id = $this->getPostParam("id");
			//primero instanciamos clase clientes
			//$emp  = new Empresa();
			//cargamos el objeto mediantes los metodos setters
			$emp = $this->Empresa->findFirst("id = '$id'");
			$emp->nombre_empresa = $this->getPostParam("nombre_empresa");
			$emp->nit = $this->getPostParam("nit");
			$emp->direccion = $this->getPostParam("direccion");
			$emp->logo = 'sin logo';
			$emp->regimen_id = $this->getPostParam("regimen_id");
			$emp->telefonos = $this->getPostParam("telefonos");
			$emp->celular = $this->getPostParam("celular");
			$emp->web = $this->getPostParam("web");
			$emp->correo = $this->getPostParam("correo");
								
			if($emp->save()){
				Flash::success("Se actualizo correctamente el registro");
				print("<script>document.location.replace('".core::getInstancePath()."empresa/show/$emp->id');</script>");
			}else{
				Flash::error("Error: No se pudo insertar registro");	
				foreach($emp->getMessages() as $mensaje):
					Flash::error("error ".$mensaje);
				endforeach;
			}
					
	    }*/
		
		public function updateAction(){
			
			$this->setResponse("ajax");

			$sw=0;
			
			$empresa = $this->Empresa->findFirst("id = '".$_REQUEST['id']."'");
			
			if($sw==1){
				
				Flash::error("Error: Empresa ya existe!!!");
			
			}else{
				
				if($sw==0){
					
						$emp = $this->Empresa->findFirst(" id = '".$_REQUEST["id"]."' ");
						//$Usuario->setId($this->getPostParam("id"));
						$emp->nit = $this->getPostParam("nit");
						$emp->nombre_corto = $this->getPostParam("nombre_corto");
						$emp->nombre_empresa = $this->getPostParam("nombre_empresa");
						$emp->direccion = $this->getPostParam("direccion");
						$emp->logo = 'sin logo';
						$emp->regimen_id = '1';
						$emp->telefonos = $this->getPostParam("telefonos");
						$emp->celular = $this->getPostParam("celular");
						$emp->web = $this->getPostParam("web");
						$emp->correo = $this->getPostParam("correo");
						$emp->activo = '0';
						$emp->kardex_id_default = '0';
						$emp->tipo_costeo = 'REFERENCIA';
						$emp->cobro_tarifa = 'INTERVALO';
						$emp->porcentaje = $this->getPostParam("porcentaje");
						$emp->huella = $this->getPostParam("huellas");
						$emp->foto = $this->getPostParam("foto");
						$emp->tipo_documento_id_creditos = $this->getPostParam("tipo_documento_id_creditos");
						$emp->tipo_documento_id_notas_debito = $this->getPostParam("tipo_documento_id_notas_debito");
						$emp->tipo_documento_id_recibos_caja = $this->getPostParam("tipo_documento_id_recibos_caja");
															
						if($emp->save()){
							  Flash::success("Se Actualizo correctamente el registro");
							  /*echo "<script>redireccionar_action('menu');</script>";	*/
							   echo "<script>redireccionar_action('empresa/modificar/?id=$emp->id');</script>";
							  
						}else{
							 
							 Flash::error("Error: No se pudo Actualizar el registro");	
							 /*echo "<script>redireccionar_action('menu');</script>";	*/
									
						}
				  }
			  }
			
		}
  
    }
?>