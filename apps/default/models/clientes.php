<?php

  class Clientes extends ActiveRecord{

  

  	public function initialize(){
		$this->hasMany("creditos");
		$this->hasMany("recibos_caja");
		$this->belongsTo("departamentos");
		$this->belongsTo("municipios");

		

	}

  

  }



?>