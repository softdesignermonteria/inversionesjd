<?php

  class Cobradores extends ActiveRecord{

  

  	public function initialize(){
		$this->hasMany("recibos_caja");
		

	}

  

  }



?>