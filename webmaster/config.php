<?php

switch($_SERVER['HTTP_HOST'])
{
	//Local
	case 'localhost': 	
			$webRoot = 'http://'.$_SERVER['HTTP_HOST'].'/emfrich/webmaster'; 
			$docRoot = $_SERVER['DOCUMENT_ROOT'].'/emfrich/webmaster';
			$docRootImg = $_SERVER['DOCUMENT_ROOT'].'/emfrich/images';  
			$sqlUser = 'root'; 
			$sqlPw = ''; 
			$sqlHost = 'localhost'; 
			$sqlDb = 'emfrichc_emfrich';
		break;
	
	//Server de Pruebas
	case '192.168.1.200': 
	case 'desarrollot.no-ip.biz': 
			$webRoot = 'http://'.$_SERVER['HTTP_HOST'].'/rpp'; 
			$docRoot = $_SERVER['DOCUMENT_ROOT'].'/rpp'; 
			$sqlUser = 'root'; 
			$sqlPw = 'root'; 
			$sqlHost = '192.168.1.200'; 
			$sqlDb = 'ceba_db';
		break;
	
	//Produccion
	default:	
			$webRoot = 'http://'.$_SERVER['HTTP_HOST'].'/webmaster'; 
			$docRoot = $_SERVER['DOCUMENT_ROOT'].'/webmaster'; 
			$docRootImg = $_SERVER['DOCUMENT_ROOT'].'/images';
			$rutaDocumento =  'http://'.$_SERVER['HTTP_HOST'].'/webmaster';
			$rutaPortada =   'http://'.$_SERVER['HTTP_HOST'].'/webmaster';
			$sqlUser = 'emfrichc_emfrich'; 
			$sqlPw = 'emfrich2017'; 
			$sqlHost = 'localhost'; 
			$sqlDb = 'emfrichc_emfrich';
		break;
}

/** RUTAS GENERALES **/

define('DOC_ROOT', $docRoot);
define('DOC_ROOT_IMG', $docRootImg);
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

define('PROJECT_NAME', 'WEBMASTER ::.');
define('FOOTER', '2017 Creado por Arista Soluciones ');

?>