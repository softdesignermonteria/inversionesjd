<?php

  class Cobradores extends ActiveRecord{

  

  	public function initialize(){
		$this->hasMany("cobradores");

/*
		$this->hasMany("saldo_remisiones");

		$this->hasMany("remisiones");

		$this->hasMany("cxc");

		$this->hasMany("direccion");

		$this->hasMany("anticipos");

		$this->hasMany("recibos_caja");

		$this->hasMany("devoluciones");*/

		

		

	}

  

  }



?>