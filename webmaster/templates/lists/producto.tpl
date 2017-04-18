<div class="table-container">
{include file="{$DOC_ROOT}/templates/boxes/messages.tpl"}
<table class="table table-striped table-bordered table-hover" id="sample_3">
    <thead>
        <tr>
            <th>Nombre </th>
            <th>Descripcion </th>
			<th>A quien va dirigido </th>
			<th>Ventas </th>
            <th>Acci&oacute;n </th>
        </tr>
    </thead>
    <tbody>
    	{foreach from=$registros item=item key=key}        	
        <tr>
            <td>{$item.nombre}</td>
            <td>{$item.descripcion}</td>
            <td>{$item.aquien}</td>
			<td>{$item.ventajas}</td>
    
            <td><div align="center">
                {if in_array('edit_producto',$privilegios) or $typeUser==1}
				<a href="javascript:void(0)" onClick="EditReg({$item.categoriaId})" title="Editar producto">
					<img src="{$WEB_ROOT}/images/icons/pencil-16.png" border="0">
				</a>
                {/if}
                {if in_array('add_pcategoria',$privilegios) or $typeUser==1}
                <a href="{$WEB_ROOT}/producto_cat/id/{$item.categoriaId}"  title="Agregar producto">
                    <img src="{$WEB_ROOT}/images/icons/add-16.png" border="0">
                </a>
                {/if}
                				
            </div>
            </td>
        </tr>
        {foreachelse}
        <tr>
        	<td colspan="7"><div align="center">Ning&uacute;n registro encontrado.</div></td>
        </tr>
        {/foreach}
    </tbody>
</table>
</div>
<!-- {include file="{$DOC_ROOT}/templates/lists/pages.tpl" pages=$registros.pages info=$registros.info} -->