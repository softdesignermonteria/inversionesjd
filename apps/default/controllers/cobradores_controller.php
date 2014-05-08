<?php

	class CobradoresController extends ApplicationController {
	
		
	
	
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
			formulario para agregar Cobradores
		***/
		public function agregarAction(){
					
        }
		
		public function imagenAction(){
			$this->setResponse("ajax");
		}
		
		/****
			addAction metodo en la cual se insertarán
			los datos del cobente
		***/
		public function addAction(){
			//primero instanciamos clase Cobradores
			$this->setResponse('view');
			$cob  = new Cobradores();
			$emp  = new Empresa();
			//cargamos el objeto mediantes los metodos setters
			
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			
			/*Almaceno en una variable el id del cobente, para luego compararlo con la referencia*/
			$ref=$this->Cobradores->findFirst("nit = '".$this->getPostParam("nit2")."'");
						
			$sw = 0;
								
			if($this->Cobradores->count("nit = '".$this->getPostParam("nit2")."'")>0){
				
				$sw=1;
			}
			
			
			if($sw==1){
				
				Flash::error("Cédula ya existe en nuestro sistema.");
				
			}
					
			//Flash::error($sw1);
								
			if($sw==0){
			
				$cob->id = '0';
				$cob->nit = $this->getPostParam("nit2");
				$cob->nombre1 = $this->getPostParam("nombre12");
				$cob->nombre2 = $this->getPostParam("nombre22");
				$cob->apellido1 = $this->getPostParam("apellido12");
				$cob->apellido2 = $this->getPostParam("apellido22");
				$cob->razon_social = $this->getPostParam("razon_social2");
				$cob->direccion = $this->getPostParam("direccion");
				$cob->telefono = $this->getPostParam("telefono");
				$cob->celular = $this->getPostParam("celular");
				$cob->departamentos_id = $this->getPostParam("departamentos_id");
				$cob->municipios_id = $this->getPostParam("municipios_id");				
					
	
				if($cob->save()){
						Flash::success("Se insertó correctamente el registro");
						//unlink("public/img/upload/".$cob->foto);
						echo "<script>quitar_mensajes();</script>";
						
					}else{
						Flash::error("Error: No se pudo insertar registro");	
						
						foreach($cob->getMessages() as $message){
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
			los datos del cobente
		***/
		public function showAction($id){
          
            $Cobradores = $this->Cobradores->find("id='$id'");
            $this->setParamToView("Cobradores", $Cobradores);
	
		}
		
		public function browseAction(){
			$this->setResponse("ajax");
			
		}
		
		public function uploadAction(){
			$this->setResponse("ajax");
		}
		/****
			modificarAction vista en la cual se mostrarán
			los datos del cobente
		***/
		public function modificarAction(){
			//$this->setResponse("ajax");
			$id= $_REQUEST['id'];
			
			if( isset($id) ){
					
				$id_Cobradores =$id;
						
				$cob = $this->Cobradores->findFirst(" id = '$id_Cobradores' ");
				$dpto= $this->Departamentos->findFirst("id = '$cob->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$cob->municipios_id'");
							
				Tag::displayTo("id",$cob->id);
				Tag::displayTo("nit2",$cob->nit);
				Tag::displayTo("nombre12",$cob->nombre1);
				Tag::displayTo("nombre22",$cob->nombre2);
				Tag::displayTo("apellido12",$cob->apellido1);
				Tag::displayTo("apellido22",$cob->apellido2);
				Tag::displayTo("razon_social2",$cob->razon_social);
				Tag::displayTo("direccion",$cob->direccion);
				Tag::displayTo("telefono",$cob->telefono);
				Tag::displayTo("celular",$cob->celular);
				Tag::displayTo("departamentos",$cob->departamentos_id);
				Tag::displayTo("departamento",$dpto->departamento);
				Tag::displayTo("municipios",$cob->municipios_id);
				Tag::displayTo("municipio",$mpio->municipio);
				
				
			}else{
					Flash::error("Parametro Incorrecto Volver a Buscar el cobente para modificar.");
				}
		}
		
		public function eliminarAction(){
			//$this->setResponse("ajax");
			
			$id= $_REQUEST['id'];
			
			if( isset($id) ){
				
				$id_Cobradores = $id;
		
				$cob  = $this->Cobradores->findFirst(" id = '$id_Cobradores' ");
				$dpto= $this->Departamentos->findFirst("id = '$cob->departamentos_id'");
				$mpio= $this->Municipios->findFirst("id = '$cob->municipios_id'");
				
				Tag::displayTo("id",$cob->id);
				Tag::displayTo("nit2",$cob->nit);
				Tag::displayTo("nombre12",$cob->nombre1);
				Tag::displayTo("nombre22",$cob->nombre2);
				Tag::displayTo("apellido12",$cob->apellido1);
				Tag::displayTo("apellido22",$cob->apellido2);
				Tag::displayTo("razon_social2",$cob->razon_social);
				Tag::displayTo("direccion",$cob->direccion);
				Tag::displayTo("telefono",$cob->telefono);
				Tag::displayTo("celular",$cob->celular);
				Tag::displayTo("departamentos",$cob->departamentos_id);
				Tag::displayTo("departamento",$dpto->departamento);
				Tag::displayTo("municipios",$cob->municipios_id);
				Tag::displayTo("municipio",$mpio->municipio);
				
			}else{
					Flash::error("Parametro incorrecto, vuelva a buscar ".strtoupper(Router::getController())." para modificarlo.");
				}
		}
		
		public function deleteAction(){
						
			$this->setResponse("view");
			
			$cob  = new Cobradores();
			
				
				if($cob->delete(" id = '".$_REQUEST["id"]."' ")){
					
					Flash::success(strtoupper(Router::getController())." Eliminada Satisfactoriamente");
					echo "<script>redireccionar_action('cobradores/buscar/?opcion=eliminar');</script>";
	
				}else{
				
					Flash::error("Error: No se pudo Eliminar .");	
					
					foreach($cob->getMessages() as $message){
							  Flash::error("Error Eliminando Cobradores ".$message->getMessage());
					}	  
					
				}
					
	    }
	   /****
			actualizarAction metodo en el cual se actualizaran
			los datos del cobente
		***/
		public function updateAction(){
			
			$this->setResponse("ajax");
			$cob= new Cobradores();
			$hue= new Somhue();
			$emp  = new Empresa();
			//cargamos el objeto mediantes los metodos setters
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			$sw=0;
				
			//cargamos el objeto mediantes los metodos setters
			
			$emp=$this->Empresa->findFirst("id='".Session::get('id_empresa')."'");
			
			/*Almaceno en una variable el id del cobente, para luego compararlo con la referencia*/
			$ref=$this->Cobradores->findFirst("nit = '".$this->getPostParam("nit2")."'");
								
			if($sw==1){
				
				Flash::error("Cédula ya existe en nuestro sistema.");
				
			}else{
					
			if($sw==0){
				
				$cob = $this->Cobradores->findFirst(" id = '".$_REQUEST["id"]."' ");

				$cob->nit = $this->getPostParam("nit2");
				$cob->nombre1 = $this->getPostParam("nombre12");
				$cob->nombre2 = $this->getPostParam("nombre22");
				$cob->apellido1 = $this->getPostParam("apellido12");
				$cob->apellido2 = $this->getPostParam("apellido22");
				$cob->razon_social = $this->getPostParam("razon_social2");
				$cob->direccion = $this->getPostParam("direccion");
				$cob->telefono = $this->getPostParam("telefono");
				$cob->celular = $this->getPostParam("celular");
				$cob->departamentos_id = $this->getPostParam("departamentos_id");
				$cob->municipios_id = $this->getPostParam("municipios_id");				
					
	
				if($cob->save()){
						Flash::success("Se insertó correctamente el registro");
						//unlink("public/img/upload/".$cob->foto);
						echo "<script>redireccionar_action('cobradores/modificar/?id=$cob->id');</script>";
						
					}else{
						Flash::error("Error: No se pudo insertar registro");	
						
						foreach($cob->getMessages() as $message){
								  Flash::error($message->getMessage());
						}
					 }
			     }
			
			
			}
			
		}
		
		public function Cobradores_con_equipoAction(){
		
			
			$sql = '';

			if( isset( $_REQUEST['empresa_id']   )==true ) { if( $_REQUEST['empresa_id'] != ''   ) { $sql .= " and {#SaldoRemisiones}.empresa_id like '%".$_REQUEST['empresa_id']."%'";                   } }	
			if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and {#Cobradores}.nit like '".$_REQUEST['nit']."%'";                   } }
			if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and {#Cobradores}.razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
			
			
			$query = new ActiveRecordJoin(array(
						"entities" => array("Cobradores","SaldoRemisiones"),
						"groupFields" => array(
							"{#Cobradores}.razon_social",
							"{#Cobradores}.id",
							"{#Cobradores}.nit",
							"{#SaldoRemisiones}.empresa_id"
						),
						"conditions" => "{#SaldoRemisiones}.anulado = 0 and {#Cobradores}.activo = 0 and  ( {#SaldoRemisiones}.cantidad - {#SaldoRemisiones}.devueltos ) <> 0 $sql "
						
				));
				
				$this->setParamToView("detalles", $query->getResultSet());
				$this->setParamToView("sql", $query->getSqlQuery());
				//Flash::error($query->getSqlQuery());
		
		}
		
		
		public function Cobradores_sin_equipoAction(){
		
			$sql = '';

			if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and c1.nit like '".$_REQUEST['nit']."%'";                   } }
			if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and c1.razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
			
		
			$query = new ActiveRecordJoin(array(
				"entities"=> array("Cobradores","SaldoRemisiones"),
				"groupFields"=> array(
							"{#Cobradores}.id"
				),
				"conditions" => " {#SaldoRemisiones}.anulado = 0 and {#Cobradores}.activo = 0 and ( {#SaldoRemisiones}.cantidad - {#SaldoRemisiones}.devueltos ) <> 0  "
			));
			
			$query2 = $query->getSQLQuery();
			$sql = "SELECT c1.* FROM Cobradores c1 WHERE c1.id not in ($query2) $sql order by c1.razon_social";
	
			$this->setParamToView("detalles", $this->Cobradores->findAllBySql($sql) );
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
				
				
				$Cobradores = $this->Cobradores->find(" $sql ","order: $ordenar");
          		$this->setParamToView("Cobradores", $Cobradores);
		
		}
		
		
		public function trae_CobradoresAction(){
			
			//$this->setResponse('ajax');
			$this->setTemplateAfter("default");

		}
		
		
		public function trae_Cobradores_detallesAction(){
			
			$this->setResponse('view');
			
			$sql = "select * from Cobradores where 1=1 and activo = 0 ";
			
			if( isset( $_REQUEST['codigo']       )==true ) { if( $_REQUEST['codigo'] != ''       ) { $sql .= " and id like '%".$_REQUEST['codigo']."%'";                 } }
			if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and nit like '%".$_REQUEST['nit']."%'";                   } }
			if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
			//if( isset( $_REQUEST['nombre1']      )==true ) { if( $_REQUEST['nombre1'] != ''      ) { $sql .= " and nombre1 like '%".$_REQUEST['nombre1']."%'";           } }
			//if( isset( $_REQUEST['nombre2']      )==true ) { if( $_REQUEST['nombre2'] != ''      ) { $sql .= " and nombre2 like '%".$_REQUEST['nombre2']."%'";           } }
			//if( isset( $_REQUEST['apellido1']    )==true ) { if( $_REQUEST['apellido1'] != ''    ) { $sql .= " and apellido1 like '%".$_REQUEST['apellido1']."%'";       } }
			//if( isset( $_REQUEST['apellido2']    )==true ) { if( $_REQUEST['apellido2'] != ''    ) { $sql .= " and apellido2 like '%".$_REQUEST['apellido2']."%'";       } }
			if( isset( $_REQUEST['orderby']      )==true ) { if( $_REQUEST['orderby'] != ''      ) { $sql .= " order by ".$_REQUEST['orderby']." ";       } }
			
			$Cobradores = $this->Cobradores->findAllBySql($sql);
			//Flash::error($sql);
			$this->setParamToView('Cobradores',$Cobradores);
		
		}
		
		
		
		public function agregar_CobradoresAction(){
		
			//$this->set_response('view');
			$this->setTemplateAfter("default");
		
		}
		
				
		/****
			addAction metodo en la cual se insertarán
			los datos del cobente
		***/
		public function add_CobradoresAction(){
			//primero instanciamos clase Cobradores
			$this->setResponse('view');
			$cob  = new Cobradores();
			//cargamos el objeto mediantes los metodos setters
			
			$sw = 0;
			if($this->Cobradores->count("nit = '".$this->getPostParam("nit")."'")>0){
				Flash::error("DOCUMENTO DE IDENTIFICACION (NIT/CEDULA) YA SE EXISTE EN NUESTRA BASE DE DATOS");
				$sw=1;
			}
			
			if($sw==0){
				$cob->id = '0';
				$cob->nit = $this->getPostParam("nit");
				//$cob->nombre1 = $this->getPostParam("pn");
				//$cob->nombre2 = $this->getPostParam("sn");
				//$cob->apellido1 = $this->getPostParam("pa");
				//$cob->apellido2 = $this->getPostParam("sa");
				$cob->nombre1 = '';
				$cob->nombre2 = '';
				$cob->apellido1 = '';
				$cob->apellido2 = '';
				$cob->razon_social = $this->getPostParam("rs");
				$cob->direccion_casa = $this->getPostParam("dc");
				$cob->direccion_oficina = $this->getPostParam("dof");
				$cob->telefono1 = $this->getPostParam("tf1");
				$cob->telefono2 = $this->getPostParam("tf2");
				$cob->celular = $this->getPostParam("celular");
				$cob->departamentos_id = $this->getPostParam("tmp_dptos");
				$cob->municipios_id = $this->getPostParam("tmp_municipios");
				$cob->activo = $this->getPostParam("activo");
				$cob->correo = $this->getPostParam("email");
				$cob->web = $this->getPostParam("web");
				$cob->activo = 0;
						
				if($cob->save()){
					Flash::success("Se insertó correctamente el registro");
					print("<script>escoger_cobente('$cob->id','$cob->razon_social','$cob->telefono1','$cob->telefono2');Dialog.okCallback();</script>");
				}else{
					Flash::error("Error: No se pudo insertar registro");	
					foreach($cob->getMessages() as $message){
							  Flash::error($message->getMessage());
						}
				}
			
			}//fin  si todo bien
			
	    }
		
		
		public function verificarAction($id){
			
			$this->setResponse('view');
			
			$cob = new Cobradores();
			$cob->findFirst("nit = '$id'");
			echo "<script>";
			echo "$('cobradores_id').value='$cob->id';";
			echo "$('cobradores').value='$cob->razon_social';";
			if($cob->id==''){ echo "alert('cobente no encontrado o no existe');"; }
			echo "</script>";
			
			//$this->setTemplateAfter("default");

		}
		
		
		
		/*CONSULTA DE Cobradores CON FACTURAS AGREGADAS*/
		
		public function trae_Cobradores_hfacturasAction(){
			
			//$this->setResponse('ajax');
			$this->setTemplateAfter("default");
			

		}
		
		
		public function trae_Cobradores_hfacturas_detallesAction(){
			
			$this->setResponse('view');
			
			//$sql = "select * from Cobradores where 1=1 ";
			$sql = '';
			if( isset( $_REQUEST['codigo']       )==true ) { if( $_REQUEST['codigo'] != ''       ) { $sql .= " and id like '%".$_REQUEST['codigo']."%'";                 } }
			if( isset( $_REQUEST['nit']          )==true ) { if( $_REQUEST['nit'] != ''          ) { $sql .= " and nit like '%".$_REQUEST['nit']."%'";                   } }
			if( isset( $_REQUEST['razon_social'] )==true ) { if( $_REQUEST['razon_social'] != '' ) { $sql .= " and razon_social like '%".str_replace(' ',"%",utf8_decode($_REQUEST['razon_social']))."%'"; } }
		//	if( isset( $_REQUEST['orderby']      )==true ) { if( $_REQUEST['orderby'] != ''      ) { $sql .= " order by ".$_REQUEST['orderby']." ";       } }
		
			
			$query = new ActiveRecordJoin(array(
						"entities" => array("Factura","Cobradores"),
					 	"groupFields"=>array(
										"{#Cobradores}.id",
										"{#Cobradores}.nit",
										"{#Cobradores}.razon_social"
										),
						"conditions"=>(" 1=1 and activo = 0 $sql ")
				));
				//Flash::error($query->getSqlQuery());
			 $this->setParamToView('Cobradores',$query->getResultSet());
			
			
			//$Cobradores = $this->Cobradores->findAllBySql($sql);
			//Flash::error($sql);
			//$this->setParamToView('Cobradores',$Cobradores);
		
		}
		
		/* FIN CONSULTA DE Cobradores CON FACTURAS AGREGADAS*/
		
		
	   public function validarAction($id,$opcion){

			$this->setResponse("view");
			
			$sw=0;
			$cob = new Cobradores();
			if( $this->Cobradores->count(" 1=1 and (id = '$id' or nit ='$id') ") > 0 ){
				$cob = $this->Cobradores->findFirst(" 1=1 and (id = '$id' or nit ='$id')  ");
				echo "<script>jQuery(\"#$opcion\").val(\"\");jQuery(\"#".Router::getController()."_id\").val(\"$cob->id\");jQuery(\"#cobradores\").val(\"$cob->razon_social\");</script>";
			}else{
				Flash::error("No se encontró cobrador");
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