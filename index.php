<?php

	define('BASEDIR', __DIR__) ;

	/**
	 * Controlador Frontal
	 */

	$cop = $_GET["cop"]??"mostrar" ;
	$con = $_GET["con"]??"Puesto" ;

	// Establecemos el nombre del controlador
	$nombre = "{$con}Controller" ;

	// Importamos el controlador
	require_once __DIR__."/controladores/{$nombre}.php" ;

	// Instanciamos el controlador
	$controlador = new $nombre ;

	// Comprobamos si existe el método
	if (!method_exists($controlador, $cop))
		throw new Exception("La operación '$cop' no existe.") ;

	// Llamamos a la operación
	$controlador->$cop() ;
	

