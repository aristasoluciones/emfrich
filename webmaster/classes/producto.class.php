<?php

class Producto extends Main
{
	private $id;
	private $nombre;
	private $descripcion;
	private $aquien;
	private $ventaja;
	

	public function setId($value){
		$this->Util()->ValidateInteger($value);
		$this->id = $value;
	}
	public function setNombre($value){
		if($this->Util()->ValidateRequireField($value, 'Nombre')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->nombre = $value;
		}
	}
	public function setDescripcion($value){
		if($this->Util()->ValidateRequireField($value, 'Descripcion')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->descripcion = $value;
		}
	}	
	public function setAquien($value){
		if($this->Util()->ValidateRequireField($value, ' A quien va dirigido')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->aquien = $value;
		}
	}
    public function setVentaja($value){
		if($this->Util()->ValidateRequireField($value, 'Ventajas ')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->ventaja= $value;
		}
	}
 
	//Ontener datos y listados
	public function Info(){
		$sql = 'SELECT * FROM categoria WHERE categoriaId = "'.$this->id.'"';
		$this->Util()->DB()->setQuery($sql);
		$info = $this->Util()->DB()->GetRow();		
		return $info;
	}
	
	public function EnumerateAll(){
		$sql = 'SELECT * FROM categoria';
		$this->Util()->DB()->setQuery($sql);
		$result = $this->Util()->DB()->GetResult();
		return $result;
	}
	
	public function Enumerate(){
		
		$sql = 'SELECT COUNT(*)	FROM catalogo_tramites WHERE status = "alta"';
		$this->Util()->DB()->setQuery($sql);
		$total = $this->Util()->DB()->GetSingle();
		
		$resPage = $this->Util->HandlePagesAjax($this->page, $total , '');		
		$sqlLim = "LIMIT ".$resPage['pages']['start'].", ".$resPage['pages']['items_per_page'];
		 
		$sql = 'SELECT 
				*
				FROM catalogo_tramites 
				
				WHERE status = "alta"
				ORDER BY nombre_corto DESC
				'.$sqlLim;
		$this->Util()->DB()->setQuery($sql);
		$data['result'] = $this->Util()->DB()->GetResult();
		
		$data['pages'] = $resPage['pages'];
		$data['info'] = $resPage['info'];
					
		return $data;
		
	}//Enumerate
    //FUNCIONES DE VALIDACION
    
	public function Save(){
						
		if($this->Util()->PrintErrors()){ 
			return false; 
		}
		$sql = "
		INSERT INTO  categoria (
				`nombre`, 
				`descripcion`,
				`aquien`,
				`ventajas`
				)
				VALUES (
				'".$this->nombre."',
				'".$this->descripcion."',
				'".$this->aquien."',
				'".$this->ventaja."'
				);
		";
		$this->Util()->DB()->setQuery($sql);
		$this->Util()->DB()->InsertData();
			
		$this->Util()->setError(10129, 'complete', '');
		$this->Util()->PrintErrors();
		return true;	
	}//Save
	
	public function Update(){		
		if($this->Util()->PrintErrors()){ 
			return false; 
		}
		$sql = 'UPDATE 
				categoria SET 
				nombre = "'.$this->nombre.'",			
				descripcion = "'.$this->descripcion.'",
				aquien = "'.$this->aquien.'",
				ventajas = "'.$this->ventaja.'"
				
				WHERE categoriaId = "'.$this->id.'"';
				
		$this->Util()->DB()->setQuery($sql);
		$this->Util()->DB()->UpdateData();
			
		$this->Util()->setError(10130, 'complete', '');
		$this->Util()->PrintErrors();
		
		return true;
	}//Update
	
	public function Delete(){
		
		$sql = 'UPDATE 
				categoria SET 
				status = "baja"
				WHERE categoriaId = "'.$this->id.'"';
				
		$this->Util()->DB()->setQuery($sql);
		$this->Util()->DB()->UpdateData();
			
		$this->Util()->setError(3, 'error', '');
		$this->Util()->PrintErrors();
		
		return true;
		
	}//
	
	
						
}

?>