<?php
// exit;

switch($_SERVER['HTTP_HOST'])
{
	//Local
	case 'localhost':

            // echo "addd"; exit;
			$webRoot = 'http://'.$_SERVER['HTTP_HOST'].'/emfrich'; 
			$docRoot = $_SERVER['DOCUMENT_ROOT'].'/emfrich'; 
			$sqlUser = 'root'; 
			$sqlPw = ''; 
			$sqlHost = 'localhost'; 
			$sqlDb = 'emfrichc_emfrich';
		break;
	
	//Produccion
	default:	
	        
			$webRoot = 'http://'.$_SERVER['HTTP_HOST'].''; 
			$docRoot = $_SERVER['DOCUMENT_ROOT'].'/'; 
			$rutaDocumento =  'http://'.$_SERVER['HTTP_HOST'].'';
			$rutaPortada =   'http://'.$_SERVER['HTTP_HOST'].'';
			$sqlUser = 'emfrichc_emfrich'; 
			$sqlPw = 'emfrich2017'; 
			$sqlHost = 'localhost'; 
			$sqlDb = 'emfrichc_emfrich';
		break;
}

/** RUTAS GENERALES **/

define('DOC_ROOT', $docRoot);
define('WEB_ROOT', $webRoot);

/** BASE DE DATOS **/

define('SQL_HOST', $sqlHost);
define('SQL_DATABASE', $sqlDb);
define('SQL_USER', $sqlUser);
define('SQL_PASSWORD', $sqlPw);

define('USER_PAC', '');
define('PW_PAC', '');


define('ITEMS_PER_PAGE', '20');

/** NOMBRE DEL SISTEMA **/

define('PROJECT_NAME', 'EMFRICH');
define('FOOTER', 'Create by Arista Soluciones');

?>