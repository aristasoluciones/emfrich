<?php

class Imagen extends Main
{
	private $id;
	private $listamayorid;
	private $nombre;
	private $telefono;
	private $email;
	private $usuario;
	private $passwd;
	private $tipo;
	private $activo;
	private $establoId;
	private $dependenciaId;
	private $tiporeporte;
	private $apaterno;
	private $amaterno;
	private $calle;
	private $noexterior;
	private $colonia;
	private $ciudad;
	private $estado;
	private $pais;
	
	
	
	public function setCantidad($value){
		// $this->Util()->ValidateInteger($value);
		$this->cantidad = $value;
	}
	
	
	public function setId($value){
		$this->Util()->ValidateInteger($value);
		$this->id = $value;
	}
	
	
	public function setMayorId($value){
		$this->Util()->ValidateInteger($value);
		$this->listamayorid = $value;
	}
	
	
	public function setTipoId($value){
		$this->Util()->ValidateInteger($value);
		$this->tipoId = $value;
	}
	
	public function setUnidadId($value){
		$this->Util()->ValidateInteger($value);
		$this->unidadId = $value;
	}
	
	
	
	public function setPlatilloId($value){	
		
			$this->platilloId = $value;
		
	}
	
	public function setAmaterno($value){	
		if($this->Util()->ValidateRequireField($value, 'Apellido Materno')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->amaterno = $value;
		}		
	}
	
	public function setCalle($value){	
		if($this->Util()->ValidateRequireField($value, 'Calle')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->calle = $value;
		}		
	}
	
	public function setNoExterior($value){	
		if($this->Util()->ValidateRequireField($value, 'No. Exterior')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->noexterior = $value;
		}		
	}
	
	public function setColonia($value){	
		if($this->Util()->ValidateRequireField($value, 'Colonia')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->colonia = $value;
		}		
	}
	
	public function setCiudad($value){	
		if($this->Util()->ValidateRequireField($value, 'Ciudad')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->ciudad = $value;
		}		
	}
	
	public function setEstado($value){	
		if($this->Util()->ValidateRequireField($value, 'Estado')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->estado = $value;
		}		
	}
	
	public function setPais($value){	
		if($this->Util()->ValidateRequireField($value, 'Pais')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->pais = $value;
		}		
	}
	
	
	public function setNombre($value){	
		if($this->Util()->ValidateRequireField($value, 'Nombre')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->nombre = $value;
		}		
	}
	
	public function setTelefono($value){
		$this->Util()->ValidateString($value, 100, 0, '');
		$this->telefono = $value;
	}
	
	public function setEmail($value, $validate = false){	
		if($this->Util()->ValidateRequireField($value, 'Email')){
			if($validate)
				$this->Util()->ValidateMail($value);
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->email = $value;			
		}		
	}
	
	public function setUsuario($value){	
		if($this->Util()->ValidateRequireField($value, 'Usuario')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->usuario = $value;
		}		
	}
	
	public function setPasswd($value){	
		if($this->Util()->ValidateRequireField($value, 'Contrase&ntilde;a')){
			$this->Util()->ValidateString($value, 100, 0, '');
			$this->passwd = $value;
		}		
	}
	
	public function setTipo($value){	
		$this->Util()->ValidateString($value, 100, 0, '');
		$this->tipo = $value;
	}
	
	public function setActivo($value){	
		$this->Util()->ValidateString($value, 100, 0, '');
		$this->activo = $value;
	}
		
	public function Info(){
		
		$sql = 'SELECT *, listaId AS idReg FROM lista WHERE listaId = "'.$this->id.'"';
		$this->Util()->DB()->setQuery($sql);
		$info = $this->Util()->DB()->GetRow();	
		return $info;
	}//Info
	public function InfoCategoria(){
		$sql = 'SELECT * FROM categoria WHERE categoriaId = '.$this->id.'';
		$this->Util()->DB()->setQuery($sql);
		$info = $this->Util()->DB()->GetRow();
		return $info;
	}//Info
	public function getSliders()
	{
		$sql = 'SELECT * FROM imagen where tipo="slider"';
		$this->Util()->DB()->setQuery($sql);
		$result = $this->Util()->DB()->GetResult();
		return $result;
	}
	
	public function Infosucursal(){
		
		
		
			$sql = 'SELECT * FROM sucursal WHERE sucursalId = '.$this->id.'';
			$this->Util()->DB()->setQuery($sql);
			$info = $this->Util()->DB()->GetRow();

		
		return $info;
	}//Info
	
	public function infpuestos(){
		
		
		
			$sql = 'SELECT * FROM puestos WHERE puestosId = '.$this->id.'';
			$this->Util()->DB()->setQuery($sql);
			$info = $this->Util()->DB()->GetRow();

		
		return $info;
	}//Info
	
