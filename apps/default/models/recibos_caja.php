<?php 
class RecibosCaja extends ActiveRecord{

	public function initialize(){
		
		$this->belongsTo("cobradores");
		$this->belongsTo("creditos");
		$this->belongsTo("clientes");
		$this->hasMany("detalle_recibos_caja");
       
	}
		
		
}
?>