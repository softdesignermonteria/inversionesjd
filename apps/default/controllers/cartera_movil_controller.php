<?php

	class Cartera_movilController extends ApplicationController {
	
			
		public function initialize() {
		   //$this->setTemplateAfter("a_bit_boxy");
		   
		   // $this->setTemplateAfter("menu_azul");
		   	//$temp=$this->Admin->findFirst(" id = '".Session::get("tipo_usuario")."' ")->plantilla;
			$this->setTemplateAfter("adminiziolite");
		}
		
		public function indexAction(){
		
		}
		
		public function extraer_carteraAction(){
			$condicion = "";

		   if(isset($_REQUEST["cobradores_id"])){
			   	if($_REQUEST["cobradores_id"]!=''){ $condicion .= "  and creditos.cobradores_id = '".$_REQUEST["cobradores_id"]."'"; }
			}
		   if(isset($_REQUEST["creditos_id"])){
			   if($_REQUEST["creditos_id"]!=''  ){ $condicion .= "  and {#Creditos}.id = '".$_REQUEST["creditos_id"]."'"; } 
			 }
			 
			 if(isset($_REQUEST["clientes_id"])){
			   if($_REQUEST["clientes_id"]!=''  ){ $condicion .= "  and {#Clientes}.id = '".$_REQUEST["clientes_id"]."'"; } 
			 } 

			
			$groupFields = "Group by 
			                {#DetalleCxc}.id,
							{#DetalleCxc}.creditos_id,
							{#Creditos}.clientes_id,
							{#Clientes}.nit,
							{#Creditos}.cobradores_id,
							{#Creditos}.total_credito,
							{#Cobradores}.nit ,
							{#DetalleCxc}.vencimiento,
							{#DetalleCxc}.valor
						";

			$query = new ActiveRecordJoin(array(
				    "entities" => array("Creditos", "DetalleCxc","Clientes","Cobradores"),
					"fields" => array(
						"{#DetalleCxc}.id",
						"{#DetalleCxc}.creditos_id",
						"{#Creditos}.clientes_id",
						"{#Clientes}.nit",
						"{#Creditos}.cobradores_id",
						"{#Creditos}.total_credito",
						"{#Cobradores}.nit as nit_cobrador",
						"{#DetalleCxc}.vencimiento",
						"sum(detalle_cxc.valor * detalle_cxc.multiplicar) AS valor_cuota",
						"ifnull((SELECT sum(rc.valor) AS valor FROM detalle_recibos_caja rc WHERE rc.detalle_cxc_id = detalle_cxc.id and rc.anulado = 0), 0) AS valor_pagado",
						"ifnull((SELECT sum(nc.valor) AS valor FROM detalle_notas_credito nc WHERE nc.detalle_cxc_id = detalle_cxc.id and nc.anulado = 0), 0) AS valor_nota_credito"
						),
					/*"groupFields" => array("DetalleCxc}.id")*/
					/*"groupFields" => array(
											"{#DetalleCxc}.id",
											"{#DetalleCxc}.creditos_id",
											"{#Creditos}.clientes_id",
											"{#Clientes}.nit",
											"{#Creditos}.cobradores_id",
											"{#Cobradores}.nit as nit_cobrador",
											"{#DetalleCxc}.vencimiento",
											"{#DetalleCxc}.valor",
											"sum(detalle_cxc.valor * detalle_cxc.multiplicar) AS valor_cuota",
											"ifnull((SELECT sum(rc.valor) AS valor FROM detalle_recibos_caja rc WHERE rc.detalle_cxc_id = detalle_cxc.id and rc.anulado = 0), 0) AS valor_pagado",
											"ifnull((SELECT sum(nc.valor) AS valor FROM detalle_notas_credito nc WHERE nc.detalle_cxc_id = detalle_cxc.id and nc.anulado = 0), 0) AS valor_nota_credito"
										),*/
					"conditions" => " {#DetalleCxc}.anulado = 0 $condicion $groupFields ",
					"having" => " (valor_cuota - valor_pagado - valor_nota_credito ) > 0 and valor_cuota > 0 "
			));
			
			
			$this->setParamToView("detalles",$query->getResultSet());
			//$this->setParamToView("detalles",$result );
			$this->setResponse("view");
		
		}
		
		public function extraer_cartera_martesAction(){
			$condicion = "";
			
			$encabezado = $_REQUEST["clientes"];
			$encabezado = json_decode($encabezado);
		    //if($_REQUEST["cobradores_id"]!=''){ $condicion .= "  and creditos.cobradores_id = '".$_REQUEST["cobradores_id"]."'"; }

			
			$groupFields = "Group by 
			                {#DetalleCxc}.id,
							{#DetalleCxc}.creditos_id,
							{#Creditos}.clientes_id,
							{#Clientes}.nit,
							{#Creditos}.cobradores_id,
							{#Cobradores}.nit ,
							{#DetalleCxc}.vencimiento,
							{#DetalleCxc}.valor
						";

			$query = new ActiveRecordJoin(array(
				    "entities" => array("Creditos", "DetalleCxc","Clientes","Cobradores"),
					"fields" => array(
						"{#DetalleCxc}.id",
						"{#DetalleCxc}.creditos_id",
						"{#Creditos}.clientes_id",
						"{#Clientes}.nit",
						"{#Creditos}.cobradores_id",
						"{#Cobradores}.nit as nit_cobrador",
						"{#DetalleCxc}.vencimiento",
						"sum(detalle_cxc.valor * detalle_cxc.multiplicar) AS valor_cuota",
						"ifnull((SELECT sum(rc.valor) AS valor FROM detalle_recibos_caja rc WHERE rc.detalle_cxc_id = detalle_cxc.id and rc.anulado = 0), 0) AS valor_pagado",
						"ifnull((SELECT sum(nc.valor) AS valor FROM detalle_notas_credito nc WHERE nc.detalle_cxc_id = detalle_cxc.id and nc.anulado = 0), 0) AS valor_nota_credito"
						),
					/*"groupFields" => array("DetalleCxc}.id")*/
					/*"groupFields" => array(
											"{#DetalleCxc}.id",
											"{#DetalleCxc}.creditos_id",
											"{#Creditos}.clientes_id",
											"{#Clientes}.nit",
											"{#Creditos}.cobradores_id",
											"{#Cobradores}.nit as nit_cobrador",
											"{#DetalleCxc}.vencimiento",
											"{#DetalleCxc}.valor",
											"sum(detalle_cxc.valor * detalle_cxc.multiplicar) AS valor_cuota",
											"ifnull((SELECT sum(rc.valor) AS valor FROM detalle_recibos_caja rc WHERE rc.detalle_cxc_id = detalle_cxc.id and rc.anulado = 0), 0) AS valor_pagado",
											"ifnull((SELECT sum(nc.valor) AS valor FROM detalle_notas_credito nc WHERE nc.detalle_cxc_id = detalle_cxc.id and nc.anulado = 0), 0) AS valor_nota_credito"
										),*/
					"conditions" => " {#DetalleCxc}.anulado = 0 
										and {#Creditos}.clientes_id = '$encabezado->clientes_id' 
										and date_format({#DetalleCxc}.vencimiento, '%w') = 2 
										$condicion 
										$groupFields ",
					"having" => " (valor_cuota - valor_pagado - valor_nota_credito ) > 0 and valor_cuota > 0 "
			));
			
			
			$this->setParamToView("detalles",$query->getResultSet());
			//$this->setParamToView("detalles",$result );
			$this->setResponse("view");
		
		}
				
		
}