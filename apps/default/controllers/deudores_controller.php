<?php

	class DeudoresController extends ApplicationController {
	
		
	
	
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
			$deu  = new Deudores();
			$cli  = new Clientes();
			$hue  = new Somhue();
			$emp  = new Empresa();
			//cargamos el objeto mediantes los metodos setters
			
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			//cargamos el objeto mediantes los metodos setters
			$sw = 0;
						
			if($this->Deudores->count("nit = '".$this->getPostParam("nit")."'")>0){
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
				
			}elseif($sw==2){
				
				Flash::error("DEBE CAPTURAR LA HUELLA ANTES DE CREAR AL DEUDOR");
				
			}else{
			
			if($sw==0){
				$sw=3;
				$deu->id = '0';
				$deu->nit = $this->getPostParam("nit");
				$deu->nombre1 = $this->getPostParam("nombre1");
				$deu->nombre2 = $this->getPostParam("nombre2");
				$deu->apellido1 = $this->getPostParam("apellido1");
				$deu->apellido2 = $this->getPostParam("apellido2");
				$deu->razon_social = $this->getPostParam("razon_social");
				$deu->direccion_casa = $this->getPostParam("direccion_casa");
				$deu->direccion_oficina = $this->getPostParam("direccion_oficina");
				$deu->telefono1 = $this->getPostParam("telefono1");
				$deu->telefono2 = $this->getPostParam("telefono2");
				$deu->sueldo = $this->getPostParam("sueldo");
				$deu->otros_ingresos = $this->getPostParam("otros_ingresos");
				$deu->eps = $this->getPostParam("eps");
				$deu->casa = $this->getPostParam("casa");
				$deu->vehiculos = $this->getPostParam("vehiculos");
				$deu->celular = $this->getPostParam("celular");
				$deu->departamentos_id = $this->getPostParam("departamentos_id");
				$deu->municipios_id = $this->getPostParam("municipios_id");
				//$cli->activo = $this->getPostParam("activo");
				$deu->correo = $this->getPostParam("email");
				$deu->web = $this->getPostParam("web");
				$deu->activo = 0;
				
				
				$detalles_item = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$_POST["foto"])));
				Flash::notice("Detalles_item:".$detalles_item);
				
				if(json_decode($detalles_item)){
					
					Flash::success("Json Correcto");
					$fotos_url = json_decode($detalles_item);
					$deu->url = $fotos_url->filename;
					Flash::notice($fotos_url->filename);
					$tipo = explode(".",$deu->url);
					//este es el archivo temporal
					$imagen_temporal  = $deu->url;
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
					$deu->foto = $data;
					
				}else{
					echo $deshabilitar;
					Flash::error("Error json");
					$sw=4;
					//$msg_error.=Flash::error("Error json"); 
					//$transaction->rollback();
					
				}
				
				if($sw==3){		
					if($deu->save()){
						Flash::success("Se insertó correctamente el registro");
						//unlink("public/img/upload/".$cli->foto);
						echo "<script>quitar_mensajes();</script>";
						
					}else{
						
						Flash::error("Error: No se pudo insertar registro");	
						foreach($deu->getMessages() as $message){
								  Flash::error($message->getMessage());
							}
					   }
			       }else{
						
						Flash::error("Error: Debe tomar la foto");
				
				 }
				 
			   }
			
			}//fin  si todo bien
			
	    }
		
		public function find_detalle_buscarAction(){
			$this->setResponse("ajax");
		}
		
		/****
			mostrarAction vista en la cual se mostrarán
			los datos del cliente
		***/
		public function showAction($id){
          
            $deudores = $this->Deudores->find("id='$id'");
            $this->setParamToView("deudores", $deudores);
	
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
					
				$id_deudores = $id;
		
				$deu = $this->Deudores->findFirst(" id = '$id_deudores' ");
				$dpto= $this->Departamentos->findFirst("id = '$deu->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$deu->municipios_id'");
				
				Tag::displayTo("id",$deu->id);
				Tag::displayTo("nit",$deu->nit);
				Tag::displayTo("nit_huella",$deu->nit);
				Tag::displayTo("nit",$deu->nit);
				Tag::displayTo("nombre1",$deu->nombre1);
				Tag::displayTo("nombre2",$deu->nombre2);
				Tag::displayTo("apellido1",$deu->apellido1);
				Tag::displayTo("apellido2",$deu->apellido2);
				Tag::displayTo("razon_social",$deu->razon_social);
				Tag::displayTo("direccion_casa",$deu->direccion_casa);
				Tag::displayTo("direccion_oficina",$deu->direccion_oficina);
				Tag::displayTo("telefono1",$deu->telefono1);
				Tag::displayTo("telefono2",$deu->telefono2);
				Tag::displayTo("sueldo",$deu->sueldo);
				Tag::displayTo("otros_ingresos",$deu->otros_ingresos);
				Tag::displayTo("eps",$deu->eps);
				Tag::displayTo("casa",$deu->casa);
				Tag::displayTo("vehiculos",$deu->vehiculos);
				Tag::displayTo("celular",$deu->celular);
				Tag::displayTo("departamentos",$deu->departamentos_id);
				Tag::displayTo("departamento",$dpto->departamento);
				Tag::displayTo("municipios",$deu->municipios_id);
				Tag::displayTo("municipio",$mpio->municipio);
				Tag::displayTo("email",$deu->correo);
				Tag::displayTo("web",$deu->web);
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar Deudor para modificar.");
				}
		}
		
		public function eliminarAction($id){
			//$this->setResponse("ajax");
			if( isset($id) ){
				
				$id_deudores = $id;
		
				$deu  = $this->Deudores->findFirst(" id = '$id_deudores' ");
				$dpto= $this->Departamentos->findFirst("id = '$cli->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$cli->municipios_id'");
				
				Tag::displayTo("id",$deu->id);
				Tag::displayTo("nit",$deu->nit);
				Tag::displayTo("nit_huella",$deu->nit);
				Tag::displayTo("nombre1",$deu->nombre1);
				Tag::displayTo("nombre2",$deu->nombre2);
				Tag::displayTo("apellido1",$deu->apellido1);
				Tag::displayTo("apellido2",$deu->apellido2);
				Tag::displayTo("razon_social",$deu->razon_social);
				Tag::displayTo("direccion_casa",$deu->direccion_casa);
				Tag::displayTo("direccion_oficina",$deu->direccion_oficina);
				Tag::displayTo("telefono1",$deu->telefono1);
				Tag::displayTo("telefono2",$deu->telefono2);
				Tag::displayTo("sueldo",$deu->sueldo);
				Tag::displayTo("otros_ingresos",$deu->otros_ingresos);
				Tag::displayTo("eps",$deu->eps);
				Tag::displayTo("casa",$deu->casa);
				Tag::displayTo("vehiculos",$deu->vehiculos);
				Tag::displayTo("departamentos",$deu->departamentos_id);
				Tag::displayTo("departamento",$dpto->departamento);
				Tag::displayTo("municipios",$deu->municipios_id);
				Tag::displayTo("municipio",$mpio->municipio);
				Tag::displayTo("email",$deu->correo);
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar ".strtoupper(Router::getController())." para modificar.");
				}
		}
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$deu  = new Deudores();
			
				if($deu->delete(" id = '".$_REQUEST["id"]."' ")){
					
					Flash::success(strtoupper(Router::getController())." Eliminada Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($deu->getMessages() as $message){
							  Flash::error("Error Eliminando Deudor ".$message->getMessage());
					}	  
					
				}
					
	    }
		/****
			actualizarAction metodo en el cual se actualizaran
			los datos del cliente
		***/
		public function updateAction(){
			
			$this->setResponse("ajax");
			$deu= new Deudores();
			$hue= new Somhue();
			$sw=0;
			//$usuario = $Usuario->findFirst("username = '".$_REQUEST['username']."'");
			
			if($sw==1){
				
				Flash::error("Error: Deudor ya existe!!!");
			
			}else{
				
				if($sw==0){
					
						$sw=3;
						if($this->getPostParam("foto")!=""){
					
						$deu = $this->Deudores->findFirst(" nit = '".$_REQUEST["nit"]."' ");
						//$hue = $this->Somhue->findFirst(" nit = '".$_REQUEST["nit_huella"]."' ");
						$hue = $this->Somhue->findFirst(" nit = '".$_REQUEST["nit"]."' ");
						//$Usuario->setId($this->getPostParam("id"));
						$deu->nit = $this->getPostParam("nit");
						$deu->nombre1 = $this->getPostParam("nombre1");
						$deu->nombre2 = $this->getPostParam("nombre2");
						$deu->apellido1 = $this->getPostParam("apellido1");
						$deu->apellido2 = $this->getPostParam("apellido2");
						$deu->razon_social = $this->getPostParam("razon_social");
						$deu->direccion_casa = $this->getPostParam("direccion_casa");
						$deu->direccion_oficina = $this->getPostParam("direccion_oficina");
						$deu->telefono1 = $this->getPostParam("telefono1");
						$deu->telefono2 = $this->getPostParam("telefono2");
						$deu->sueldo = $this->getPostParam("sueldo");
						$deu->otros_ingresos = $this->getPostParam("otros_ingresos");
						$deu->eps = $this->getPostParam("eps");
						$deu->casa = $this->getPostParam("casa");
						$deu->vehiculos = $this->getPostParam("vehiculos");
						$deu->celular = $this->getPostParam("celular");
						$deu->departamentos_id = $this->getPostParam("departamentos_id");
						$deu->municipios_id = $this->getPostParam("municipios_id");
						//$cli->activo = $this->getPostParam("activo");
						$deu->correo = $this->getPostParam("email");
						$deu->web = $this->getPostParam("web");
						$deu->activo = 0;
						
						$detalles_item = str_replace("]\"","]",str_replace("\"[","[",str_replace("\\","",$_POST["foto"])));
						Flash::notice("Detalles_item:".$detalles_item);
						
						if(json_decode($detalles_item)){
							
							Flash::success("Json Correcto");
							$fotos_url = json_decode($detalles_item);
							$deu->url = $fotos_url->filename;
							Flash::notice($fotos_url->filename);
							$tipo = explode(".",$deu->url);
							//este es el archivo temporal
							$imagen_temporal  = $deu->url;
							Flash::notice($imagen_temporal);
							//este es el tipo de archivo
							$tipo = $tipo[1];
							Flash::notice($tipo);
							//leer el archivo temporal en binario
							$fp     = fopen($imagen_temporal, 'rb');
							$data = fread($fp, filesize($imagen_temporal));
							$data = base64_encode($data);
							fclose($fp); 
						
							//Se codifica la imagen en base64 antes del almacenarla en el campo imagen de tipo BLOB
							$deu->foto = $data;
							
						}else{
							echo $deshabilitar;
							Flash::error("Error json");
							$sw=4;
							//$msg_error.=Flash::error("Error json"); 
							//$transaction->rollback();
							
						}
						
						//Se hace con el objetivo de actualizar el NIT/Cédula en la tabla somhue
						//de manera simultanea
						$hue->nit = $this->getPostParam("nit");
						
						if($hue->update()){
							 
							  Flash::success("Se Actualizo correctamente el registro");
							  
							  echo "<script>quitar_mensajes();</script>";
							  
						}else{
							 
							  Flash::success("Error: No se pudo Actualizar el registro");	
							
									
						}
					
					    if($sw==3){
							if($deu->save()){
								  Flash::success("Se Actualizo correctamente el registro");
															 
								  echo "<script>quitar_mensajes();</script>";
								  echo "<script>redireccionar_action('deudores/modificar/?id=$deu->id');</script>";
								  
							}else{
								 Flash::success("Error: No se pudo Actualizar el registro");	
								
										
							}
						}else{
							
							Flash::error("Error: Debe tomar la foto");
						}
						
					 }else{
						 
						//$deu = $this->Deudores->findFirst(" id = '".$_REQUEST["id"]."' ");
						$deu = $this->Deudores->findFirst(" id = '".$_REQUEST["id"]."' ");
						
						//$hue = $this->Somhue->findFirst(" nit = '".$_REQUEST["nit_huella"]."' ");
						$hue = $this->Somhue->findFirst(" nit = '".$_REQUEST["nit"]."' ");
						
						$deu->nit = $this->getPostParam("nit");
						$deu->nombre1 = $this->getPostParam("nombre1");
						$deu->nombre2 = $this->getPostParam("nombre2");
						$deu->apellido1 = $this->getPostParam("apellido1");
						$deu->apellido2 = $this->getPostParam("apellido2");
						$deu->razon_social = $this->getPostParam("razon_social");
						$deu->direccion_casa = $this->getPostParam("direccion_casa");
						$deu->direccion_oficina = $this->getPostParam("direccion_oficina");
						$deu->telefono1 = $this->getPostParam("telefono1");
						$deu->telefono2 = $this->getPostParam("telefono2");
						$deu->sueldo = $this->getPostParam("sueldo");
						$deu->otros_ingresos = $this->getPostParam("otros_ingresos");
						$deu->eps = $this->getPostParam("eps");
						$deu->casa = $this->getPostParam("casa");
						$deu->vehiculos = $this->getPostParam("vehiculos");
						$deu->celular = $this->getPostParam("celular");
						$deu->departamentos_id = $this->getPostParam("departamentos_id");
						$deu->municipios_id = $this->getPostParam("municipios_id");
						//$cli->activo = $this->getPostParam("activo");
						$deu->correo = $this->getPostParam("email");
						$deu->web = $this->getPostParam("web");
						$deu->activo = 0;
						
						//Se hace con el objetivo de actualizar el NIT/Cédula en la tabla somhue
						//de manera simultanea
						$hue->nit = $this->getPostParam("nit");
						
						if($hue->update()){
							 
							  Flash::success("Se Actualizo correctamente el registro");
							  
							  echo "<script>quitar_mensajes();</script>";
							  
						}else{
							 
							  Flash::success("Error: No se pudo Actualizar el registro");	
							
									
						}
										
					if($sw==3){
							if($deu->save()){
								  Flash::success("Se Actualizo correctamente el registro");
															 
								  echo "<script>quitar_mensajes();</script>";
								  echo "<script>redireccionar_action('deudores/modificar/?id=$deu->id');</script>";
								  
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
			$deu = new Deudores();
			if( $this->Deudores->count(" 1=1 and (id = '$id' or nit ='$id') ") > 0 ){
				$deu = $this->Deudores->findFirst(" 1=1 and (id = '$id' or nit ='$id')  ");
				
				echo "<script>jQuery(\"#".$opcion."_id\").val(\"\");jQuery(\"#".$opcion."_id\").val(\"$deu->id\");jQuery(\"#$opcion\").val(\"\");jQuery(\"#$opcion\").val(\"$deu->razon_social\");</script>";
											
			}else{
				Flash::error("No se encontró deudor");
				echo "<script>jQuery(\"#".$opcion."_id\").val(\"\");jQuery(\"#$opcion\").val(\"\");</script>";
				
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