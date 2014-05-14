<?php

  class Clientes extends ActiveRecord{

  

  	public function initialize(){
		$this->hasMany("creditos");
		$this->belongsTo("departamentos");
		$this->belongsTo("municipios");

		

	}

  

  }



?>