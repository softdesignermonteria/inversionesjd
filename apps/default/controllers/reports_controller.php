<?php

	class ReportsController extends ApplicationController {



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

		


		public function carteraAction(){
		
		}
			
		public function detalle_carteraAction(){
			
			$this->setResponse('view');
			
			$condicion1 ="";
			$condicion2 ="";
			$condicion3 ="";
			
			$condicion4 ="";
			$condicion5 ="";
			
			if($_REQUEST["nit"]!=''       ){ $condicion1 = " and {#Clientes}.nit like '%".$_REQUEST["nit"]."%' "; }
			if($_REQUEST["nombre"]!=''    ){ $condicion2 = " and {#Clientes}.razon_social like '%".str_replace(" ","%",$_REQUEST["nombre"])."%' "; }
			if($_REQUEST["direccion"]!='' ){ $condicion3 = " and ( {#Clientes}.direccion like '%".str_replace(" ","%",$_REQUEST["direccion"])."%' )"; }
			
			if($_REQUEST["departamentos_id"]!='' ){ $condicion1 = " and {#Clientes}.departamentos_id = '".$_REQUEST["departamentos_id"]."' "; }
			if($_REQUEST["municipios_id"]!=''    ){ $condicion1 = " and {#Clientes}.municipios_id = '".$_REQUEST["municipios_id"]."' "; }
			
			
			$query = new ActiveRecordJoin(array(
				"entities" => array("Creditos", "Cxc","Clientes","Departamentos","Municipios"),
				"fields" => array(
							"{#Cxc}.*", 
							"{#Creditos}.clientes_id", 
							"{#Clientes}.nit", 
							"{#Clientes}.razon_social", 
							"{#Clientes}.direccion", 
							"{#Departamentos}.departamento", 
							"{#Municipios}.municipio"),
				"conditions" => " 1=1 $condicion1 $condicion2 $condicion3 $condicion4 $condicion5"
			));
			
			//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles",$query->getResultSet());
				
		}	
	
		public function clientesAction(){
				
		}
		
		public function detalle_clientesAction(){
			
			$this->setResponse('view');
			
			$condicion1 ="";
			$condicion2 ="";
			$condicion3 ="";
			
			$condicion4 ="";
			$condicion5 ="";
			
			if($_REQUEST["nit"]!=''       ){ $condicion1 = " and {#Clientes}.nit like '%".$_REQUEST["nit"]."%' "; }
			if($_REQUEST["nombre"]!=''    ){ $condicion2 = " and {#Clientes}.razon_social like '%".str_replace(" ","%",$_REQUEST["nombre"])."%' "; }
			if($_REQUEST["direccion"]!='' ){ $condicion3 = " and ( {#Clientes}.direccion like '%".str_replace(" ","%",$_REQUEST["direccion"])."%' )"; }
			
			if($_REQUEST["departamentos_id"]!='' ){ $condicion1 = " and {#Clientes}.departamentos_id = '".$_REQUEST["departamentos_id"]."' "; }
			if($_REQUEST["municipios_id"]!=''    ){ $condicion1 = " and {#Clientes}.municipios_id = '".$_REQUEST["municipios_id"]."' "; }
			
			$query = new ActiveRecordJoin(array(
				"entities" => array("Clientes", "Departamentos", "Municipios"),
				"fields" => array(
							"{#Clientes}.*", 
							
							"{#Departamentos}.departamento", 
							"{#Municipios}.municipio"),
				"conditions" => " 1=1 $condicion1 $condicion2 $condicion3 $condicion4 $condicion5"
			));
			
			//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles",$query->getResultSet());
		}
		
		public function recibos_cajaAction(){
				
		}
		
		public function detalle_recibos_cajaAction(){
			
			$this->setResponse('view');
			
			$condicion1 ="";
			$condicion2 ="";
			$condicion3 ="";
			
			$condicion4 ="";
			$condicion5 ="";
			
			if($_REQUEST["nit"]!=''       ){ $condicion1 = " and {#Clientes}.nit like '%".$_REQUEST["nit"]."%' "; }
			if($_REQUEST["nombre"]!=''    ){ $condicion2 = " and {#Clientes}.razon_social like '%".str_replace(" ","%",$_REQUEST["nombre"])."%' "; }
			if($_REQUEST["cobradores_id"]!='' ){ $condicion3 = " and ( {#RecibosCaja}.cobradores_id = '".$_REQUEST["cobradores_id"]."' )"; }
			
			if($_REQUEST["desde"]!='' ){ $condicion1 = " and {#RecibosCaja}.fecha >= '".$_REQUEST["desde"]."' "; }
			if($_REQUEST["hasta"]!=''    ){ $condicion1 = " and {#RecibosCaja}.fecha <= '".$_REQUEST["hasta"]."' "; }
			
			$query = new ActiveRecordJoin(array(
				"entities" => array("RecibosCaja","Clientes" ,"DetalleRecibosCaja","Cobradores"),
				"groupFields" => array(
									"{#RecibosCaja}.id",
									"{#RecibosCaja}.prefijo",
									"{#RecibosCaja}.consecutivo",
									"{#RecibosCaja}.fecha",
									"{#Cobradores}.razon_social",
									"{#Clientes}.razon_social as nombre"
								   ),
				"sumatory" => array(
									"{#DetalleRecibosCaja}.valor",
									"{#DetalleRecibosCaja}.capital",
									"{#DetalleRecibosCaja}.intereses"
									),				
				"conditions" => " 1=1 $condicion1 $condicion2 $condicion3 $condicion4 $condicion5 "
			));
			
			//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles",$query->getResultSet());
		}
		
		
		
		public function historicosAction(){
				
		}
		
		public function detalle_historicosAction(){
			
				
			$this->setResponse('view');
			
			$condicion1 ="";
			
			if($_REQUEST["clientes_id"]!=''       ){ $condicion1 = " and {#Clientes}.id = '".$_REQUEST["clientes_id"]."' "; }
			
			$query = new ActiveRecordJoin(array(
				"entities" => array("Clientes", "Departamentos", "Municipios"),
				"fields" => array(
							"{#Clientes}.*", 
							
							"{#Departamentos}.departamento", 
							"{#Municipios}.municipio"),
				"conditions" => " 1=1 $condicion1 "
			));
			
		//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles_clientes",$query->getResultSet());
			
		/*		$query = new ActiveRecordJoin(array(
				"entities" => array("Solicitud","Clientes","Departamentos","Municipios"),
				"fields" => array(
							"{#Solicitud}.id", 
							"{#Solicitud}.prefijo", 
							"{#Solicitud}.consecutivo", 
							"{#Solicitud}.clientes_id", 
							"{#Solicitud}.deudores_id", 
							"{#Solicitud}.deudores2_id", 
							"{#Solicitud}.deudores3_id", 
							"{#Solicitud}.fecha", 
							"{#Solicitud}.estado_solicitud_id", 
							"{#Solicitud}.porcentaje", 
							"{#Solicitud}.capital", 
							"{#Solicitud}.numero_cuotas", 
							"{#Solicitud}.valor_cuota", 
							"{#Solicitud}.total_credito", 
							"{#Clientes}.razon_social", 
												
							"{#Departamentos}.departamento", 
							"{#Municipios}.municipio"),
							
				"conditions" => " 1=1 and {#Clientes}.id={#Solicitud}.clientes_id $condicion1  "
								
			));
			
			//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles_solicitudes",$query->getResultSet());*/
			
			
			$query = new ActiveRecordJoin(array(
				"entities" => array("Creditos","Clientes","Departamentos","Municipios"),
				"fields" => array(
							"{#Creditos}.id", 
							"{#Creditos}.clientes_id", 
							"{#Clientes}.nit", 
							"{#Clientes}.razon_social", 
							
							"{#Clientes}.direccion", 
							"{#Creditos}.prefijo", 
							"{#Creditos}.fecha", 
							"{#Creditos}.capital", 
							"{#Creditos}.cuotas", 
							"{#Creditos}.valor_cuotas", 
							"{#Creditos}.total_credito", 
							"{#Creditos}.consecutivo", 
							"{#Departamentos}.departamento", 
							"{#Municipios}.municipio"),
				"conditions" => " 1=1 $condicion1 "
			));
			
			//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles_creditos",$query->getResultSet());
			
			
			$query = new ActiveRecordJoin(array(
				"entities" => array("RecibosCaja","Clientes" ,"DetalleRecibosCaja"),
				"groupFields" => array(
									"{#RecibosCaja}.id",
									"{#RecibosCaja}.prefijo",
									"{#RecibosCaja}.consecutivo",
									"{#RecibosCaja}.fecha",
									"{#Clientes}.razon_social"
								   ),
				"sumatory" => array(
									"{#DetalleRecibosCaja}.valor",
									"{#DetalleRecibosCaja}.capital",
									"{#DetalleRecibosCaja}.intereses"
									),				
				"conditions" => " 1=1 $condicion1  "
			));
			
			//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles_recibos_caja",$query->getResultSet());
		}
		
		
		
		public function caja_cobradorAction(){
				
		}
		
		public function detalle_caja_cobradorAction(){
			
				
			$this->setResponse('view');
			
			if($_REQUEST["desde"]!=''         ){ $condicion1 = " and {#CajaCobrador}.fecha >= '".$_REQUEST["desde"]."' "; }
			if($_REQUEST["hasta"]!=''         ){ $condicion1 = " and {#CajaCobrador}.fecha <= '".$_REQUEST["hasta"]."' "; }
			
		
			$query = new ActiveRecordJoin(array(
				"entities" => array("CajaCobrador"),
				"fields" => array(
							"{#CajaCobrador}.id", 
							"{#CajaCobrador}.cobradores_id", 
							"{#CajaCobrador}.fecha", 
							"{#CajaCobrador}.valor"
							),
				"conditions" => " 1=1 and {#CajaCobrador}.cobradores_id = '".$_REQUEST["cobradores_id"]."' $condicion1 "
			));
			
			//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles_caja_cobrador",$query->getResultSet());
			
				
			$condicion1 ="";

			if($_REQUEST["desde"]!=''         ){ $condicion1 = " and {#Creditos}.fecha >= '".$_REQUEST["desde"]."' "; }
			if($_REQUEST["hasta"]!=''         ){ $condicion1 = " and {#Creditos}.fecha <= '".$_REQUEST["hasta"]."' "; }
			
		
			$query = new ActiveRecordJoin(array(
				"entities" => array("Creditos","Clientes","Departamentos","Municipios"),
				"fields" => array(
							"{#Creditos}.id", 
							"{#Creditos}.clientes_id", 
							"{#Clientes}.nit", 
							"{#Clientes}.razon_social", 
							
							"{#Clientes}.direccion", 
							"{#Creditos}.prefijo", 
							"{#Creditos}.fecha", 
							"{#Creditos}.capital", 
							"{#Creditos}.cuotas", 
							"{#Creditos}.valor_cuotas", 
							"{#Creditos}.total_credito", 
							"{#Creditos}.consecutivo", 
							"{#Departamentos}.departamento", 
							"{#Municipios}.municipio"),
				"conditions" => " 1=1 and {#Creditos}.cobradores_id = '".$_REQUEST["cobradores_id"]."' $condicion1 "
			));
			
			//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles_creditos",$query->getResultSet());
			
			$condicion1 ="";
			if($_REQUEST["desde"]!=''         ){ $condicion1 = " and {#RecibosCaja}.fecha >= '".$_REQUEST["desde"]."' "; }
			if($_REQUEST["hasta"]!=''         ){ $condicion1 = " and {#RecibosCaja}.fecha <= '".$_REQUEST["hasta"]."' "; }
			
			$query = new ActiveRecordJoin(array(
				"entities" => array("RecibosCaja","Clientes" ,"DetalleRecibosCaja"),
				"groupFields" => array(
									"{#RecibosCaja}.id",
									"{#RecibosCaja}.prefijo",
									"{#RecibosCaja}.consecutivo",
									"{#RecibosCaja}.fecha",
									"{#Clientes}.razon_social"
								   ),
				"sumatory" => array(
									"{#DetalleRecibosCaja}.valor",
									"{#DetalleRecibosCaja}.capital",
									"{#DetalleRecibosCaja}.intereses"
									),				
				"conditions" => " 1=1  and {#RecibosCaja}.cobradores_id = '".$_REQUEST["cobradores_id"]."' $condicion1  "
			));
			
			//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles_recibos_caja",$query->getResultSet());
			
			
		}
		
		public function historico_clienteAction(){
				
		}
		
		
		
		public function deudoresAction(){
		
		}
		
		public function detalle_referenciasAction(){
			
			$this->setResponse('view');
		
		}
		
		
		public function creditosAction(){
				//$this->setResponse("view");
	
		}
		
		
		public function detalle_creditosAction(){
			
			$this->setResponse('view');
			
			$condicion1 ="";
			$condicion2 ="";
			$condicion3 ="";
			
			$condicion4 ="";
			$condicion5 ="";
			
			if($_REQUEST["nit"]!=''       ){ $condicion1 = " and {#Clientes}.nit like '%".$_REQUEST["nit"]."%' "; }
			if($_REQUEST["nombre"]!=''    ){ $condicion2 = " and {#Clientes}.razon_social like '%".str_replace(" ","%",$_REQUEST["nombre"])."%' "; }
			if($_REQUEST["direccion"]!='' ){ $condicion3 = " and ( {#Clientes}.direccion like '%".str_replace(" ","%",$_REQUEST["direccion"])."%' )"; }
			
			if($_REQUEST["departamentos_id"]!='' ){ $condicion1 = " and {#Clientes}.departamentos_id = '".$_REQUEST["departamentos_id"]."' "; }
			if($_REQUEST["municipios_id"]!=''    ){ $condicion1 = " and {#Clientes}.municipios_id = '".$_REQUEST["municipios_id"]."' "; }
			
			
			$query = new ActiveRecordJoin(array(
				"entities" => array("Creditos","Clientes","Cobradores","Departamentos","Municipios"),
				"fields" => array(
							"{#Creditos}.id", 
							"{#Creditos}.clientes_id", 
							"{#Clientes}.nit", 
							"{#Clientes}.razon_social", 
							"{#Cobradores}.razon_social as nombre", 
							"{#Clientes}.direccion", 
							"{#Creditos}.prefijo", 
							"{#Creditos}.fecha", 
							"{#Creditos}.capital", 
							"{#Creditos}.cuotas", 
							"{#Creditos}.valor_cuotas", 
							"{#Creditos}.total_credito", 
							"{#Creditos}.consecutivo", 
							"{#Departamentos}.departamento", 
							"{#Municipios}.municipio"),
				"conditions" => " 1=1 $condicion1 $condicion2 $condicion3 $condicion4 $condicion5"
			));
			
			//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles",$query->getResultSet());
				
		}	
		
		
		public function cred_clientesAction(){
				
		}
		
		//Buscar las solicitudes de credito por cliente
		public function buscar_solicitudesAction(){

				$this->setResponse("ajax");
				$solicitud= new Solicitud();
				$clientes_id=$_REQUEST['clientes_id'];
				$solicitud=$this->Solicitud->find("clientes_id = '$clientes_id'");
				$this->setParamToView("solicitud",$solicitud);
				
					
		}
		
		public function ingresos_diarioAction(){
				
		}
		
		public function ingresos_mesAction(){
				
		}
		
		public function ingresos_annioAction(){
				
		}
		
		public function detalle_ingresos_annioAction(){
			
			$this->setResponse('view');
			
			$condicion1 ="";
					
			if($_REQUEST["annio"]!=''){ $condicion1 = " and YEAR({#RecibosCaja}.fecha) = '".$_REQUEST["annio"]."' "; }
			
			$query = new ActiveRecordJoin(array(
				"entities"    => array("RecibosCaja", "DetalleRecibosCaja", "Clientes"),
				"groupFields" => array(
							  "{#Clientes}.id",
							  "{#Clientes}.nit",
							  "{#Clientes}.razon_social",
							  "{#Clientes}.direccion",
							  "{#Clientes}.telefono",
							  "{#Clientes}.celular"
							  ),  
							  "sumatory" => array(
							  "{#DetalleRecibosCaja}.valor",
							  "{#DetalleRecibosCaja}.capital",
							  "{#DetalleRecibosCaja}.intereses"
							),
				"conditions" => " 1=1 $condicion1"
			));
			
		//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles_ingresos",$query->getResultSet());
			
		}
		
			
		public function detalle_ingresos_mesAction(){
			
			$this->setResponse('view');
			
			$condicion1 ="";
			$condicion2 ="";
			
			if($_REQUEST["mes"]!=''){ $condicion1 = " and MONTH({#RecibosCaja}.fecha) = '".$_REQUEST["mes"]."' "; }
			
			if($_REQUEST["annio"]!=''){ $condicion2 = " and YEAR({#RecibosCaja}.fecha) = '".$_REQUEST["annio"]."' "; }
			
			$query = new ActiveRecordJoin(array(
				"entities"    => array("RecibosCaja", "DetalleRecibosCaja", "Clientes"),
				"groupFields" => array(
							  "{#Clientes}.id",
							  "{#Clientes}.nit",
							  "{#Clientes}.razon_social",
							  "{#Clientes}.direccion",
							  "{#Clientes}.telefono",
							  "{#Clientes}.celular"
							  ),  
							  "sumatory" => array(
							  "{#DetalleRecibosCaja}.valor",
							  "{#DetalleRecibosCaja}.capital",
							  "{#DetalleRecibosCaja}.intereses"
							),
				"conditions" => " 1=1 $condicion1 $condicion2"
			));
			
		//Flash::notice($query->getSqlQuery());
			$this->setParamToView("detalles_ingresos",$query->getResultSet());
			
		}
		
		public function detalle_ingresos_diarioAction(){
			
			$this->setResponse('view');
			
			$condicion1 ="";
						
			if($_REQUEST["factual"]!=''){ $condicion1 = " AND {#RecibosCaja}.fecha = '".$_REQUEST["factual"]."'"; }
			
			$query = new ActiveRecordJoin(array(
				"entities"    => array("RecibosCaja", "DetalleRecibosCaja", "Clientes"),
				"groupFields" => array(
							  "{#Clientes}.id",
							  "{#Clientes}.nit",
							  "{#Clientes}.razon_social",
							  "{#Clientes}.direccion",
							  "{#Clientes}.telefono",
							  "{#Clientes}.celular"
							  ),  
							  "sumatory" => array(
							  "{#DetalleRecibosCaja}.valor",
							  "{#DetalleRecibosCaja}.capital",
							  "{#DetalleRecibosCaja}.intereses"
							),
				"conditions" => " 1=1 $condicion1"
			));
			
			
			
		//Flash::notice($query);
		$this->setParamToView("detalles_ingresos",$query->getResultSet());
			
		}
		
		
		
		public function cartera_vencidaAction(){
				
		}
		
		
		public function detalle_cartera_vencidaAction(){
			
			$this->setResponse('view');
			
			$condicion1 ="";
			$condicion2 ="";
			
			//if($_REQUEST["mes"]!=''){ $condicion1 = " and MONTH({#RecibosCaja}.fecha) = '".$_REQUEST["mes"]."' "; }
			
			//if($_REQUEST["annio"]!=''){ $condicion2 = " and YEAR({#RecibosCaja}.fecha) = '".$_REQUEST["annio"]."' "; }
			
			/*$sql="select  empresa_id,clientes_id,creditos_id,
					max(vencimiento) as vencimiento, 
					COUNT(*) as cuotas_atrasadas,
					valor_cuota,
					valor_pagado,
					valor_nota_credito,
					( valor_cuota-valor_pagado-valor_nota_credito) as saldo,
					DATEDIFF( '2014/07/31' , max(vencimiento) ) as dias_atraso,
					month(max(vencimiento)) as mes,
					year(max(vencimiento)) as anno,
					CONCAT( year( max(vencimiento) ) , month( max(vencimiento) )) as periodo
				from view_cartera
			where 
			 1=1
			group by creditos_id
			having  ;";*/
			$query = new ActiveRecordJoin(array(
				"entities"    => array("ViewCartera","Clientes"),
				"groupFields" => array(
							  "{#ViewCartera}.creditos_id",
							  "{#ViewCartera}.empresa_id",
							  "{#ViewCartera}.clientes_id",
							  "{#ViewCartera}.prefijo",
							  "{#ViewCartera}.consecutivo",
							  "{#ViewCartera}.fecha",
							  "{#ViewCartera}.tipo_documento_id",
							  "{#Clientes}.nit",
							  "{#Clientes}.razon_social"
							  ),  
			    "sumatory" => array(
							  "{#ViewCartera}.valor_cuota",
							  "{#ViewCartera}.valor_pagado",
							  "{#ViewCartera}.valor_nota_credito"
							),
				"count" => array(
							  "{#ViewCartera}.idt",
							),			
				"maximum" => array(
							  "{#ViewCartera}.vencimiento"
							),			
				"conditions" => " 1=1 ",
				"having" => " CONCAT( year( max(vencimiento) ) , month( max(vencimiento) ) ) < CONCAT( '".$_REQUEST["annio"]."', '".$_REQUEST["mes"]."' ) "
			));
			
			Flash::notice($query->getSqlQuery());
			$this->setParamToView("vencido",$query->getResultSet());
			
		}
		
		public function buscar_cxcAction(){

				$this->setResponse("view");
				$creditos = new Creditos();
				$clientes_id=$_REQUEST['clientes_id'];
				$creditos = $this->Creditos->find(" clientes_id = '$clientes_id'");
				$this->setParamToView("creditos",$creditos);
				
					
		}
		
		//Buscar los créditos por clientes
		public function buscar_creditosAction(){

				$this->setResponse("view");
				$creditos = new Creditos();
				$clientes_id=$_REQUEST['clientes_id'];
				$creditos = $this->Creditos->find(" clientes_id = '$clientes_id'");
				$this->setParamToView("creditos",$creditos);
				
					
		}
		
		//Resumen de clientes
		public function print_jaspertClientesAction(){
				$this->setResponse("view");
	
		}
		
		//Resumen de deudores
		public function print_jaspertDeudoresAction(){
				$this->setResponse("view");
	
		}
		
		//Resumen solicitudes de credito por cliente
		public function print_jaspertSolAction(){
				$this->setResponse("view");
				$id_sol=$_REQUEST['id_sol'];
				$id_cliente=$_REQUEST['id_cliente'];
				$sol = new Solicitud();
				$sol = $this->Solicitud->findFirst(" clientes_id = '$id_cliente' and id='$id_sol'");
				$this->setParamToView("id_cliente",$id_cliente);
				$this->setParamToView("id_sol",$id_sol);
				$this->setParamToView("empresa_id",$sol->empresa_id);
		}
		
		//Resumen cuentas por cobrar general
		public function print_jaspertcxcgenAction(){
				$this->setResponse("view");
	
		}
		
		//Resumen cuentas por cobrar por cliente
		public function print_jaspertcxcresAction(){
				$this->setResponse("view");
				$id_cliente=$_REQUEST['id_cliente'];
				$id_credito=$_REQUEST['id_credito'];
				$cr = new Creditos();
				$cr  = $this->Creditos->findFirst(" clientes_id = '$id_cliente' and id='$id_credito'");
				$this->setParamToView("id_cliente",$id_cliente);
				$this->setParamToView("empresa_id",$cr->empresa_id);
				$this->setParamToView("id_credito",$id_credito);
		}

		//Resumen creditos por cliente
		public function print_jaspertcredcliAction(){
				$this->setResponse("view");
				$id_cliente=$_REQUEST['id_cliente'];
				$id_credito=$_REQUEST['id_credito'];
				$cr = new Creditos();
				$cr  = $this->Creditos->findFirst(" clientes_id = '$id_cliente' and id='$id_credito'");
				$this->setParamToView("id_cliente",$id_cliente);
				$this->setParamToView("empresa_id",$cr->empresa_id);
				$this->setParamToView("id_credito",$id_credito);
		}
		
		
		//Resumen creditos por cliente
		public function print_jaspertExtractoResumenAction(){
				$this->setResponse("view");
			
		}
		
		
		
	
	}



?>