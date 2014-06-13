<?php

  class Clientes extends ActiveRecord{

  

  	public function initialize(){
		$this->hasMany("creditos");
		$this->hasMany("recibos_caja");
		$this->hasMany("view_cartera");
		$this->belongsTo("departamentos");
		$this->belongsTo("municipios");

		

	}

  

  }



?>