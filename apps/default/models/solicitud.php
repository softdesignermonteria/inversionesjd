<?php

  class Solicitud extends ActiveRecord{

  

  	public function initialize(){

		$this->hasMany("solicitud_detalle");

		$this->hasMany("creditos");

	}

	public function beforeSave(){

          	if($this->numero_cuotas == 0 ){
                Flash::error("El numero de Cuotas debe ser Mayor a cero");
                return 'cancel';
            }
			
			if($this->valor_cuota == 0 ){
                Flash::error("El Valor de las Cuotas debe ser Mayor a cero");
                return 'cancel';
            }
			
			if($this->total_credito == 0 ){
                Flash::error("EL valor Total del Credito debe ser Mayor a cero");
                return 'cancel';
            }
      
    }
	
  

  }



?>