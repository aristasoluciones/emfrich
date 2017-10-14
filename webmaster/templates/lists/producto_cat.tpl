<div class="table-container">
{include file="{$DOC_ROOT}/templates/boxes/messages.tpl"}
<table class="table table-striped table-bordered table-hover" id="sample_3">
   <thead>
       <th>Nombre del producto</th>
       <th>Categoria</th>
       <th>Despcripcion del producto</th>
       <th>Imagen</th>
       <th>Status</th>
       <th>acciones</th>
    </thead>
    <tbody>
    	{foreach from=$registros item=item key=key}        	
        <tr>
            <td>{$item.nombre}</td>
            <td>{$item.cat_name}</td>
            <td>{$item.descripcion}</td>
            <td>
              <div align="center">
               <a href="{$WEB_ROOT_IMG}/productos_categorias/{$item.nombre_archivo}.{$item.extension}"  title="Ver imagen" target="_blank">
                <img src="{$WEB_ROOT_IMG}/productos_categorias/{$item.nombre_archivo}.{$item.extension}" height="50px" width="100px">
              </div>

            </td>
            <td>{$item.status}</td>
    
            <td><div align="center">
                {if in_array('edit_pcat',$privilegios) or $typeUser==1}
				<a class="btn btn-xs yellow" href="javascript:void(0)" onClick="EditReg({$item.producto_categoria_id})" title="Editar producto">
					<i class="fa fa-pencil-square-o" ></i> 
					
				</a>
                {/if}
                {if in_array('active_pcat',$privilegios) or $typeUser==1}
                    {if $item.status=="Baja"}
                        <a class="btn btn-xs green" href="javascript:void(0)" onClick="ActiveReg({$item.producto_categoria_id})" title="Activar producto">
                            <i class="fa fa-check-square" aria-hidden="true"></i>
                        </a>
                    {else}
                    <a  class="btn btn-xs red" href="javascript:void(0)" onClick="RemoveReg({$item.producto_categoria_id})" title="Desactivar producto">
                       <i class="fa fa-minus-circle" aria-hidden="true"></i>
					   
                    </a>
                    {/if}
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