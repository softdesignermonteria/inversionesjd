<?php

class MenuappController extends ApplicationController {



	public function initialize() {
		//$this->setTemplateAfter("a_bit_boxy");
		 //$this->setTemplateAfter("menu_azul","ayuda");
		 	$temp=$this->Admin->findFirst(" md5(id) = '".Session::get(md5("usuarios_id"))."' ")->plantilla;
			$this->setTemplateAfter("$temp");
		 // $this->setTemplateAfter("menu_azul");
		 //Tag::addJavascript("dtree");
		 //Tag::stylesheetLink("dtree");
	}

	public function indexAction(){
		
		
	}
	
	
	
	public function agregarAction(){
		$this->setResponse("view");
		
	}
	
	public function modificarAction(){
		$this->setResponse("view");
		
	}
	
	public function eliminarAction(){
		$this->setResponse("view");
		
	}
	
	public function detalle_buscarAction(){
		$this->setResponse("view");
		$app = $_REQUEST["aplicaciones_mod"];
		$pos = $_REQUEST["posiciones_mod"];
		$px = $_REQUEST["posicion_x_mod"];
		$condicion1 = '';
		$condicion2 = '';
		$condicion3 = '';
		
		if($app!=''){$condicion1 = " and aplicacion = '$app' "; }
		if($pos!=''){$condicion1 = " and posicion = '$pos' "; }
		if($px!=''){$condicion1 = " and posicion_x = '$px' "; }
		//Flash::notice($this->Menu->count( " aplicacion = '$app' and posicion = '$pos' and posicion_x > 0","order: orden" ));
		//Flash::notice("select * from menu where aplicacion = '$app' and posicion = '$pos' and posicion_x > 0 order by orden");
		$this->setParamToView("detalles", $this->Menu->find( " 1 = 1 $condicion1  $condicion2  $condicion3  ","order: orden" ) );
	}
	
	public function detalle_buscar_deleteAction(){
		$this->setResponse("view");
		$app = $_REQUEST["aplicaciones"];
		$pos = $_REQUEST["posiciones"];
		$condicion1 = '';
		$condicion2 = '';
		$condicion3 = '';
		if($app!=''){$condicion1 = " and aplicacion = '$app' "; }
		if($pos!=''){$condicion1 = " and posicion = '$pos' "; }
		if($px!=''){$condicion1 = " and posicion_x = '$px' "; }
		//Flash::notice($this->Menu->count( " aplicacion = '$app' and posicion = '$pos' and posicion_x > 0","order: orden" ));
		//Flash::notice("select * from menu where aplicacion = '$app' and posicion = '$pos' and posicion_x > 0 order by orden");
		$this->setParamToView("detalles", $this->Menu->find( " 1 = 1 $condicion1  $condicion2  $condicion3  ","order: orden" ) );
	}
	
	public function posicion_xAction(){
		$this->setResponse("view");
		$app = $_REQUEST["aplicaciones"];
		$pos = $_REQUEST["posiciones"];
		//Flash::notice($this->Menu->count( " aplicacion = '$app' and posicion = '$pos' and posicion_x > 0","order: orden" ));
		//Flash::notice("select * from menu where aplicacion = '$app' and posicion = '$pos' and posicion_x > 0 order by orden");
		$this->setParamToView("detalles", $this->Menu->find( " aplicacion = '$app' and posicion = '$pos' and posicion_x > 0","order: orden" ) );
	}
	
	public function showAction(){
		$this->setResponse("view");
		//Flash::notice($this->Menu->count( " aplicacion = '$app' and posicion = '$pos' and posicion_x > 0","order: orden" ));
		//Flash::notice("select * from menu where aplicacion = '$app' and posicion = '$pos' and posicion_x > 0 order by orden");
		$this->setParamToView("left", $this->Menu->find( " 1 = 1 and posicion = 'left'  ","order: posicion_x,posicion_y,orden" ) );
		$this->setParamToView("navegacion", $this->Menu->find( " 1 = 1 and posicion = 'navegacion'  ","order: posicion_x,posicion_y,orden" ) );
		$this->setParamToView("aplicaciones", $this->Menu->find( " 1 = 1 and posicion = 'aplicaciones'  ","order: posicion_x,posicion_y,orden" ) );
	}
	
	
	
