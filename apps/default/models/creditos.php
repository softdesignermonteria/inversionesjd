<?php

class Creditos extends ActiveRecord{


	public function initialize(){
	   $this->hasMany("detalle_cxc");
	   $this->hasMany("cxc");
       $this->belongsTo("clientes");
	   $this->belongsTo("cobradores");
	}
	
	
}

?>