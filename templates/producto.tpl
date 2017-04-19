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

<body class="" >
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
    <div class="container" style="background:rgba(54, 55, 58, 0.41); width:880px">
      <h3><font color="white">{$InfoCategoria.nombre}</font></h3>
    </div>
  </section>
  
  
 

<br>
<br>

		
   <section class="container page-content" >
    <hr class="vertical-space2">
    <section class="eleven columns">
	
		<h3>{$InfoCategoria.nombre}</h3>
		<br>
		<br>
		<p  style="text-align: justify;"> {$InfoCategoria.descripcion}
		</p>
		<h3></h3>
		<br>
		

		<p  style="text-align: justify;">{$InfoCategoria.aquien}</p>
		<BR>
		
		<h3>VENTAJAS</h3>
		<p>{$InfoCategoria.ventajas}</p>
	</figure>
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
	  	  
	<hr class="vertical-space1">

	  
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
		jQuery(document).ready(function() {    
		   App.init(); // initlayout and core plugins		   
		});
	</script>
    
</body>
</html>