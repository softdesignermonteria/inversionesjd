<?php

class Recibos_caja_movilController extends ApplicationController {



	public function initialize() {
			//$this->setTemplateAfter("a_bit_boxy");
			 //$this->setTemplateAfter("menu_azul");

			 $temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;

			$this->setTemplateAfter("$temp");
	}

	public function indexAction(){
		
		
	}
	
	
	public function addAction(){

			 $this->setResponse('view');
			 
			 $encabezado=$_POST["encabezado"];
			 
			 $syslogger = new Syslogger();
			 //$syslogger->setTransaction($transaction);
			 $syslogger->username          = Session::get(md5("admin_username"));
			 $syslogger->module            = Router::getModule();
			 $syslogger->application       = Router::getApplication();
			 $syslogger->controller        = $this->getControllerName();
			 $syslogger->action            = $this->getActionName();
			 $syslogger->error_sistema     = "Recibo de caja Subido de Movil";
			 $syslogger->descripcion       = "Recibo de caja Subido de Movil";
			 $syslogger->ip_remota         = $_SERVER['REMOTE_ADDR'];
			 $syslogger->fecha             = date("Y-m-d H:i:s");
			 $syslogger->tipo_documento_id = "";
			 $syslogger->prefijo           = "";
			 $syslogger->consecutivo       = "";
			 $syslogger->objeto            = json_decode($encabezado);
			 
			 if(!$syslogger->save()){
				$responce[]=array("mensaje"=>"true");
				$this->setParamToView("responce",$responce);
			 }else{
				$responce[]=array("mensaje"=>"false");
				$this->setParamToView("responce",$responce);
			 }
			 
			
	}



}

?>