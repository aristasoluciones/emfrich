<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> 
<html lang="en" class="no-js"> <!--<![endif]-->
<head><!--
	{include file="{$DOC_ROOT}/templates/1-default-meta.tpl"}
	{include file="{$DOC_ROOT}/templates/2-default-css.tpl"}-->
	{include file="{$DOC_ROOT}/templates/header.tpl"}
</head>

<body  onload="initialize()">
	<div id="wrap" class="colorskin-0">
		<div id="sticker">
			<header id="header">
				<div  class="container">
					<div class="four columns">
					<div class="logo">
					<a href="#"><img src="{$WEB_ROOT}/images/logo-1.png" width="100" id="img-logo" alt="logo"></a>
					</div>
					</div>		
				{include file="{$DOC_ROOT}/templates/menus/main.tpl"}
				</div>
				<div id="search-form2">
					<form action="#" method="get">
						<input type="text" class="search-text-box2">
					</form>
				</div>
			</header>
		</div>
			{**include file="{$DOC_ROOT}/templates/slider.tpl"}
			{include file="{$DOC_ROOT}/templates/seccion1.tpl"}
			{include file="{$DOC_ROOT}/templates/seccion2.tpl"}
			{include file="{$DOC_ROOT}/templates/seccion3.tpl"}
			{include file="{$DOC_ROOT}/templates/footer.tpl"**}
			
			<section id="headline">
	
				<div class="container">
				<!-- end-hero-->
				<h3>UBICA TU SUCURSAL</h3>
					
				</div>
				
			</section>
			
			<section class="full-width">
			<div id="contact-map">
			 <div id="map_canvas" style="width:1500px; height:500px"></div>
			 <!-- END-Google Map -->
			</div><!-- END-contact Map -->     
			</section><!-- END-Google Map Section -->
							
	</div>
	{include file="{$DOC_ROOT}/templates/3-default-js.tpl"}
	<script type="text/javascript">
		jQuery(document).ready(function() {    
		   App.init(); // initlayout and core plugins		   
		});
	</script>

    
</body>
</html>