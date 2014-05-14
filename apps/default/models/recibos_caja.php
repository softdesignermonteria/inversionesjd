<?php 
class RecibosCaja extends ActiveRecord{

	public function initialize(){
		
		$this->belongsTo("cobradores");
		$this->belongsTo("creditos");
		
		$this->hasMany("detalle_recibos_caja");
       
	}
		
		
}
?>