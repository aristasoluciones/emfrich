<nav id="nav-wrap" class="nav-wrap1 twelve columns">
	<div id="search-form">
					<form action="#" method="get">
						<input type="text" class="search-text-box" id="search-box">
					</form>
				</div>
        <ul id="nav">
          <li class="current"><a href="{$WEB_ROOT}/index">Inicio</a>
          </li>
          <li><a  href="#">NOSOTROS</a>
            <ul>
              <li><a href="{$WEB_ROOT}/nosotros">¿Quienes Somos?</a></li>
			  <li><a href="{$WEB_ROOT}/mision">Misión</a></li>
			  <li><a href="{$WEB_ROOT}/vision">Visión</a></li>
			  <li><a href="{$WEB_ROOT}/oferta">Ofertas de Valor</a></li>
            </ul>
          </li>
          <li><a href="#">PRODUCTOS</a>
            <ul>
			  <li><a href="{$WEB_ROOT}/producto/cat/1">Carne de Cerdo</a></li>			         
              <li><a href="{$WEB_ROOT}/producto/cat/2">Carne de Res</a></li>
			   <li><a href="{$WEB_ROOT}/producto/cat/3">Carne de Pollo</a></li>

            </ul>
          </li>
          <li><a  href="#">SUCURSALES</a>
            <ul>
			{foreach from=$lstSucursal item=item key=key}       
              <li><a href="{$WEB_ROOT}/sucursal/cat/{$item.sucursalid}">{$item.nombre}</a></li>
			{/foreach}
			</ul>
          </li>
		  <!--
          <li><a href="#">EMFRICH</a>
            <ul>
              <li><a href="{$WEB_ROOT}/puestos/cat/1">EQUIPO DE TRABAJO</a></li>
            </ul>
          </li>-->
		<!--<li><a href="{$WEB_ROOT}/PEDIDO">PEDIDO</a>

          </li>-->
		  <li><a href="{$WEB_ROOT}/ubicanos">UBÍCANOS</a>
		  <li><a href="{$WEB_ROOT}/contacto">CONTACTO</a>			  
          </li>
        </ul>
      </nav>