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

<body class="" ><!--esto es un comnetario--->
	<div id="wrap" class="colorskin-0">
		<section class="top-bar">
			<div class="container">
			<div class="top-links">	
				<!--<a href="#">Form</a> | <a href="#">Terms</a> | <a href="#">Contact</a>
				-->
				</div>
			<div class="socailfollow">
				<!--<a href="#" class="facebook">
				<i class="fa-facebook"></i></a>
				<a href="#" class="dribble"><i class="fa-dribbble"></i></a>
				<a href="#" class="vimeo"><i class="fa-vimeo-square"></i></a>
				<a href="#" class="google"><i class="fa-google"></i></a>-->
				<a class="facebook" href="webmaster"> <i class="fa-dribbble">Sistema</i> </a>
			</div>
			</div>
		</section>
		<div id="sticker">
			<header id="header">
				<div  class="container">
					<div class="four columns">
					<div class="logo"><a href="#"><img src="{$WEB_ROOT}/images/logo-1.png" style="" id="img-logo" alt="logo"></a></div>
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
			{include file="{$DOC_ROOT}/templates/slider.tpl"}
			{**include file="{$DOC_ROOT}/templates/seccion1.tpl"**}
			{include file="{$DOC_ROOT}/templates/seccion2.tpl"}
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