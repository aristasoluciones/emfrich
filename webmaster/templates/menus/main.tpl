<!--BEGIN SIDEBAR -->
<div class="page-sidebar navbar-collapse collapse">
	<ul class="page-sidebar-menu  page-header-fixed" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
		<li class="sidebar-toggler-wrapper hide">
			<div class="sidebar-toggler">
				<span></span>
			</div>
		</li>   
    <li class="nav-item start {if $page == 'homepage'}active{/if}">
        <a href="{$WEB_ROOT}" class="nav-link nav-toggle"> 
        <i class="icon-home"></i> 
        <span class="title">Inicio</span>
        {if $page == "homepage"}
		 <span class="selected"></span>
        <span class="arrow open"></span>
        {/if}
        </a>
    </li>
	<li class="heading">
       <h3 class="uppercase">Menu de opciones</h3>
    </li>
    {if in_array('configuracion',$privilegios) or $typeUser==1} 
    <li class="nav-item {if $page=='config' || $page=='usuario' || $page=='rol' || $page=='config_role' || $page=='perm_accion'}active open{/if}">
        <a href="javascript:;" class="nav-link nav-toggle">
        <i class="icon-settings"></i> 
        <span class="title">Configuracion </span>
       {if $page =='rol' ||$page=='config_role'|| $page=='perm_accion'}
		 <span class="selected"></span>
         <span class="arrow open"></span>
         {else}
		   <span class="arrow"></span>
        {/if}
        </a>
        <ul class="sub-menu">
       		{if in_array('perm_accion',$privilegios) or $typeUser==1} 
        	<li class="nav-item {if $page=='perm_accion'}active open{/if}">
				<a class="nav-link " href="{$WEB_ROOT}/perm_accion">
					<i class="icon-settings"></i>
					<span class="title">Permisos del sistema</span>
				</a>
			</li>
			{/if}
			{if in_array('rol',$privilegios) or $typeUser==1} 
        	<li class="nav-item {if $page=='rol' || $page=='config_role'}active open{/if}">
				<a class="nav-link " href="{$WEB_ROOT}/rol">
					<i class="icon-settings"></i>
					<span class="title">Roles</span>
				</a>
			</li>
			{/if}
			{if in_array('usuario',$privilegios) or $typeUser==1} 
			<li class="nav-item {if $page=='usuario'}active open{/if}">
				<a class="nav-link " href="{$WEB_ROOT}/usuario">
					<i class="icon-settings"></i>
					<span class="title">Usuarios</span>
				</a>
			</li>
			{/if}
        </ul>
	</li>  
	{/if}
	 {if in_array('catalogo',$privilegios) or $typeUser==1} 
    <li class="nav-item {if $page =='sucursal' ||$page=='producto'||$page=='requisito'||$page=='config_tramite'||$page=='delegacion'}active open{/if}">
        <a href="javascript:;" class="nav-link nav-toggle">
        <i class="icon-briefcase"></i> 
        <span class="title">Catalogos</span>
		{if $page=='sucursal'||$page=='producto'}
		 <span class="selected"></span>
         <span class="arrow open"></span>
        {else}
		   <span class="arrow"></span>
		{/if}
		
        </a>
        <ul class="sub-menu">
           {if in_array('producto',$privilegios) or $typeUser==1} 
			<li class="nav-item {if $page=='producto'}active open{/if}">
				<a class="nav-link " href="{$WEB_ROOT}/producto">
					<i class="icon-briefcase"></i>
					<span class="title">Productos o Articulos</span>
				</a>
			</li>
			{/if}
			{if in_array('sucursal',$privilegios) or $typeUser==1} 
			<li class="nav-item {if $page=='sucursal'}active open{/if}">
				<a class="nav-link " href="{$WEB_ROOT}/sucursal">
					<i class="icon-briefcase"></i>
					<span class="title">Sucursales</span>
				</a>
			</li>
			{/if}
			{if in_array('puestos',$privilegios) or $typeUser==1} 
			<li class="nav-item {if $page=='d'}active open{/if}">
				<a class="nav-link " href="{$WEB_ROOT}/cat_tramite">
					<i class="icon-briefcase"></i>
					<span class="title">Puestos del personal</span>
				</a>
			</li>
			{/if}
			
        </ul>
	</li> 
	{/if}
	{if in_array('documento',$privilegios)}
	<li class="nav-item {if $page=='doc_crear'||$page=='doc_lista'}active open{/if}">
        <a href="javascript:;" class="nav-link nav-toggle">
        <i class="icon-list"></i> 
        <span class="title">Documentos </span>
       {if $page =='doc_crear' ||$page=='doc_lista'}
		 <span class="selected"></span>
         <span class="arrow open"></span>
         {else}
		   <span class="arrow"></span>
        {/if}
        </a>
        <ul class="sub-menu">
		     <li class="nav-item {if $page=='doc_crear'}active{/if}">
			    <a href="{$WEB_ROOT}/doc_crear" class="nav-link ">Nuevo Tramite</a>
             </li>
			 <li class="nav-item {if $page=='doc_lista'}active{/if}">
                <a href="{$WEB_ROOT}/lista" class="nav-link ">Lista de tramites </a>
             </li>
			


        </ul>
	</li> 
	{/if}
	{if in_array('reporte',$privilegios)}
	<li class="nav-item {if $page=='report'}active open{/if}">
        <a href="javascript:;" class="nav-link nav-toggle">
        <i class="icon-bar-chart"></i> 
        <span class="title">Reportes </span>
       {if $page =='report'}
		 <span class="selected"></span>
         <span class="arrow open"></span>
         {else}
		   <span class="arrow"></span>
        {/if}
        </a>
        <ul class="sub-menu">
		    
        </ul>
	</li> 
	{/if} 
</ul>
</div>
<!-- END SIDEBAR MENU