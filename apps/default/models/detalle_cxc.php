<?php
class DetalleCxc extends ActiveRecord{

	public function initialize(){
			$this->belongsTo("creditos");
	}
	
	
}
?>