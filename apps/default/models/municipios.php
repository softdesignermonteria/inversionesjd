<?php
 
  class Municipios extends ActiveRecord{
  		
		public function initialize(){
			
			$this->belongsTo("municipios");
		   
		}
  }

?>