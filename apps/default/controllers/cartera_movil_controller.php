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

		   if($_REQUEST["cobradores_id"]!=''){ $condicion .= "  and creditos.cobradores_id = '".$_REQUEST["cobradores_id"]."'"; }

			
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
					"conditions" => " {#DetalleCxc}.anulado = 0 $condicion $groupFields ",
					"having" => " (valor_cuota - valor_pagado - valor_nota_credito ) > 0 and valor_cuota > 0 "
			));
			
			//echo $query->getSqlQuery(); 
			
			/*$db = DbBase::rawConnect();
			 /*si se modifica el sql de detallecxc/fin_detalle_buscar cambiar este tambien*/
			/*$sql = "SELECT 
					  creditos.empresa_id,
					  creditos.clientes_id,
					  creditos.fecha,
					  detalle_cxc.id,
					  detalle_cxc.idt,
					  detalle_cxc.tipo_documento_id,
					  detalle_cxc.prefijo,
					  detalle_cxc.consecutivo,
					  detalle_cxc.vencimiento,
					  detalle_cxc.codigo,
					  sum(detalle_cxc.valor * detalle_cxc.multiplicar) AS valor_cuota,
					  ifnull((SELECT sum(rc.valor) AS valor FROM detalle_recibos_caja rc WHERE rc.detalle_cxc_id = detalle_cxc.id and rc.anulado = 0), 0) AS valor_pagado,
					  ifnull((SELECT sum(nc.valor) AS valor FROM detalle_notas_credito nc WHERE nc.detalle_cxc_id = detalle_cxc.id and nc.anulado = 0), 0) AS valor_nota_credito
					FROM
					  creditos,
					  detalle_cxc,
					  cobradores
					WHERE
					  
					  creditos.id = detalle_cxc.creditos_id
					  and creditos.cobradores_id = cobradores.id
					  and detalle_cxc.anulado = 0
					  $condicion
					GROUP BY
					  creditos.empresa_id,
					  creditos.clientes_id,
					  creditos.fecha,
					  detalle_cxc.tipo_documento_id,
					  detalle_cxc.prefijo,
					  detalle_cxc.consecutivo,
					  detalle_cxc.vencimiento,
					  detalle_cxc.codigo,
					  
					  ifnull((SELECT sum(rc.valor) AS valor FROM detalle_recibos_caja rc WHERE rc.detalle_cxc_id = detalle_cxc.id and rc.anulado=0), 0),
					  ifnull((SELECT sum(nc.valor) AS valor FROM detalle_notas_credito nc WHERE nc.detalle_cxc_id = detalle_cxc.id and nc.anulado = 0), 0)
					HAVING
					  (valor_cuota - valor_pagado - valor_nota_credito ) > 0  and valor_cuota > 0 ";
			
			$result = $db->query( $sql ); */
			echo $sql;
			$this->setParamToView("detalles",$query->getResultSet());
			//$this->setParamToView("detalles",$result );
			$this->setResponse("view");
		
		}
				
		
}