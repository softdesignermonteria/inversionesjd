<?php

  class SolicitudDetalle extends ActiveRecord{

   	public function initialize(){
		$this->belongsTo("solicitud");
	}
	
	
	
  }



?>