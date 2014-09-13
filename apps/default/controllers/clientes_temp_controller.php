<?php

	class Clientes_tempController extends ApplicationController {
	
		
	
	
		public function initialize() {
		   //$this->setTemplateAfter("a_bit_boxy");
		   
		   // $this->setTemplateAfter("menu_azul");
		   	//$temp=$this->Admin->findFirst(" id = '".Session::get("tipo_usuario")."' ")->plantilla;
			$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
		}
		
		public function cargar_archivoAction(){
		
		}
		
		public function buscar_archivosAction(){
		
			$this->setTemplateAfter("default");
		
		}
		
		public function buscar_uploadAction(){
		
				$this->setResponse("ajax");
		
		}
		
		public function uploadAction(){
		
			$this->setResponse("ajax");
		
		}
		
		public function procesar_clientes_tempAction(){
	
		}
		
		public function buscarAction(){
		
		}
		
		public function find_buscarAction(){
		
			$this->setResponse('view');
					
		}
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		public function detalle_buscarAction(){
				
				$this->setResponse('view');
				
				//$nom1 = $_REQUEST['nom1'];
				//$nom2 = $_REQUEST['nom2'];
				//$ape1 = $_REQUEST['ape1'];
				//$ape2 = $_REQUEST['ape2'];
				
				
				$sql = ' 1=1 ';
				
				if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and nit like '%".$_REQUEST['nit']."%'";                   } }
				if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
				$ordenar = $_REQUEST['ordenar'];
				
				//if($nom1!=''){ $sql .= " and nombre1 like '%$nom1%' "; }
				//if($nom2!=''){ $sql .= " and nombre2 like '%$nom2%' "; }
				//if($ape1!=''){ $sql .= " and apellido1 like '%$ape1%' "; }
				//if($ape2!=''){ $sql .= " and apellido2 like '%$ape2%' "; }
				
				
				$clientes = $this->ClientesTemp->find(" $sql ","order: $ordenar");
          		$this->setParamToView("clientes", $clientes);
		
		}
		
		public function modificarAction(){
			//$this->setResponse("ajax");
			$id= $_REQUEST['id'];
			
			if( isset($id) ){
					
				$id_clientes =$id;
						
				$cli = $this->ClientesTemp->findFirst(" id = '$id_clientes' ");
				$dpto= $this->Departamentos->findFirst("id = '$cli->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$cli->municipios_id'");
							
				Tag::displayTo("id",$cli->id);
				Tag::displayTo("nit2",$cli->nit);
				Tag::displayTo("nombre12",$cli->nombre1);
				Tag::displayTo("nombre22",$cli->nombre2);
				Tag::displayTo("apellido12",$cli->apellido1);
				Tag::displayTo("apellido22",$cli->apellido2);
				Tag::displayTo("razon_social2",$cli->razon_social);
				Tag::displayTo("direccion",$cli->direccion);
				Tag::displayTo("telefono",$cli->telefono);
				Tag::displayTo("celular",$cli->celular);
				Tag::displayTo("clientes",$cli->referencia_id);
				//Tag::displayTo("departamentos",$cli->departamentos_id);
				//Tag::displayTo("departamento",$dpto->departamento);
				//Tag::displayTo("municipios",$cli->municipios_id);
				//Tag::displayTo("municipio",$mpio->municipio);
				
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar el cliente para modificar.");
				}
		}
		
		
		
		public function eliminar_clientesAction(){
			
			$this->setResponse("ajax");

			$id_cliente = $_REQUEST["id_cliente"];
				
			$clientes_temp = $this->ClientesTemp->findFirst(" id = '$id_cliente'");
				
			if($clientes_temp->delete()){
	
				Flash::success("Se elimino correctamente el registro");
					
			}else{
	
				Flash::error("Error: No se pudo borrar registro");	
			}
			
					
	    }
		
		public function eliminarAction(){
			//$this->setResponse("ajax");
			
			$id= $_REQUEST['id'];
			
			if( isset($id) ){
				
				$id_clientes = $id;
		
				$cli  = $this->ClientesTemp->findFirst(" id = '$id_clientes' ");
				$dpto= $this->Departamentos->findFirst("id = '$cli->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$cli->municipios_id'");
				
				Tag::displayTo("id",$cli->id);
				Tag::displayTo("nit2",$cli->nit);
				Tag::displayTo("nombre12",$cli->nombre1);
				Tag::displayTo("nombre22",$cli->nombre2);
				Tag::displayTo("apellido12",$cli->apellido1);
				Tag::displayTo("apellido22",$cli->apellido2);
				Tag::displayTo("razon_social2",$cli->razon_social);
				Tag::displayTo("direccion",$cli->direccion);
				Tag::displayTo("telefono",$cli->telefono);
				Tag::displayTo("celular",$cli->celular);
				Tag::displayTo("clientes",$cli->referencia_id);
							
			}else{
					Flash::error("Parametro incorrecto, vuelva a buscar ".strtoupper(Router::getController())." para modificarlo.");
				}
		}
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$cli  = new ClientesTemp();
			
				
				if($cli->delete(" id = '".$_REQUEST["id"]."' ")){
					
					Flash::success(strtoupper(Router::getController())." Eliminada Satisfactoriamente");
					echo "<script>redireccionar_action('clientes/buscar/?opcion=eliminar');";
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($cli->getMessages() as $message){
							  Flash::error("Error Eliminando Clientes ".$message->getMessage());
					}	  
					
				}
					
	    }
	   /****
			actualizarAction metodo en el cual se actualizaran
			los datos del cliente
		***/
		public function updateAction(){
			
			$this->setResponse("ajax");
			$cli= new ClientesTemp();
			$emp  = new Empresa();
			//cargamos el objeto mediantes los metodos setters
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			$sw=0;
			$sw1=0;
			$sw2=0;
		
			//cargamos el objeto mediantes los metodos setters
			
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			
			/*Almaceno en una variable el id del cliente, para luego compararlo con la referencia*/
			$ref=$this->ClientesTemp->findFirst("nit = '".$this->getPostParam("nit2")."'");
								
			if(($sw==1)&&($sw1==1)&&($sw2==1)){
				
				Flash::error("Cédula ya existe en nuestro sistema.");
				
			}else{
			
			
			/*Valido que la referencia no sea el mismo cliente*/
			if($ref->id!=$this->getPostParam("clientes_id")){
				
				$sw1=0;
				
				
			}else{
				
				$sw1=1;
				
			}
			
			if($this->Clientes->count("id = '".$this->getPostParam("clientes_id")."'")>0){
				
				$sw2=0;
				
			}else{
				
				$sw2=1;
			}
			
			if($sw==1){
				
				Flash::error("Cédula ya existe en nuestro sistema.");
				
			}
					
			if($sw1==1){
				
				Flash::error("Por favor cambie de referencia, está apuntando al mismo cliente.");
				
			}
			
			if($sw2==1){
				
				Flash::error("La referencia ingresada no existe en nuestro sistema.");
				
			}
			
			//Flash::error($sw1);
								
			if(($sw==0)&&($sw1==0)&&($sw2==0)){
				
				$cli = $this->ClientesTemp->findFirst(" id = '".$_REQUEST["id"]."' ");

				$cli->nit = $this->getPostParam("nit2");
				$cli->nombre1 = $this->getPostParam("nombre12");
				$cli->nombre2 = $this->getPostParam("nombre22");
				$cli->apellido1 = $this->getPostParam("apellido12");
				$cli->apellido2 = $this->getPostParam("apellido22");
				$cli->razon_social = $this->getPostParam("razon_social2");
				$cli->direccion = $this->getPostParam("direccion");
				$cli->telefono = $this->getPostParam("telefono");
				$cli->celular = $this->getPostParam("celular");
				$cli->referencia_id = $this->getPostParam("clientes_id");
				//$cli->departamentos_id = $this->getPostParam("departamentos_id");
				//$cli->municipios_id = $this->getPostParam("municipios_id");				
				$cli->departamentos_id = 23;
				$cli->municipios_id = 108;				
					
	
				if($cli->save()){
						Flash::success("Se insertó correctamente el registro");
						//unlink("public/img/upload/".$cli->foto);
						echo "<script>redireccionar_action('clientes_temp/modificar/?id=$cli->id');</script>";
						
					}else{
						Flash::error("Error: No se pudo insertar registro");	
						
						foreach($cli->getMessages() as $message){
								  Flash::error($message->getMessage());
						}
					 }
			     }
			
			
			}
			
		}
		
		
   }
?>