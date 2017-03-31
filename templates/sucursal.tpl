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

<body class="" onload="initialize('{$Infosucursal.coordenadaX}','{$Infosucursal.coordenadaY}','{$Infosucursal.nombre}','{$Infosucursal.direccion}')">  
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
			
		
		
			<!-- end-header -->
  <section id="headline" style="background: url({$WEB_ROOT}/images/original.jpg) no-repeat center center;">
    
      <h3>
	  <div class="container" style="background:rgba(54, 55, 58, 0.41); width:880px">
	  <font color="white">{$Infosucursal.nombre}</font>
	  </div>
	  </h3>
  
  </section>
  
  
 

<br>
<br>

		
   <section class="container page-content" >
    <hr class="vertical-space2">
    <section class="eleven columns">
	
		<h3>{$Infosucursal.nombre}</h3>
		<p> {$Infosucursal.productos}
		</p>

		<br>
		
		<h3>ENCARGADO</h3>
		<p>{$Infosucursal.encargado}</p>
		<BR>
		
		<h3>DIRECCIÓN</h3>
		<p>{$Infosucursal.direccion}</p>
		<BR>
		
		<h3>UBICACIÓN</h3>
		<p></p>
		
		
      <!-- end-product-item-->
	  <div class="one_half column-last">
		  <h1></h1>
		 <!-- <h2 class="price"><small>$ 51</small><span class="amount">$ 39</span></h2>-->
		
		  <hr class="vertical-space">
		  <div class="quantity buttons_added">

		 <!-- <input class="minus" type="button" value="-"></input>
		  <input type="text" step="1" min="1" name="quantity" value="1" title="Qty" class="input-text qty text">
		  <input class="plus" type="button" value="+"></input>-->
		  <!--<a href="#" class="addtocart">Add to Cart</a>-->
		  </div>
	  </div> 
	  <!--
	  <iframe src="https://www.google.com/maps/embed?pb=!1m0!3m2!1ses!2smx!4v1490976863511!6m8!1m7!1s171dPTXZO5RZLCsq_NC3tw!2m2!1d16.74721130670059!2d-93.1187725558971!3f302.05146306259115!4f-13.397526309743995!5f0.7820865974627469" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3820.420986860444!2d-93.14026668549575!3d16.75571798846011!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTbCsDQ1JzIwLjYiTiA5M8KwMDgnMTcuMSJX!5e0!3m2!1ses!2smx!4v1490977001422" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	  -->
	  <div id="contact-map">
			 <div id="map_canvas" style="width:900px; height:400px"></div>
	  </div>
	  
	  
	  <hr class="vertical-space2">
	  
	  <h4 class="subtitle">EMBUTIDOS FRIOS CHIAPANECOS</h4>
	  <hr class="vertical-space1">
	 
     
     
      <!-- end-product-item-->
	  </div>

	</section>
    <!-- end-main-content -->
	
   
    <!-- end-sidebar-->
    <br class="clear">
  </section>
  {**include file="{$DOC_ROOT}/templates/seccion3.tpl"**}
{include file="{$DOC_ROOT}/templates/footer.tpl"}
			
	</div>
	{include file="{$DOC_ROOT}/templates/3-default-js.tpl"}
	<script type="text/javascript">
	
		<!-- jQuery(document).ready(function() {     -->
		   <!-- App.init(); // initlayout and core plugins		    -->
		<!-- }); -->
	</script>
    
</body>
</html>