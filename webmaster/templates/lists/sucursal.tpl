<div class="table-container">
{include file="{$DOC_ROOT}/templates/boxes/messages.tpl"}
<table class="table table-striped table-bordered table-hover" id="sample_3">
    <thead>
        <tr>
            <th>#</th>
            <th>Nombre </th>
            <th>Descripcion </th>
            <th>Encargado </th>
            <th>Direccion </th>
            <th>Acci&oacute;n </th>
        </tr>
    </thead>
    <tbody>
    	{foreach from=$registros item=item key=key}        	
        <tr>
            <td>{$key+1}</td>
            <td>{$item.nombre}</td>
            <td>{$item.productos}</td>
            <td>{$item.encargado}</td>
            <td>{$item.direccion}</td>
			<td><div align="center">
				<a class="btn btn-xs yellow" href="javascript:void(0)" onClick="EditReg({$item.sucursalid})" title="Editar sucursal">
					<i class="fa fa-pencil-square-o" ></i> 
				</a>
				<!-- <a href="javascript:void(0)" onClick="EditReg({$item.requisito_id})" title="Configurar tramite">
					<img src="{$WEB_ROOT}/images/png-icon/big/glyphicons_136_cogwheel.png">
				</a> -->
				
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
<!--
{include file="{$DOC_ROOT}/templates/lists/pages.tpl" pages=$registros.pages info=$registros.info}-->