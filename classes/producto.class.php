<?php

class Producto extends Main
{
	private $id;
	private $nombre;
	private $presentacion;
	private $costo;
	private $vAdministracion;

	public function setId($value){
		$this->Util()->ValidateInteger($value);
		$this->id = $value;
	}
	
	public function setEstabloId($value){
		if($this->Util()->ValidateRequireField($value, 'Seleccione un establo'))
			$this->establoId = $value;
	}
	
	public function setNombre($value){	
		if($this->Util()->ValidateRequireField($value, 'Nombre')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->nombre = $value;
		}		
	}

				
	public function setPresentacion($value){
		if($this->Util()->ValidateRequireField($value, 'Presentacion')){
			$this->presentacion = $value;
		}
	}
	
	public function setCosto($value, $validate = false){
		if($this->Util()->ValidateRequireField($value, 'Costo')){
			if($this->Util()->ValidateRequireField($value, 'Costo')){
				$this->costo = $value;			
			}		
		}
	}
	
	public function setVAdministracion($value){	
		if($this->Util()->ValidateRequireField($value, 'Via de administracion')){
			$this->Util()->ValidateString($value, 2550, 0, 'Via de administracion');
			$this->vAdministracion = $value;
		}		
	}

		
	public function Info(){
		
		$sql = 'SELECT *, productoId AS idReg FROM producto WHERE productoId = "'.$this->id.'"';
		$this->Util()->DB()->setQuery($sql);
		$info = $this->Util()->DB()->GetRow();
				
		$info['estado'] = $this->Util()->GetNomEstado($info['estadoId']);
		$info['municipio'] = $this->Util()->GetNomMunicipio($info['municipioId']);
				
		return $info;
	}//Info
	
	public function CompleteProduct($nombre){
		
		$sql = "SELECT * FROM producto 
				WHERE nombre LIKE '".$nombre."%'
				ORDER BY nombre ASC
				LIMIT 10
		";
		$this->Util()->DB()->setQuery($sql);
		$registros = $this->Util()->DB()->GetResult();
							
		return $registros;
		
	}//EnumerateAll
	
	public function EnumerateAll(){
	
		if(!empty($this->establoId)){
			$dato = " AND establoId = '".$this->establoId."'";
		}
		
		$sql = "SELECT *, productoId AS idReg FROM producto 
				WHERE statusReg = 'activo'
				".$dato."
				ORDER BY nombre ASC";
		$this->Util()->DB()->setQuery($sql);
		$registros = $this->Util()->DB()->GetResult();
							
		return $registros;
		
	}//EnumerateAll
		
	public function Enumerate($parametro = array() ){
		
		if($parametro['filtro']){

			if(!empty($parametro['nombre'])){
				$sqlF .= " AND nombre LIKE '".$parametro['nombre']."%'";
			}
			if(!empty($parametro['vAdministracion'])){
				$sqlF .= " AND vAdministracion = '".$parametro['vAdministracion']."' ";
			}
			
			if(!empty($parametro['establoId'])){
				$sqlF .= " AND establoId = '".$parametro['establoId']."' ";
			}
		
		}

		
		$sql = "SELECT COUNT(*)	FROM producto WHERE statusReg = 'activo' ".$sqlF."";
		$this->Util()->DB()->setQuery($sql);
		$total = $this->Util()->DB()->GetSingle();
		
		$resPage = $this->Util->HandlePagesAjax($this->page, $total , '');		
		
		$sqlLim = "LIMIT ".$resPage['pages']['start'].", ".$resPage['pages']['items_per_page'];
		 
		$sql = "SELECT *, productoId AS idReg FROM producto 
				WHERE statusReg = 'activo'
				".$sqlF."
				ORDER BY nombre ASC
				".$sqlLim;
		$this->Util()->DB()->setQuery($sql);
		$data['result'] = $this->Util()->DB()->GetResult();
		
		$data['pages'] = $resPage['pages'];
		$data['info'] = $resPage['info'];
					
		return $data;
		
	}//Enumerate
	
	public function Save(){
						
		if($this->Util()->PrintErrors()){ 
			return false; 
		}
		
		$sql = '
			INSERT INTO producto 
			(
				nombre, 
				presentacion,
				costo, 
				vAdministracion,
				establoId
			)
			VALUES(
				"'.$this->nombre.'", 
				"'.$this->presentacion.'",
				"'.$this->costo.'", 
				"'.$this->vAdministracion.'",
				"'.$this->establoId.'"
			)
		';
		$this->Util()->DB()->setQuery($sql);
		$this->Util()->DB()->InsertData();
			
		$this->Util()->setError(10112, 'complete', '');
		$this->Util()->PrintErrors();
		
		return true;
		
	}//Save
	
	public function Update(){
						
		if($this->Util()->PrintErrors()){ 
			return false; 
		}

		$sql = 'UPDATE producto SET 
				nombre = "'.$this->nombre.'", 
				presentacion = "'.$this->presentacion.'", 
				costo = "'.$this->costo.'", 
				vAdministracion = "'.$this->vAdministracion.'",
				establoId = "'.$this->establoId.'"
				
				WHERE productoId = "'.$this->id.'"';
		$this->Util()->DB()->setQuery($sql);
		$this->Util()->DB()->UpdateData();
			
		$this->Util()->setError(10113, 'error', '');
		$this->Util()->PrintErrors();
		
		return true;
		
	}//Update
	
	public function Delete(){
		
		$sql = 'UPDATE producto SET 
				statusReg = "inactivo"
				WHERE productoId = "'.$this->id.'"';
		$this->Util()->DB()->setQuery($sql);
		$this->Util()->DB()->UpdateData();
		
		$this->Util()->setError(10114, 'error', '');
		$this->Util()->PrintErrors();
		
		return true;
		
	}//Delete
						
}

?>