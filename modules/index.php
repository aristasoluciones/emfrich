<?php
	// if($Usr['isLogged']){
		// header('Location: '.WEB_ROOT);
		// exit;
	// }
  $sliders = $imagen->getSliders();
  $smarty->assign("sliders",$sliders);
?>