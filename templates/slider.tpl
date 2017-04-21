<section id="hero" class="tbg1">
    <div id="layerslider-container-fw">
     <div id="layerslider" style="width: 100%; height: 310px; margin: 0px auto; ">
     {foreach from=$sliders item=item key=key}
        <div class="ls-layer" style="slidedirection: top; slideoutdirection : top; slidedelay: 5000; durationin: 1500; durationout: 1500; delayout: 500;">
        	<img src="{$WEB_ROOT}/images/slide-emfrich/{$item.nombre}.{$item.extension}" class="ls-bg" alt="">	

				<h1 class="ls-s3" style="position: absolute; font-weight:300; top:50px; left: 30px; color:white;  slidedirection : top; slideoutdirection : top; durationin : 3000; durationout : 750; easingin : easeInOutQuint; easingout : easeInBack; delayin : 500;">
				<div id="divRegistro" style=" background-color: rgba(54, 55, 58, 0.41); border-radius: 5px;" >
					EMFRICH
				
					 <font style="font-size:20px">(Embutidos Fríos Chiapanecos, S.A. de C.V.)</font>
			
					 <br>
					50 Años de Experiencia 
				</div>
				</h1>
				<h4 class="ls-s3 l1-s1" style="position: absolute; top:130px; left: 30px; color:white; border-color:white;  slidedirection : bottom; slideoutdirection : bottom; durationin : 3000; durationout : 750; easingin : easeInOutQuint; easingout : easeInBack; delayin : 600; ">
				<!--<div id="divRegistro" style=" background-color: rgba(54, 55, 58, 0.41); border-radius: 5px;" >Comprometidos con la salud y el bienestar de las familias mexicanas
				</div>-->
				</h4>     
				<!--<a class="button pink ls-s8" href="#" style="position: absolute; top:364px; left: 30px; color:#000; border-color:#000; slidedirection : bottom; slideoutdirection : bottom; durationin : 3000; durationout : 750; easingin : easeInOutQuint; easingout : easeInOutQuint; delayin : 700;">Purchase Now</a>
				-->
		</div> 
     {/foreach}
     </div>
    </div>
  </section><!-- end-hero-->
  
  
  
  
  
  
  
  