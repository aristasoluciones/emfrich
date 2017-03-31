<?php

	include_once('../init.php');
	include_once('../config.php');
	include_once(DOC_ROOT.'/libraries.php');

	session_start();
	
	$page = 'usuario';
	
	$smarty->assign('titleFrm','Usuario');
	$smarty->assign('page',$page);
	
	switch($_POST['type']){
	
		case 'add':	
		        $reg_roles =  $objRole->getListRoles();
		        $smarty->assign('registros_roles',$reg_roles);			
				echo 'ok[#]';
				$smarty->display(DOC_ROOT.'/templates/boxes/'.$page.'.tpl');											
			break;
		
		case 'edit':
				
				$usuario->setId($_POST['id']);
				$info = $usuario->Info();
			    $reg_roles =  $objRole->getListRoles();
		        $smarty->assign('registros_roles',$reg_roles);				
				echo 'ok[#]';				
				$smarty->assign('info',$info);				
				$smarty->display(DOC_ROOT.'/templates/boxes/'.$page.'.tpl');
																
			break;		
		case 'save':
		
				if(isset($_POST["activo"]))
					 $activo = 1;
				   else
				   	 $activo = 0;

				$idReg = $_POST['id'];
				$usuario->setId($idReg);
				$usuario->setNombre($_POST['nombre']);
				$usuario->setTelefono($_POST['telefono']);
				$usuario->setEmail($_POST['email'],true);
				$usuario->setUsuario($_POST['usuario']);
				$usuario->setPasswd($_POST['passwd']);
				$usuario->setTipo($_POST['tipo']);
				$usuario->setActivo($activo);
				$usuario->setApaterno($_POST['apaterno']);
				$usuario->setAmaterno($_POST['amaterno']);
				$usuario->setCalle($_POST['calle']);
				$usuario->setNoExterior($_POST['nexterior']);
				$usuario->setColonia($_POST['colonia']);
				$usuario->setCiudad($_POST['ciudad']);
				$usuario->setEstado($_POST['estado']);
				$usuario->setPais($_POST['pais']);

				$success = $usuario->Save();
				if($success){
                 //assignar el rol seleccionado al usuario creado. 
		         //$id_role = $rbac->Roles->returnId($_POST["tipo"]);
			      $rbac->Users->assign($_POST['tipo'],$success);
			      echo 'ok[#]';
				}else{
					echo "fail[#]";					
					$util->ShowErrors();					
				}
				
			break;
			case 'update':
		  /* echo "<pre>";
		   print_r($_POST);
		   exit;*/
				if(isset($_POST["activo"]))
					 $activo = 1;
				   else
				   	 $activo = 0;
				//idReg es el id del usuario que se esta editando
				$idReg = $_POST['id'];
				$usuario->setId($idReg);
				$usuario->setNombre($_POST['nombre']);
				$usuario->setTelefono($_POST['telefono']);
				$usuario->setEmail($_POST['email'],true);
				$usuario->setUsuario($_POST['usuario']);
				$usuario->setPasswd($_POST['passwd']);
				$usuario->setTipo($_POST['tipo']);
				$usuario->setActivo($activo);
				$usuario->setApaterno($_POST['apaterno']);
				$usuario->setAmaterno($_POST['amaterno']);
				$usuario->setCalle($_POST['calle']);
				$usuario->setNoExterior($_POST['nexterior']);
				$usuario->setColonia($_POST['colonia']);
				$usuario->setCiudad($_POST['ciudad']);
				$usuario->setEstado($_POST['estado']);
				$usuario->setPais($_POST['pais']);

				$success = $usuario->Update();
				if($success>=0){
		        if($_POST["rol_actual"]!=$_POST["tipo"]){
		        	
					//$id_role_actual = $rbac->Roles->returnId($_POST["rol_actual"]);
					if($_POST["rol_actual"]){
					//comprobar si tiene el rol agregado
						if($rbac->Users->hasRole($_POST["rol_actual"], $idReg))
						{
						 //desasignar el rol actual al usuario por que sufrio cambios
						  $rbac->Users->unassign($_POST["rol_actual"], $idReg);
						}
				    }
					
					//asignar nuevo rol para el usuario
					$rbac->Users->assign($_POST["tipo"],$idReg);
				}

				 echo 'ok[#]';

				}else{
					echo "fail[#]";					
					$util->ShowErrors();					
				}
				
			break;
								
		case 'delete':
				
				$usuario->setId($_POST['id']);
				
				if($usuario->Delete()){					
					echo 'ok[#]';				
				}
				
			break;
		
		case 'view':
				
				$usuario->setId($_POST['id']);
				$info = $usuario->Info();
				// $listEstablo = $usuario->ListarEstablo();
				
				$info['view'] = 1;
				
				echo 'ok[#]';
				
				// $smarty->assign('listEstablo',$listEstablo);
				$smarty->assign('info',$info);
				$smarty->display(DOC_ROOT.'/templates/boxes/'.$page.'.tpl');
																
			break;
		
		case 'loadMunicipios':
				
				$municipios = $util->EnumMunicipios($_POST['estadoId']);
				$municipios = $util->EncodeResult($municipios);
				
				echo 'ok[#]';
				
				$smarty->assign('municipios',$municipios);
				$smarty->display(DOC_ROOT.'/templates/lists/enum-municipios.tpl');
				
			break;
		
		case 'loadPage':
				
				if($_POST["page"]=="ciudadano"){
					$usuario->tipoReporte("ciudadano");
				}else{
					$usuario->tipoReporte("admin");
				}
				
				// echo "<pre>"; print_r($_POST);
				// echo $page;
				// exit;
				$usuario->setPage($_POST['p']);								
				$registros = $usuario->Enumerate();
				$registros['result'] = $util->EncodeResult($registros['result']);	
				
				$util->PrintErrors2();
				
				echo 'ok[#]';			
				if($_POST["page"]=="ciudadano"){
					$smarty->assign('registrosC',$registros);
					$smarty->display(DOC_ROOT.'/templates/lists/ciudadano.tpl');
				}else{
					$smarty->assign('registros',$registros);
					$smarty->display(DOC_ROOT.'/templates/lists/'.$page.'.tpl');
				}
				
				
				
				
			break;
		
	}//switch

?>