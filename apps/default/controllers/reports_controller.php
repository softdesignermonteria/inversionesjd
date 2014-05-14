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
		
		public function deudoresAction(){
		
		}
		
		
		public function creditosAction(){
				//$this->setResponse("view");
	
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
		
		public function buscar_cxcAction(){

				$this->setResponse("view");
				$creditos = new Creditos();
				$clientes_id=$_REQUEST['clientes_id'];
				$creditos = $this->Creditos->find(" clientes_id = '$clientes_id'");
				$this->setParamToView("creditos",$creditos);
				
					
		}
		
		//Buscar los cr�ditos por clientes
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