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

		

		/**

		 * Aqui sale el formulario de Iniciar Sesión

		 *

		 */

		 

		 public function not_found($controller, $action){

				 $this->set_response('view');

				 Flash::error("No esta definida la accion $action, redireccionando");

				 return $this->redirect('administrador');

				 

		 }



		/**

		 * Esta accion es ejecutada por application/before_filter en caso

		 * de que el usuario trate de entrar a una accion a la cual

		 * no tiene permiso

		 *

		 */

		public function no_accesoAction(){

				$this->setResponse('view');

				 Flash::error("No esta definida la accion $action, redireccionando");

				 return $this->redirect('administrador');

		}


		public function carteraAction(){
			}
			
		public function detalle_carteraAction(){
				$this->setResponse('view');
		}	
	
		public function clientesAction(){
				
		}
		
		public function deudoresAction(){
		
		}
		
		public function solicitudAction(){
				//$this->setResponse("view");
	
		}
		
		public function cxcAction(){
				//$this->setResponse("view");
	
		}
		
		public function cxc_generalAction(){
				//$this->setResponse("view");
	
		}
		
		public function cxc_resumenAction(){
				//$this->setResponse("view");
	
		}
		
		public function extracto_resumenAction(){
				//$this->setResponse("view");
	
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
		
		public function detalle_extracto_resumenAction(){
				$this->setResponse("view");
				$fecha=$_REQUEST["fecha"];
				//Flash::notice($fecha);
				$this->setParamToView("fecha",$fecha);
				//Flash::notice($fecha);
	
		}
		
		public function detalle_extracto_resumen2Action(){
				$this->setResponse("view");
				$fecha=$_REQUEST["fecha"];
				//Flash::notice($fecha);
				$this->setParamToView("fecha",$fecha);
				//Flash::notice($fecha);
	
		}

		
		public function detalle_extracto_resumen_csvAction(){
			
				$this->setResponse("view");
		
		}
		
	
	
	}



?>