<?php
	
	// echo "<pre>"; print_r($_GET);
	// exit;
	/* For Session Control - Don't remove this */
	// $user->AllowAccess();	
	/* End Session Control */
	// $usr = $_SESSION['Usr'];
	
	// $parametro = array(
		// 'filtro' => true,
		// 'establoId' => $usr['establoId']
	// );
	$imagen->setId($_GET["cat"]);
	$InfoCategoria = $imagen->InfoCategoria();
	
	$InfoCategoria["info"]  = $util->EncodeRow($InfoCategoria["info"]);
	// $registros = $producto->Enumerate( $parametro );
	
	// echo'<PRE>';
	// print_r($InfoCategoria);
	// exit;
	// exit;
	$smarty->assign('InfoCategoria',$InfoCategoria);
	
?>