	public function infcontacto(){
		
		
		
			$sql = 'SELECT * FROM contacto WHERE contac_Id = '.$this->id.'';
			$this->Util()->DB()->setQuery($sql);
			$info = $this->Util()->DB()->GetRow();

		
		return $info;
	}//Info
	
	public function InfoUnidad($Id){
		
		$sql = 'SELECT 
					* 
				from
					unidad
				WHERE 
				unidadId = '.$Id.'';
		$this->Util()->DB()->setQuery($sql);
		$registros = $this->Util()->DB()->GetRow();
		
		return $registros;
	}
	
	
	
	public function EnumerateAll(){
		
		$sql = 'SELECT *, ingredienteId AS idReg FROM ingrediente 
				WHERE ingredienteId > 1
				ORDER BY nombre ASC';
		$this->Util()->DB()->setQuery($sql);
		$registros = $this->Util()->DB()->GetResult();
							
		return $registros;
		
	}//EnumerateAll
	
	public function EnumerateAllChat(){
		
		$sql = 'SELECT * FROM  dependencia
				WHERE 1
				ORDER BY nombre ASC';
		$this->Util()->DB()->setQuery($sql);
		$dep = $this->Util()->DB()->GetResult();
		
		end($dep);
		$key1 = key($dep) + 1;
		$dep[$key1]["dependenciaId"] =  0;
		$dep[$key1]["nombre"] =  "sin Asignar";
		
		
		foreach($dep as $key=>$aux){
			$sql = 'SELECT *, usuarioId AS idReg FROM usuario 
				WHERE usuarioId > 1 and (tipo = "funcionario" or tipo = "admin") and dependenciaId = '.$aux["dependenciaId"].'
				ORDER BY nombre ASC';
			$this->Util()->DB()->setQuery($sql);
			$registros = $this->Util()->DB()->GetResult();
			$dep[$key]["usuarios"] = $registros;
		}
		
			// echo "<pre>"; print_r($dep);
		// exit;	
		return $dep;
		
	}//EnumerateAll
		
	
	
	
	
	public function listaConProveedores($Id){
		
		 $sql = '
			SELECT 
				*,
				pr.nombre as nombreProveedor
			FROM 
				lista as l
			left join detalle_lista as dl on dl.listaId = l.listaId  
			left join platillo as p on p.platilloId = dl.platilloId  
			left join detalle_platillo as dp on dp.platilloId = p.platilloId  
			left join ingrediente as i on i.ingredienteId = dp.ingredienteId  
			left join proveedor as pr on pr.proveedorId = i.proveedorId  
			
			WHERE l.suma_listaId = '.$Id.' group by i.proveedorId';

		$this->Util()->DB()->setQuery($sql);
		$lst = $this->Util()->DB()->GetResult();
	
		foreach($lst as $key=>$aux){
			
			if($aux["proveedorId"]==null){
				$aux["proveedorId"] = 0;
			}
			
			 
			
			
		  $sql = '
			SELECT 
				*,
				pr.nombre as nombreProveedor,
				i.nombre as nombreIngrediente,
				u.nombre as nombreUnidad
			FROM 
				lista as l
			left join detalle_lista as dl on dl.listaId = l.listaId  
			left join platillo as p on p.platilloId = dl.platilloId  
			left join detalle_platillo as dp on dp.platilloId = p.platilloId  
			left join unidad as u on u.unidadId = dp.unidadId  
			left join ingrediente as i on i.ingredienteId = dp.ingredienteId  
			left join proveedor as pr on pr.proveedorId = i.proveedorId  
			WHERE l.suma_listaId = '.$Id.' and i.proveedorId = '.$aux["proveedorId"].' group by i.ingredienteId';
			$this->Util()->DB()->setQuery($sql);
			$lstIn = $this->Util()->DB()->GetResult();
			
			$sql = '
			SELECT 
				*
			FROM 
				suma_lista
			where suma_listaId = '.$Id.'';
			$this->Util()->DB()->setQuery($sql);
			$infoMay = $this->Util()->DB()->GetRow();
			
			
			
			foreach($lstIn as $key1=>$aux1){
				 $sql = '
					SELECT 
						*,
						pr.nombre as nombreProveedor,
						i.nombre as nombreIngrediente,
						u.nombre as nombreUnidad
					FROM 
						lista as l
					left join detalle_lista as dl on dl.listaId = l.listaId  
					left join platillo as p on p.platilloId = dl.platilloId  
					left join detalle_platillo as dp on dp.platilloId = p.platilloId  
					left join unidad as u on u.unidadId = dp.unidadId  
					left join ingrediente as i on i.ingredienteId = dp.ingredienteId  
					left join proveedor as pr on pr.proveedorId = i.proveedorId  
					WHERE l.suma_listaId = '.$Id.' and i.proveedorId = '.$aux["proveedorId"].' and dp.ingredienteId = '.$aux1["ingredienteId"].'';
					
					$this->Util()->DB()->setQuery($sql);
					$lstS = $this->Util()->DB()->GetResult();
					$total = 0;
					foreach($lstS as $key2=>$aux2){
						$sqlu = '
							SELECT 
								*,
								c.nombre as nombreCliente
							FROM 
								lista as l
							left join cliente as c on c.clienteId = l.clienteId  
							WHERE listaId = '.$aux2["listaId"].'';
							$this->Util()->DB()->setQuery($sqlu);
						$infoLista = $this->Util()->DB()->GetRow();
					
						
						if($aux2["numeroPlatillo"]>=5 and $aux2["numeroPlatillo"]<=8){
							$numPersonas = $infoLista["nino"];
						}
						else{
							$numPersonas = $infoLista["personas"];
						}
						
						$total += $aux2["cantidad"]*$numPersonas;
						
					}
					
					$lstIn[$key1]["totalIngrediente"] =  $total;
			}
			
			
			

		
				
			$lst[$key]["ingredientes"] = $lstIn;
			
		}
		
		$data["ingrediente"]=$lst;
		$data["info"]=$infoMay;
		
		// echo "<pre>"; print_r($data);
		// exit;
		return $data; 
		
	}
	
