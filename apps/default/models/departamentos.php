<?php
 
  class Departamentos extends ActiveRecord{
  
  
		public function initialize(){
			
			$this->hasMany("departamentos");
		   
		}
  
  }

?>