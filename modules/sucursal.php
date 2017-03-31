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
	$Infosucursal = $imagen->Infosucursal();
	// foreach($Infosucursal as $key=>$aux){
		$Infosucursal["productos"] = utf8_encode($Infosucursal["productos"]);
		$Infosucursal["direccion"] = utf8_encode($Infosucursal["direccion"]);
		$Infosucursal["encargado"] = utf8_encode($Infosucursal["encargado"]);
		
	// }
	
	// $Infosucursal  = $util->EncodeRow($Infosucursal);
	// $registros = $producto->Enumerate( $parametro );
	
	// echo'<PRE>';
	// print_r($Infosucursal);
	// exit;
	// exit;
	$smarty->assign('Infosucursal',$Infosucursal);
	
?>