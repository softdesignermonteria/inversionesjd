<?php

class DetalleEgresos extends ActiveRecord{


	public function initialize(){
		
       $this->belongsTo("egresos");
	}
	
	


}

?>