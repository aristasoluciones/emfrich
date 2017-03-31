<?php

	include_once('init.php');
	include_once('config.php');
	include_once(DOC_ROOT.'/libraries.php');
			
	if (!isset($_SESSION))
	  session_start();

	$pages = array(	
		'login',
		'logout',	
		'index',	
		'nosotros',	
		'mision',	
		'vision',	
		'oferta',	
		'producto',	
		'contacto',	
		'otro',	
		'sucursal',
		'puestos',
	

		#reportes
		'lista'
	);
	

	
	$page = $_GET['page'];
	$section = $_GET['section'];

	if(!in_array($page, $pages))
		$page = 'index';
	
	
		
	include_once(DOC_ROOT.'/modules/user.php');
	include_once(DOC_ROOT.'/modules/'.$page.'.php');
	
	$smarty->assign('page', $page);
	$smarty->assign('section', $section);
		
	$pageTpl = ($section == '') ? $page : $page.'_'.$section;
	
	$smarty->assign('pageTpl', $pageTpl);
	$smarty->assign('lang', $lang);
	
	$usr = $_SESSION['Usr'];

	$smarty->assign('usr',$usr);
	

	// if($page == 'login'){
		// $smarty->display(DOC_ROOT.'/templates/login.tpl');
	
	// }else if($page == 'graficas'){
		// $_SESSION['Usr']['page'] = $page;
		// $smarty->display(DOC_ROOT.'/templates/graficas.tpl');
	// }
	// else if($page == 'graficas-b'){
		// $_SESSION['Usr']['page'] = $page;
		// $smarty->display(DOC_ROOT.'/templates/graficas-b.tpl');
	// }
	// else{
	// }
	
	// exit;
	// $imagen->setId($_GET["cat"]);
	
		$lstSucursal = $imagen->EnumeraSucursales();
		$smarty->assign('lstSucursal',$lstSucursal);
		
	
	
	if($page){
		
		$_SESSION['Usr']['page'] = $page;
		$smarty->display(DOC_ROOT.'/templates/'.$page.'.tpl');
	}else{
		$_SESSION['Usr']['page'] = "index";
		$smarty->display(DOC_ROOT.'/templates/index.tpl');
	}
		
	
?>