	public function listadeLista($Id){
		
		if($Id==null){
				
			$sql = 'SELECT * FROM suma_lista WHERE status = "proceso" and usuarioId = '.$_SESSION['Usr']["usuarioId"].'';
			$this->Util()->DB()->setQuery($sql);
			$info = $this->Util()->DB()->GetRow();
			
			if($info["suma_listaId"]==null){
				$Id = 0;
			}else{
				$Id = $info["suma_listaId"];
			}
			
		}else{
			$Id = $Id;
		}
		
		 $sql = 'SELECT 
						*
				FROM 
					detalle_suma 
					WHERE suma_listaId =  '.$Id.'';

		$this->Util()->DB()->setQuery($sql);
		$ls = $this->Util()->DB()->GetResult();
		
		
		return $ls;
		
	}
	
	public function obtenVariable(){
		
		if($this->id){
			$Id = $this->id;
					
		}else{
			$sql = 'SELECT * FROM lista WHERE estatus = "proceso" and usuarioId = '.$_SESSION['Usr']["usuarioId"].'';
			$this->Util()->DB()->setQuery($sql);
			$info = $this->Util()->DB()->GetRow();
				if($info["listaId"]<>null){
					$Id = $info["listaId"];
				}else{
					$Id = 0;
				}
			
		}
		
		return $Id;
	}
	
	public function viewListaAdd(){
		
		if($this->listamayorid){
			
			$sql = '
				SELECT 
					* 
				FROM 
					lista  as l
				left join cliente as c on c.clienteId =  l.clienteId
				WHERE  suma_listaId = '.$this->listamayorid.'';
			$this->Util()->DB()->setQuery($sql);
			$info = $this->Util()->DB()->GetResult();
					
		}else{
			$sql = 'SELECT * FROM suma_lista WHERE status = "proceso" and usuarioId = '.$_SESSION['Usr']["usuarioId"].'';
			$this->Util()->DB()->setQuery($sql);
			$info1 = $this->Util()->DB()->GetRow();
				
			if($info1["suma_listaId"]<>null){
				$sql = '
				SELECT 
					* 
				FROM 
					lista as l
				left join cliente as c on c.clienteId =  l.clienteId
				WHERE  suma_listaId = '.$info1["suma_listaId"].'';
				$this->Util()->DB()->setQuery($sql);
				$info = $this->Util()->DB()->GetResult();
			}	
			
		}
		
		return $info;
			
	}
	
	public function EnumeraSucursales(){
		
		$sql = '
				SELECT 
					* 
				FROM 
					sucursal  
				WHERE  1 ';
				$this->Util()->DB()->setQuery($sql);
				$info = $this->Util()->DB()->GetResult();
				
		return $info;
		
	}
	
	public function EnviaComentario(){
		
		  $mensaje.= "\nNombre: ". $_POST['txtName'];
		  $mensaje.= "\nEmail: ".$_POST['email'];
		  $mensaje.= "\nTelefono: ". $_POST['telefono'];
		  $mensaje.= "\nAsunto: ". $_POST['asunto'];
		  $mensaje.= "\nMensaje: \n".$_POST['mensaje'];
		  $destino= "juanjosepm@live.com";
		  $remitente = $_POST['email'];
		  $asunto = "Mensaje enviado por: ".$_POST['txtName'];
		  if(mail($destino,$asunto,$mensaje,"FROM: $remitente")){
			  return true;
		  }else{
			  return false;
		  }
		  
		  
		
	}
	
	
	
	
	
	
						
}

?>