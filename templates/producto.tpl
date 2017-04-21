<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> 
<html lang="en" class="no-js"> <!--<![endif]-->
<head><!--
	{include file="{$DOC_ROOT}/templates/1-default-meta.tpl"}
	{include file="{$DOC_ROOT}/templates/2-default-css.tpl"}-->
	{include file="{$DOC_ROOT}/templates/header.tpl"}
	

<style type="text/css"> 

/*Estilo para menu de imagenes inicial del ciudadano*/

.infos_bloc .content {
	text-decoration:none;   
    width:150px;
    height: 150px;
    /*background:#f6f6f6;*/
    text-align:center;
    min-height:150px;
    font-family: 'Roboto', sans-serif;
    font-weight:400;
}

.infos_bloc a.content {
    display:block;
    position: relative;
    overflow:hidden;
    -moz-transition: all .4s;
    -webkit-transition: all .4s;
    -o-transition: all .4s;
    transition: all .4s;
    cursor:pointer;
}

.infos_bloc a.content .overlay_bloc {
    background-color:rgba(174, 182, 191, 0);
    width:100%;
    height:100%;
    position:absolute;
    top:0;
    left:0;
    z-index: 9900;
    -moz-transition:all 1s;
    -webkit-transition:all 1s;
    -o-transition:all 1s;
    transition:all 1s;
}

.infos_bloc a.content:hover .overlay_bloc {
    display:block;
    background-color:rgba(174, 182, 191, 0.7);
}

.infos_bloc a.content span {
    background: rgba(0, 57, 171, 9);
    width:100%;
    height:50px;
    color: #97bf0d;
    text-transform:uppercase;
    font-size:11px;
    line-height:60px;
    position:absolute;
    display:block;
    bottom:0px;
    left:0;
    z-index: 9910;
    -moz-transition: all .4s;
    -webkit-transition: all .4s;
    -o-transition: all .4s;
    transition: all .4s;
}

.infos_bloc a.content:hover span {
    bottom:0;
    height:60px;
    color: #ffffff;
}



</style>

</head>

<body class="" >
	<div id="wrap" class="colorskin-0">
		<div id="sticker">
			<header id="header">
				<div  class="container">
					<div class="four columns">
					<div class="logo">
					<a href="#"><img src="{$WEB_ROOT}/images/logo-1.png" width="" id="img-logo" alt="logo"></a>
					
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
      <h3><font color="white">{$InfoCategoria.info.nombre}</font></h3>
    </div>
  </section>
  
  
 

<br>
<br>

		
   <section class="container page-content" >
    <hr class="vertical-space2">
    <section class="eleven columns">
	
		<h3>{$InfoCategoria.info.nombre}</h3>
		<br>
		<br>
		<p  style="text-align: justify;"> {$InfoCategoria.info.descripcion}
		</p>
		<h3></h3>
		<br>
		

		<p  style="text-align: justify;">{$InfoCategoria.info.aquien}</p>
		<BR>
		
		<h3>VENTAJAS</h3>
		<p>{$InfoCategoria.info.ventajas}</p>
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
	  	  
	<hr class="vertical-space">
	
	<h3>PRODUCTOS</h3>
	<br>
	<br>
	{foreach from=$InfoCategoria.productos item=item key=key} 
	
		 <div style="overflow:hidden; float:left; !important" id="onglet_sociaux">
			<div class="infos_bloc">
			  <a href="javascript:void(0)" onClick="buscaTramites('{$item.id}','init')" class="content" border="0">
				  <img src="{$item.url}{$item.nombre_archivo}.{$item.extension}" style="width:40%">
				  <br>
				  {$item.descripcion}
				  <div class="overlay_bloc"></div>
				  <span> {$item.nombre}</span>
			  </a>
			</div>
		  </div>
		  <div style="width:50px; overflow:hidden; float:left; !important">
		  &nbsp;
		  &nbsp;
		  </div>
	{if $key+1 % 3  eq 0}
		echo "
		<br>	

	{/if}

	  
	{/foreach} 
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