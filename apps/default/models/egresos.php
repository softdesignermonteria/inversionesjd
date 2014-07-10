<?php
 
  class Egresos extends ActiveRecord{
  
  	public function initialize(){

				$this->belongsTo("tipo_documento");
				$this->belongsTo("cobradores_id");
				$this->belongsTo("empresa");
				$this->belongsTo("forma_pago");
				$this->hasMany("detalle_egresos");
				
	}
  
  }

?>