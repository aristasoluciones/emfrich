<?php
// echo "<pre>"; print_r($_POST);
// exit;
	include_once('../init.php');
	include_once('../config.php');
	include_once(DOC_ROOT.'/libraries.php');

	session_start();
	
	$page = 'producto';
	
	
	$smarty->assign('page',$page);
	
	// $_POST["type"]= $_GET["type"];
	switch($_POST['type']){
	
		case 'add':
								
				echo 'ok[#]';	
				$smarty->assign('titleFrm','Agregar Producto / Articulo');				
				$smarty->display(DOC_ROOT.'/templates/boxes/add_catalogo.tpl');
																
			break;
		
		case 'edit':
				
				$producto->setId($_POST['id']);
				$info = $producto->Info();
				// $info = $util->EncodeRow($info);	
				echo 'ok[#]';
				$smarty->assign('titleFrm','Editar Producto / Articulo');
				$smarty->assign('info',$info);				
				$smarty->display(DOC_ROOT.'/templates/boxes/add_catalogo.tpl');
																
			break;
		case 'save':
				$producto->setNombre($_POST['nombre']);
				$producto->setDescripcion($_POST['descripcion']);
				$producto->setAquien($_POST['aquien']);
				$producto->setVentaja($_POST['ventaja']);
				$success = $producto->Save();
				
				if($success){									
					echo 'ok[#]';
                   					
				}else{
					echo "fail[#]";					
					$util->ShowErrors(s);					
				}
				
			break;
		case 'update':
		        $producto->setId($_POST['id']);
				$producto->setNombre($_POST['nombre']);
				$producto->setDescripcion($_POST['descripcion']);
				$producto->setAquien($_POST['aquien']);
				$producto->setVentaja($_POST['ventaja']);
				$success = $producto->Update();
				
				if($success){									
					echo 'ok[#]';
                   						
				}else{
					echo "fail[#]";					
					$util->ShowErrors();					
				}
				
			break;
	
	
		case 'delete':
				
				$dependencia->setId($_POST['id']);
				
				if($dependencia->Delete()){					
					echo 'ok[#]';				
				}
				
	    break;
		
		case 'loadPage':
		
				$producto->setPage($_POST['p']);								
				$registros = $producto->Enumerate();
				$util->PrintErrors2();
				echo 'ok[#]';			
				$smarty->assign('registros',$registros);
				$smarty->display(DOC_ROOT.'/templates/lists/'.$page.'.tpl');
				
		break;
		
}//switch

?>