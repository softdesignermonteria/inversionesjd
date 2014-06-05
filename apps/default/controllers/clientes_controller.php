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
		
		
		public function pruebaAction(){
					
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
			$emp  = new Empresa();
			//cargamos el objeto mediantes los metodos setters
			
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			
			/*Almaceno en una variable el id del cliente, para luego compararlo con la referencia*/
			$ref=$this->Clientes->findFirst("nit = '".$this->getPostParam("nit2")."'");
						
			$sw = 0;
			$sw1= 0;
								
			if($this->Clientes->count("nit = '".$this->getPostParam("nit2")."'")>0){
				
				$sw=1;
			}
			
			
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
			
				$cli->id = '0';
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
				$cli->departamentos_id = $this->getPostParam("departamentos_id");
				$cli->municipios_id = $this->getPostParam("municipios_id");				
					
	
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
				Tag::displayTo("departamentos",$cli->departamentos_id);
				Tag::displayTo("departamento",$dpto->departamento);
				Tag::displayTo("municipios",$cli->municipios_id);
				Tag::displayTo("municipio",$mpio->municipio);
				
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar el cliente para modificar.");
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
				Tag::displayTo("departamentos",$cli->departamentos_id);
				Tag::displayTo("departamento",$dpto->departamento);
				Tag::displayTo("municipios",$cli->municipios_id);
				Tag::displayTo("municipio",$mpio->municipio);
				
			}else{
					Flash::error("Parametro incorrecto, vuelva a buscar ".strtoupper(Router::getController())." para modificarlo.");
				}
		}
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$cli  = new Clientes();
			
				
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
			$cli= new Clientes();
			$hue= new Somhue();
			$emp  = new Empresa();
			//cargamos el objeto mediantes los metodos setters
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			$sw=0;
			$sw1=0;
			$sw2=0;
		
			//cargamos el objeto mediantes los metodos setters
			
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			
			/*Almaceno en una variable el id del cliente, para luego compararlo con la referencia*/
			$ref=$this->Clientes->findFirst("nit = '".$this->getPostParam("nit2")."'");
								
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
				
				$cli = $this->Clientes->findFirst(" id = '".$_REQUEST["id"]."' ");

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
				$cli->departamentos_id = $this->getPostParam("departamentos_id");
				$cli->municipios_id = $this->getPostParam("municipios_id");				
					
	
				if($cli->save()){
						Flash::success("Se insertó correctamente el registro");
						//unlink("public/img/upload/".$cli->foto);
						echo "<script>redireccionar_action('clientes/modificar/?id=$cli->id');</script>";
						
					}else{
						Flash::error("Error: No se pudo insertar registro");	
						
						foreach($cli->getMessages() as $message){
								  Flash::error($message->getMessage());
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