	public function posicion_yAction(){
		$this->setResponse("view");
		
		$app = $_REQUEST["aplicaciones"];
		$pos = $_REQUEST["posiciones"];
		$px =  $_REQUEST["posicion_x"];
		$py =  $_REQUEST["posicion_y"];
		//Flash::notice($this->Menu->count( " aplicacion = '$app' and posicion = '$pos' and posicion_x = '$px' ","order: orden" ) );
		//Flash::notice("select * from menu where aplicacion = '$app' and posicion = '$pos' and posicion_y = '$px' order by orden");
		$this->setParamToView("detalles", $this->Menu->find( " aplicacion = '$app' and posicion = '$pos' and posicion_y = '$py' and posicion_x = '$px' ","order: orden" ) );
		
		
	}
	
	
	public function buscarAction(){
		
		
	}
	
	
	public function addAction(){
		
		$this->setResponse("view");
			
			$sw = 0;
			
			if( $this->getPostParam("posicion_x")   == ''){ $sw=1; Flash::error("Posicion x es Requerido"); }
			if( $this->getPostParam("posicion_y")   == ''){ $sw=1; Flash::error("Posicion y Requerido"); }
			if( $this->getPostParam("orden")        == ''){ $sw=1; Flash::error("Orden es Requerido"); }
			if( $this->getPostParam("descripcion")  == ''){ $sw=1; Flash::error("Descripcion es Requerido"); }
			if( $this->getPostParam("titulo")       == ''){ $sw=1; Flash::error("Tittle es Requerido"); }
			if( $this->getPostParam("aplicaciones") == '' && $this->getPostParam("posiciones_mod")== '@' ){ $sw=1; Flash::error("Aplicacion es Requerido"); }
			if( $this->getPostParam("posiciones")   == '' && $this->getPostParam("posiciones_mod")== '@' ){ $sw=1; Flash::error("Posicion es Requerido"); }
			if( $this->getPostParam("secciones")    == '' && $this->getPostParam("posiciones_mod")== '@' ){ $sw=1; Flash::error("Seccion es Requerido"); }
			if( $this->getPostParam("urlimage")     == ''){ $sw=1; Flash::error("Url image es Requerido"); }
			
			if($sw==0){
			
				$encabezado  = new Menu();
				//$encabezado = $this->Turnos->findFirst("id = '".$this->getPostParam("id")."' ");
				//cargamos el objeto mediantes los metodos setters
				$encabezado->id             = '';
				$encabezado->posicion_x     = $this->getPostParam("posicion_x");
				$encabezado->posicion_y     = $this->getPostParam("posicion_y");
				$encabezado->orden          = $this->getPostParam("orden");
				$encabezado->descripcion    = $this->getPostParam("descripcion");
				$encabezado->tittle         = $this->getPostParam("titulo");
				$encabezado->url            = $this->getPostParam("url");
				$encabezado->aplicacion     = $this->getPostParam("aplicaciones");
				$encabezado->posicion       = $this->getPostParam("posiciones");
				$encabezado->seccion        = $this->getPostParam("secciones");
				$encabezado->urlimage       = $this->getPostParam("urlimage");
						
				if($encabezado->save()){

					Flash::success("Menu o Items / Agregado Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";

				 }else{
					Flash::error("Error: No se pudo insertar registro");	
					foreach($encabezado->getMessages() as $message):
						Flash::error("Error: ".$message);
					endforeach;
				 }
				
			}//fin si todo bien
		
	}
	
	
	public function updateAction(){
		
		$this->setResponse("view");
			
			$sw = 0;
			
			if( $this->getPostParam("posicion_x_mod")   == ''){ $sw=1; Flash::error("Posicion x es Requerido"); }
			if( $this->getPostParam("posicion_y_mod")   == ''){ $sw=1; Flash::error("Posicion y Requerido"); }
			if( $this->getPostParam("orden_mod")        == ''){ $sw=1; Flash::error("Orden es Requerido"); }
			if( $this->getPostParam("descripcion_mod")  == ''){ $sw=1; Flash::error("Descripcion es Requerido"); }
			if( $this->getPostParam("titulo_mod")       == ''){ $sw=1; Flash::error("Tittle es Requerido"); }
			if( $this->getPostParam("aplicaciones_mod") == '' && $this->getPostParam("posiciones_mod")== '@' ){ $sw=1; Flash::error("Aplicacion es Requerido"); }
			if( $this->getPostParam("posiciones_mod")   == '' && $this->getPostParam("posiciones_mod")== '@' ){ $sw=1; Flash::error("Posicion es Requerido"); }
			if( $this->getPostParam("secciones_mod")    == '' && $this->getPostParam("posiciones_mod")== '@' ){ $sw=1; Flash::error("Seccion es Requerido"); }
			if( $this->getPostParam("urlimage_mod")     == ''){ $sw=1; Flash::error("Url image es Requerido"); }
			
			
			
			if($sw==0){
			
				$encabezado  = new Menu();
				//$encabezado = $this->Turnos->findFirst("id = '".$this->getPostParam("id")."' ");
				//cargamos el objeto mediantes los metodos setters
				$encabezado->id             = $this->getPostParam("id_mod");
				$encabezado->posicion_x     = $this->getPostParam("posicion_x_mod");
				$encabezado->posicion_y     = $this->getPostParam("posicion_y_mod");
				$encabezado->orden          = $this->getPostParam("orden_mod");
				$encabezado->descripcion    = $this->getPostParam("descripcion_mod");
				$encabezado->tittle         = $this->getPostParam("titulo_mod");
				$encabezado->url            = $this->getPostParam("url_mod");
				$encabezado->aplicacion     = $this->getPostParam("aplicaciones_mod");
				$encabezado->posicion       = $this->getPostParam("posiciones_mod");
				$encabezado->seccion        = $this->getPostParam("secciones_mod");
				$encabezado->urlimage       = $this->getPostParam("urlimage_mod");
						
				if($encabezado->save()){

					Flash::success("Menu o Items / Modificado Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
					echo "<script>
							jQuery('#div_modificar').hide();
							jQuery('#fx2').submit();
							jQuery('#div_buscar_modificar').show();
						 </script>";

				 }else{
					Flash::error("Error: No se pudo insertar registro");	
					foreach($encabezado->getMessages() as $message):
						Flash::error("Error: ".$message);
					endforeach;
				 }
				
			}//fin si todo bien
		
	}
	
	
	public function deleteAction(){
		
		$this->setResponse("view");
			
			$sw = 0;
			
			
			if($sw==0){
			
				$encabezado  = new Menu();
				//$encabezado = $this->Turnos->findFirst("id = '".$this->getPostParam("id")."' ");
				//cargamos el objeto mediantes los metodos setters
				$encabezado->id             = $this->getPostParam("id_del");
				
				if($encabezado->delete()){

					Flash::success("Menu o Items / Borrado Satisfactoriamente");
					echo "<script>quitar_mensajes();</script>";
					
					echo "<script>
							jQuery('#div_delete').hide();
							jQuery('#fx3').submit();
							jQuery('#div_buscar_delete').show();
						 </script>";


				 }else{
					Flash::error("Error: No se pudo insertar registro");	
					foreach($encabezado->getMessages() as $message):
						Flash::error("Error: ".$message);
					endforeach;
				 }
				
			}//fin si todo bien
		
	}
	
	
	

}

?>