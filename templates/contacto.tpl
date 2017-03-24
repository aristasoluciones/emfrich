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
					<div class="logo"><a href="index.html"><img src="{$WEB_ROOT}/images/logo.png" width="100" id="img-logo" alt="logo"></a></div>
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
				<section id="hero" class="tbg1">
    <div id="layerslider-container-fw">
      <div id="layerslider" style="width: 100%; height: 300px; margin: 0px auto; ">
	           <div class="ls-layer" style="slidedirection: right; slideoutdirection : top; slidedelay: 5000; durationin: 1500; durationout: 1500; delayout: 500;"> 
    
			<img src="images/slide-emfrich/22.JPG" class="ls-bg" alt="">
     

     
               <h1 class="ls-s3" style="position: absolute; top:100px; left: 700px; color:#fff; slidedirection : top; slideoutdirection : top; durationin : 3000; durationout : 750; easingin : easeInOutQuint; easingout : easeInBack; delayin : 600;">OFICINAS CENTRALES</h1><!--
      
          <h4 class="ls-s3 l1-s1" style="position: absolute; top:256px; left: 700px; color:#fff; border-color:#fff; font-weight:400; slidedirection : bottom; slideoutdirection : bottom; durationin : 3000; durationout : 750; easingin : easeInOutQuint; easingout : easeInBack; delayin : 700;">Every element is cohesive and intentional</h4>
     
		<a class="button green ls-s8" href="#" style="position: absolute; top:354px; left: 700px; slidedirection : bottom; slideoutdirection : bottom; durationin : 3000; durationout : 750; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 800;">Purchase Now</a>  --> 
	  </div>
	  
	   <div class="ls-layer" style="slidedirection: right; slidedelay: 5000; durationin: 1500; durationout: 1500;">
			<img src="images/slide-emfrich/333.JPG" class="ls-bg" alt=""> 
    
          <h1 class="ls-s3" style="position: absolute; color:white; top:50px; font-weight:bold; left: 65%; slidedirection : right; slideoutdirection : left; durationin : 3000; durationout : 750; easingin : easeInOutQuint; easingout : easeInBack; delayin : 400;"></h1><!--
          <h4 class="ls-s3 l1-s1" style="position: absolute; top:266px; left: 50%; border-color:#253042; color:#253042; font-weight:400; slidedirection : bottom; slideoutdirection : left; durationin : 3000; durationout : 750; easingin : easeInOutQuint; easingout : easeInBack; delayin : 500;">Looks beautiful on smartphones and tablets</h4>
          <a class="button red ls-s8" href="#" style="position: absolute; top:370px; left: 50%; color:#253042; border-color:#253042; slidedirection : bottom; slideoutdirection : bottom; durationin : 3000; durationout : 750; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 600;">Purchase Now</a>-->
		</div>
	   </div>
    </div>
  </section><!-- end-hero-->
				<h3>OFICINAS CENTRALES EMFRICH</h3>
					
				</div>
				
			</section>
			<section class="container page-content" >

				<hr class="vertical-space3">
				<div class="seven columns contact-inf">

				<h4>Información de Contacto:</h4>
				<br>

				<p><strong>Dirección:</strong></p>
				<p>
				 15 Norte entre 5a y 6a poniente, Tuxtla Gutierrez Chiapas,C.p 29000  </p>
				<div style="top:100%; position:relative;  ">
				<a href="#map_canvas">
					<img src="images/maps-ico.jpg" width="10%">
					¿Como llegar?</a>
				</div>
				<br>
				<p><strong>Telefonos:</strong></p>
				<p>
				961-60-4-50-19  <br />
				  <br />
				
				</p>
				<br />
				<p><strong>Email:</strong></p>
				<p>
				ventas@emfrich.com.mx<br />				
				</p>
				<br />
				<hr class="boldbx">
				<p>
				<br>
				</div>

				<div class="eight columns offset-by-one">
				<div class="contact-form">
				<div class="clr"></div><br />


				<form action="<?=$_SERVER['PHP_SELF']?>" method="post">
				<h5>Nombre</h5>
				<input id="txtName" title="Se Necesita el Nombre" name="txtName" type="text" class="txbx" value="" required/><br />
				<h5>Correo</h5>
				<input id="txtEmail" name="email" type="email"  pattern="" class="txbx" value="" required/><br />
				<h5>Teléfono</h5>
				<input id="txtEmail" title="Solo Numeros" name="telefono" type="text" class="txbx" value="" required/><br />
				<h5>Asunto</h5>
				<input id="txtSubject" name="asunto" type="text" class="txbx" value="" required/><br />
				<div class="erabox">
				<h5>Mensaje</h5>
				<textarea id="txtText" name="mensaje" class="txbx era" required/></textarea><br />
				<input type="submit" Value="enviar" class="sendbtn btnSend" >

				<div id="spanMessage">
				</div>
				</div>
				</form>

				




				</div><!-- end-contact-form  -->

				</div>
				<div class="white-space"></div>
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