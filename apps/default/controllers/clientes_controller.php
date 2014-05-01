<?php

	class ClientesController extends ApplicationController {
	
		
	
	
		public function initialize() {
		   //$this->setTemplateAfter("a_bit_boxy");
		   
		   // $this->setTemplateAfter("menu_azul");
		   	//$temp=$this->Admin->findFirst(" id = '".Session::get("tipo_usuario")."' ")->plantilla;
			$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
		}
				
				
		public function traer_municipiosAction($id){
		      
			$this->setResponse('ajax');  //ajax o view da los mismo
			$mun = $this->Municipios->find("departamentos_id='$id'");
			$this->setParamToView("municipios",$mun);
			  
		}
		
		public function opcionesAction(){
					
        }
		/****
			agregarAction vista en la cual se mostrara el 
			formulario para agregar clientes
		***/
		public function agregarAction(){
					
        }
		
		public function imagenAction(){
			$this->setResponse("ajax");
		}
		
		/****
			addAction metodo en la cual se insertarán
			los datos del cliente
		***/
		public function addAction(){
			//primero instanciamos clase clientes
			$this->setResponse('view');
			$cli  = new Clientes();
			$hue  = new Somhue();
			$emp  = new Empresa();
			//cargamos el objeto mediantes los metodos setters
			
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			
			$sw = 0;
			if($this->Clientes->count("nit = '".$this->getPostParam("nit")."'")>0){
				Flash::error("DOCUMENTO DE IDENTIFICACION (NIT/CEDULA) YA EXISTE EN NUESTRA BASE DE DATOS");
				$sw=1;
			}
			
			if($emp->huella=='0'){
			
				if($this->Somhue->count("nit = '".$this->getPostParam("nit")."'")==0){
					$sw=2;
				 }
				 
			}
			
			
			if($sw==1){
				
				Flash::error("DOCUMENTO DE IDENTIFICACION (NIT/CEDULA) YA EXISTE EN NUESTRA BASE DE DATOS");
			
			//sw para restringuir al usuario crear un cliente hasta que no capture la huella	
			}elseif($sw==2){
				
				Flash::error("DEBE CAPTURAR LA HUELLA ANTES DE CREAR AL CLIENTE");
				
			}else{
			
			//$imagen=explode("upload/",$_REQUEST['imagen']);
					
			if($sw==0){
				$sw=3;
				$cli->id = '0';
				$cli->nit = $this->getPostParam("nit");
				$cli->nombre1 = $this->getPostParam("nombre1");
				$cli->nombre2 = $this->getPostParam("nombre2");
				$cli->apellido1 = $this->getPostParam("apellido1");
				$cli->apellido2 = $this->getPostParam("apellido2");
				//$cli->foto = $imagen[1];
				$cli->razon_social = $this->getPostParam("razon_social");
				$cli->direccion_casa = $this->getPostParam("direccion_casa");
				$cli->direccion_oficina = $this->getPostParam("direccion_oficina");
				$cli->telefono1 = $this->getPostParam("telefono1");
				$cli->telefono2 = $this->getPostParam("telefono2");
				$cli->sueldo = $this->getPostParam("sueldo");
				$cli->otros_ingresos = $this->getPostParam("otros_ingresos");
				$cli->eps = $this->getPostParam("eps");
				$cli->casa = $this->getPostParam("casa");
				$cli->vehiculos = $this->getPostParam("vehiculos");
				$cli->celular = $this->getPostParam("celular");
				$cli->departamentos_id = $this->getPostParam("departamentos_id");
				$cli->municipios_id = $this->getPostParam("municipios_id");				
				//$cli->activo = $this->getPostParam("activo");
				$cli->correo = $this->getPostParam("email");
				$cli->web = $this->getPostParam("web");
				$cli->activo = 0;
				
				if($emp->foto=='0'){
					
					$detalles_item = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$_POST["foto"])));
					Flash::notice($detalles_item);
								
					if(json_decode($detalles_item)){
						
						Flash::success("Json Correcto");
						$fotos_url = json_decode($detalles_item);
						$cli->url = $fotos_url->filename;
						Flash::notice($fotos_url->filename);
						$tipo = explode(".",$cli->url);
						//este es el archivo temporal
						$imagen_temporal  = $cli->url;
						Flash::notice($imagen_temporal);
						//este es el tipo de archivo
						$tipo = $tipo[1];
						Flash::notice($tipo);
						//leer el archivo temporal en binario
						$fp     = fopen($imagen_temporal, 'rb');
						$data = fread($fp, filesize($imagen_temporal));
						$data = base64_encode($data);
						fclose($fp); 
						
						//print $data;
						
						//escapar los caracteres
						//$data = mysql_real_escape_string($data);
						//print("Bla".$data);
						$cli->foto = $data;
						
					}else{
						echo $deshabilitar;
						Flash::error("Error json");
						$sw=4;
						//$msg_error.=Flash::error("Error json"); 
						//$transaction->rollback();
						
					}
					
				}
					
				if($sw==3){
					
					if($cli->save()){
						Flash::success("Se insertó correctamente el registro");
						//unlink("public/img/upload/".$cli->foto);
						echo "<script>quitar_mensajes();</script>";
						
					}else{
						Flash::error("Error: No se pudo insertar registro");	
						
						foreach($cli->getMessages() as $message){
								  Flash::error($message->getMessage());
							}
					}
				}else{
					    
						Flash::error("Error: Debe tomar la foto");	
					
				}
			
			  }//fin  si todo bien
			}
			
	    }
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		
		/****
			mostrarAction vista en la cual se mostrarán
			los datos del cliente
		***/
		public function showAction($id){
          
            $clientes = $this->Clientes->find("id='$id'");
            $this->setParamToView("clientes", $clientes);
	
		}
		
		public function browseAction(){
			$this->setResponse("ajax");
			
		}
		
		public function uploadAction(){
			$this->setResponse("ajax");
		}
		/****
			modificarAction vista en la cual se mostrarán
			los datos del cliente
		***/
		public function modificarAction(){
			//$this->setResponse("ajax");
			$id= $_REQUEST['id'];
			
			if( isset($id) ){
					
				$id_clientes =$id;
						
				$cli = $this->Clientes->findFirst(" id = '$id_clientes' ");
				$dpto= $this->Departamentos->findFirst("id = '$cli->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$cli->municipios_id'");
				$nit_huella= $this->Somhue->findFirst("nit = '$cli->nit'");
				
				if($nit_huella==""){
				
				Tag::displayTo("id",$cli->id);
				Tag::displayTo("nit",$cli->nit);
				Tag::displayTo("nit_huella",$cli->nit);
				Tag::displayTo("nombre1",$cli->nombre1);
				Tag::displayTo("nombre2",$cli->nombre2);
				Tag::displayTo("apellido1",$cli->apellido1);
				Tag::displayTo("apellido2",$cli->apellido2);
				Tag::displayTo("razon_social",$cli->razon_social);
				Tag::displayTo("direccion_casa",$cli->direccion_casa);
				Tag::displayTo("direccion_oficina",$cli->direccion_oficina);
				Tag::displayTo("telefono1",$cli->telefono1);
				Tag::displayTo("telefono2",$cli->telefono2);
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
				Tag::displayTo("web",$cli->web);
				
				}else{
					
				Tag::displayTo("id",$cli->id);
				Tag::displayTo("nit",$cli->nit);
				Tag::displayTo("nit_huella",$nit_huella->nit);
				Tag::displayTo("nombre1",$cli->nombre1);
				Tag::displayTo("nombre2",$cli->nombre2);
				Tag::displayTo("apellido1",$cli->apellido1);
				Tag::displayTo("apellido2",$cli->apellido2);
				Tag::displayTo("razon_social",$cli->razon_social);
				Tag::displayTo("direccion_casa",$cli->direccion_casa);
				Tag::displayTo("direccion_oficina",$cli->direccion_oficina);
				Tag::displayTo("telefono1",$cli->telefono1);
				Tag::displayTo("telefono2",$cli->telefono2);
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
				Tag::displayTo("web",$cli->web);
				
				}
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Ies para modificar.");
				}
		}
		
		public function eliminarAction(){
			//$this->setResponse("ajax");
			
			$id= $_REQUEST['id'];
			
			if( isset($id) ){
				
				$id_clientes = $id;
		
				$cli  = $this->Clientes->findFirst(" id = '$id_clientes' ");
				$dpto= $this->Departamentos->findFirst("id = '$cli->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$cli->municipios_id'");
				
				Tag::displayTo("id",$cli->id);
				Tag::displayTo("nit",$cli->nit);
				Tag::displayTo("nombre1",$cli->nombre1);
				Tag::displayTo("nombre2",$cli->nombre2);
				Tag::displayTo("apellido1",$cli->apellido1);
				Tag::displayTo("apellido2",$cli->apellido2);
				Tag::displayTo("razon_social",$cli->razon_social);
				Tag::displayTo("direccion_casa",$cli->direccion_casa);
				Tag::displayTo("direccion_oficina",$cli->direccion_oficina);
				Tag::displayTo("telefono1",$cli->telefono1);
				Tag::displayTo("telefono2",$cli->telefono2);
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
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar ".strtoupper(Router::getController())." para modificar.");
				}
		}
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$cli  = new Clientes();
			
				
				if($cli->delete(" id = '".$_REQUEST["id"]."' ")){
					
					Flash::success(strtoupper(Router::getController())." Eliminada Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($cli->getMessages() as $message){
							  Flash::error("Error Eliminando Ies ".$message->getMessage());
					}	  
					
				}
					
	    }
	   /****
			actualizarAction metodo en el cual se actualizaran
			los datos del cliente
		***/
		public function updateAction(){
			
			$this->setResponse("ajax");
			$cli= new Clientes();
			$hue= new Somhue();
			$emp  = new Empresa();
			//cargamos el objeto mediantes los metodos setters
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			$sw=0;
			
			
			if($emp->huella=='0'){
				
				if($this->Somhue->count(" nit = '".$_REQUEST["nit_huella"]."' ")==0){
					
				$sw=5;			
														
				}
				
			}
			
			if($sw==5){
				
				Flash::error('Error: Debe crear la huella, es de caracter obligatorio');
				
			}
			
			if($sw==1){
				
				Flash::error("Error: Clientes ya existe!!!");
			
			}else{
				
				if($sw==0){
						$sw=3;
						//verificamos si el campo foto y huella no están vacios, esto con el objetivo de que
						//el campo imagen no se sobrescriba con un dato vacio
						if(($this->getPostParam("foto")!="")){
					
						$cli = $this->Clientes->findFirst(" id = '".$_REQUEST["id"]."' ");
												
						$cli->nit = $this->getPostParam("nit");
						$cli->nombre1 = $this->getPostParam("nombre1");
						$cli->nombre2 = $this->getPostParam("nombre2");
						$cli->apellido1 = $this->getPostParam("apellido1");
						$cli->apellido2 = $this->getPostParam("apellido2");
						$cli->razon_social = $this->getPostParam("razon_social");
						$cli->direccion_casa = $this->getPostParam("direccion_casa");
						$cli->direccion_oficina = $this->getPostParam("direccion_oficina");
						$cli->telefono1 = $this->getPostParam("telefono1");
						$cli->telefono2 = $this->getPostParam("telefono2");
						$cli->sueldo = $this->getPostParam("sueldo");
						$cli->otros_ingresos = $this->getPostParam("otros_ingresos");
						$cli->eps = $this->getPostParam("eps");
						$cli->casa = $this->getPostParam("casa");
						$cli->vehiculos = $this->getPostParam("vehiculos");
						$cli->celular = $this->getPostParam("celular");
						$cli->departamentos_id = $this->getPostParam("departamentos_id");
						$cli->municipios_id = $this->getPostParam("municipios_id");
						$cli->correo = $this->getPostParam("email");
						$cli->web = $this->getPostParam("web");
						$cli->activo = 0;
																
						$detalles_item = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$_POST["foto"])));
						Flash::notice($detalles_item);
									
						if(json_decode($detalles_item)){
							
							Flash::success("Json Correcto");
							$fotos_url = json_decode($detalles_item);
							$cli->url = $fotos_url->filename;
							Flash::notice($fotos_url->filename);
							$tipo = explode(".",$cli->url);
							//este es el archivo temporal
							$imagen_temporal  = $cli->url;
							Flash::notice($imagen_temporal);
							//este es el tipo de archivo
							$tipo = $tipo[1];
							Flash::notice($tipo);
							//leer el archivo temporal en binario
							$fp   = fopen($imagen_temporal, 'rb');
							$data = fread($fp, filesize($imagen_temporal));
							$data = base64_encode($data);
							fclose($fp); 
							//Se codifica la imagen en base64 antes del almacenarla en el campo imagen de tipo BLOB
							$cli->foto = $data;
							
						}else{
							
							echo $deshabilitar;
							Flash::error("Error json");
							$sw=4;
							//$msg_error.=Flash::error("Error json"); 
							//$transaction->rollback();
							
						}
												
						
						
						//Se hace con el objetivo de actualizar el NIT/Cédula en la tabla somhue
						//de manera simultanea
/*						$hue->nit = $this->getPostParam("nit");
						
						
						if($hue->update()){
							 
							  Flash::success("Se Actualizo correctamente el registro");
							  
							  echo "<script>quitar_mensajes();</script>";
							  
						}else{
							 
							  Flash::success("Error: No se pudo Actualizar el registro");	
							
									
						}*/
						
						if($sw==3){
							if($cli->save()){
								  Flash::success("Se Actualizo correctamente el registro");
															 
								  echo "<script>quitar_mensajes();</script>";
								  echo "<script>redireccionar_action('clientes/modificar/?id=$cli->id');</script>";
								  
							}else{
								 Flash::success("Error: No se pudo Actualizar el registro");	
								
										
							}
						}else{
							
							Flash::error("Error: Debe tomar la foto");
						}

						
					 }else{
						 
								
						$cli = $this->Clientes->findFirst(" id = '".$_REQUEST["id"]."' ");
						
						
						$cli->nit = $this->getPostParam("nit");
						$cli->nombre1 = $this->getPostParam("nombre1");
						$cli->nombre2 = $this->getPostParam("nombre2");
						$cli->apellido1 = $this->getPostParam("apellido1");
						$cli->apellido2 = $this->getPostParam("apellido2");
						$cli->razon_social = $this->getPostParam("razon_social");
						$cli->direccion_casa = $this->getPostParam("direccion_casa");
						$cli->direccion_oficina = $this->getPostParam("direccion_oficina");
						$cli->telefono1 = $this->getPostParam("telefono1");
						$cli->telefono2 = $this->getPostParam("telefono2");
						$cli->sueldo = $this->getPostParam("sueldo");
						$cli->otros_ingresos = $this->getPostParam("otros_ingresos");
						$cli->eps = $this->getPostParam("eps");
						$cli->casa = $this->getPostParam("casa");
						$cli->vehiculos = $this->getPostParam("vehiculos");
						$cli->celular = $this->getPostParam("celular");
						$cli->departamentos_id = $this->getPostParam("departamentos_id");
						$cli->municipios_id = $this->getPostParam("municipios_id");
						$cli->correo = $this->getPostParam("email");
						$cli->web = $this->getPostParam("web");
						$cli->activo = 0;
						
						//Se hace con el objetivo de actualizar el NIT/Cédula en la tabla somhue
						//de manera simultanea
						if($emp->huella==0){
							
						$hue = $this->Somhue->findFirst(" nit = '".$_REQUEST["nit_huella"]."' ");
						
						$hue->nit = $cli->nit;
						
						
						if($hue->update()){
							 
							  Flash::success("Se Actualizo correctamente el registro");
							  
							  echo "<script>quitar_mensajes();</script>";
							  
						}else{
							 
							  Flash::success("Error: No se pudo Actualizar el registro");	
							
									
						}
					 }
					 if($sw==3){
							if($cli->save()){
								  Flash::success("Se Actualizo correctamente el registro");
															 
								  echo "<script>quitar_mensajes();</script>";
								  echo "<script>redireccionar_action('clientes/modificar/?id=$cli->id');</script>";
								  
							}else{
								 Flash::success("Error: No se pudo Actualizar el registro");	
								
										
							}
						}else{
							
							Flash::error("Error: Debe tomar la foto");
						}
						
												 
					 }
				  }
			  }
			
		}
		
		public function clientes_con_equipoAction(){
		
			
			$sql = '';

			if( isset( $_REQUEST['empresa_id']   )==true ) { if( $_REQUEST['empresa_id'] != ''   ) { $sql .= " and {#SaldoRemisiones}.empresa_id like '%".$_REQUEST['empresa_id']."%'";                   } }	
			if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and {#Clientes}.nit like '".$_REQUEST['nit']."%'";                   } }
			if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and {#Clientes}.razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
			
			
			$query = new ActiveRecordJoin(array(
						"entities" => array("Clientes","SaldoRemisiones"),
						"groupFields" => array(
							"{#Clientes}.razon_social",
							"{#Clientes}.id",
							"{#Clientes}.nit",
							"{#SaldoRemisiones}.empresa_id"
						),
						"conditions" => "{#SaldoRemisiones}.anulado = 0 and {#Clientes}.activo = 0 and  ( {#SaldoRemisiones}.cantidad - {#SaldoRemisiones}.devueltos ) <> 0 $sql "
						
				));
				
				$this->setParamToView("detalles", $query->getResultSet());
				$this->setParamToView("sql", $query->getSqlQuery());
				//Flash::error($query->getSqlQuery());
		
		}
		
		
		public function clientes_sin_equipoAction(){
		
			$sql = '';

			if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and c1.nit like '".$_REQUEST['nit']."%'";                   } }
			if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and c1.razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
			
		
			$query = new ActiveRecordJoin(array(
				"entities"=> array("Clientes","SaldoRemisiones"),
				"groupFields"=> array(
							"{#Clientes}.id"
				),
				"conditions" => " {#SaldoRemisiones}.anulado = 0 and {#Clientes}.activo = 0 and ( {#SaldoRemisiones}.cantidad - {#SaldoRemisiones}.devueltos ) <> 0  "
			));
			
			$query2 = $query->getSQLQuery();
			$sql = "SELECT c1.* FROM clientes c1 WHERE c1.id not in ($query2) $sql order by c1.razon_social";
	
			$this->setParamToView("detalles", $this->Clientes->findAllBySql($sql) );
			//$this->setParamToView("sql", $query->getSqlQuery());
		
		}
		
		
		public function buscarAction(){
		
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
				
				
				$clientes = $this->Clientes->find(" $sql ","order: $ordenar");
          		$this->setParamToView("clientes", $clientes);
		
		}
		
		
		public function trae_clientesAction(){
			
			//$this->setResponse('ajax');
			$this->setTemplateAfter("default");

		}
		
		
		public function trae_clientes_detallesAction(){
			
			$this->setResponse('view');
			
			$sql = "select * from clientes where 1=1 and activo = 0 ";
			
			if( isset( $_REQUEST['codigo']       )==true ) { if( $_REQUEST['codigo'] != ''       ) { $sql .= " and id like '%".$_REQUEST['codigo']."%'";                 } }
			if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and nit like '%".$_REQUEST['nit']."%'";                   } }
			if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
			//if( isset( $_REQUEST['nombre1']      )==true ) { if( $_REQUEST['nombre1'] != ''      ) { $sql .= " and nombre1 like '%".$_REQUEST['nombre1']."%'";           } }
			//if( isset( $_REQUEST['nombre2']      )==true ) { if( $_REQUEST['nombre2'] != ''      ) { $sql .= " and nombre2 like '%".$_REQUEST['nombre2']."%'";           } }
			//if( isset( $_REQUEST['apellido1']    )==true ) { if( $_REQUEST['apellido1'] != ''    ) { $sql .= " and apellido1 like '%".$_REQUEST['apellido1']."%'";       } }
			//if( isset( $_REQUEST['apellido2']    )==true ) { if( $_REQUEST['apellido2'] != ''    ) { $sql .= " and apellido2 like '%".$_REQUEST['apellido2']."%'";       } }
			if( isset( $_REQUEST['orderby']      )==true ) { if( $_REQUEST['orderby'] != ''      ) { $sql .= " order by ".$_REQUEST['orderby']." ";       } }
			
			$clientes = $this->Clientes->findAllBySql($sql);
			//Flash::error($sql);
			$this->setParamToView('clientes',$clientes);
		
		}
		
		
		
		public function agregar_clientesAction(){
		
			//$this->set_response('view');
			$this->setTemplateAfter("default");
		
		}
		
				
		/****
			addAction metodo en la cual se insertarán
			los datos del cliente
		***/
		public function add_clientesAction(){
			//primero instanciamos clase clientes
			$this->setResponse('view');
			$cli  = new Clientes();
			//cargamos el objeto mediantes los metodos setters
			
			$sw = 0;
			if($this->Clientes->count("nit = '".$this->getPostParam("nit")."'")>0){
				Flash::error("DOCUMENTO DE IDENTIFICACION (NIT/CEDULA) YA SE EXISTE EN NUESTRA BASE DE DATOS");
				$sw=1;
			}
			
			if($sw==0){
				$cli->id = '0';
				$cli->nit = $this->getPostParam("nit");
				//$cli->nombre1 = $this->getPostParam("pn");
				//$cli->nombre2 = $this->getPostParam("sn");
				//$cli->apellido1 = $this->getPostParam("pa");
				//$cli->apellido2 = $this->getPostParam("sa");
				$cli->nombre1 = '';
				$cli->nombre2 = '';
				$cli->apellido1 = '';
				$cli->apellido2 = '';
				$cli->razon_social = $this->getPostParam("rs");
				$cli->direccion_casa = $this->getPostParam("dc");
				$cli->direccion_oficina = $this->getPostParam("dof");
				$cli->telefono1 = $this->getPostParam("tf1");
				$cli->telefono2 = $this->getPostParam("tf2");
				$cli->celular = $this->getPostParam("celular");
				$cli->departamentos_id = $this->getPostParam("tmp_dptos");
				$cli->municipios_id = $this->getPostParam("tmp_municipios");
				$cli->activo = $this->getPostParam("activo");
				$cli->correo = $this->getPostParam("email");
				$cli->web = $this->getPostParam("web");
				$cli->activo = 0;
						
				if($cli->save()){
					Flash::success("Se insertó correctamente el registro");
					print("<script>escoger_cliente('$cli->id','$cli->razon_social','$cli->telefono1','$cli->telefono2');Dialog.okCallback();</script>");
				}else{
					Flash::error("Error: No se pudo insertar registro");	
					foreach($cli->getMessages() as $message){
							  Flash::error($message->getMessage());
						}
				}
			
			}//fin  si todo bien
			
	    }
		
		
		public function verificarAction($id){
			
			$this->setResponse('view');
			
			$cli = new Clientes();
			$cli->findFirst("nit = '$id'");
			echo "<script>";
			echo "$('clientes_id').value='$cli->id';";
			echo "$('nombre_cliente').value='$cli->razon_social';";
			if($cli->id==''){ echo "alert('cliente no encontrado o no existe');"; }
			echo "</script>";
			
			//$this->setTemplateAfter("default");

		}
		
		
		
		/*CONSULTA DE CLIENTES CON FACTURAS AGREGADAS*/
		
		public function trae_clientes_hfacturasAction(){
			
			//$this->setResponse('ajax');
			$this->setTemplateAfter("default");
			

		}
		
		
		public function trae_clientes_hfacturas_detallesAction(){
			
			$this->setResponse('view');
			
			//$sql = "select * from clientes where 1=1 ";
			$sql = '';
			if( isset( $_REQUEST['codigo']       )==true ) { if( $_REQUEST['codigo'] != ''       ) { $sql .= " and id like '%".$_REQUEST['codigo']."%'";                 } }
			if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and nit like '%".$_REQUEST['nit']."%'";                   } }
			if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
		//	if( isset( $_REQUEST['orderby']      )==true ) { if( $_REQUEST['orderby'] != ''      ) { $sql .= " order by ".$_REQUEST['orderby']." ";       } }
		
			
			$query = new ActiveRecordJoin(array(
						"entities" => array("Factura","Clientes"),
					 	"groupFields"=>array(
										"{#Clientes}.id",
										"{#Clientes}.nit",
										"{#Clientes}.razon_social"
										),
						"conditions"=>(" 1=1 and activo = 0 $sql ")
				));
				//Flash::error($query->getSqlQuery());
			 $this->setParamToView('clientes',$query->getResultSet());
			
			
			//$clientes = $this->Clientes->findAllBySql($sql);
			//Flash::error($sql);
			//$this->setParamToView('clientes',$clientes);
		
		}
		
		/* FIN CONSULTA DE CLIENTES CON FACTURAS AGREGADAS*/
		
		
	  public function validarAction($id,$opcion){

			$this->setResponse("view");
			
			$sw=0;
			$cli = new Clientes();
			if( $this->Clientes->count(" 1=1 and (id = '$id' or nit ='$id') ") > 0 ){
				$cli = $this->Clientes->findFirst(" 1=1 and (id = '$id' or nit ='$id')  ");
				echo "<script>jQuery(\"#$opcion\").val(\"\");jQuery(\"#".Router::getController()."_id\").val(\"$cli->id\");jQuery(\"#clientes\").val(\"$cli->razon_social\");</script>";
			}else{
				Flash::error("No se encontró cliente");
				echo "<script>jQuery(\"#$opcion\").val(\"\");</script>";
				echo "<script>jQuery(\"#".Router::getController()."_id\").val(\"\");</script>";
				}
			//public $scaffold = false;
		}
		
		public function find_buscarAction(){
		
			$this->setResponse('view');
					
		}
		
		public function print_jaspertAction(){
				$this->setResponse("view");
	
		}
		
		
		
   }
?>