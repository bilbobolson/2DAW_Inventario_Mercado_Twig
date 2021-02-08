<?php

	require_once "TwigController.php" ;
	require_once "modelos/Puesto.php" ;

	class PuestoController extends TwigController
	{
	
		public function __construct() 
		{
			parent::__construct("./vistas") ;
		}

		/**
		 * Muestra un listado de todos los puestos del mercado.
		 */
		public function mostrar()
		{						
			$this->render("puestos/mostrarPuestos.php.twig", 
				[
					"titulo" => "Listado de puestos",
					"datos"  => Puesto::findAll(),
				]) ;	
		}

		/**
		 * Muestra información sobre el puesto indicado.
		 */
		public function info()
		{					
			// buscamos el puesto
			$pue = Puesto::findById($_GET["id"]) ;

			// mostramos información
			$this->render("puestos/infoPuestos.php.twig", 
				[
					"titulo" => (is_null($pue)?"":$pue->getNombre()),
					"datos"  => $pue,
					"stock"  => (is_null($pue)?[]:$pue->items()),
				]) ;	
		}
	}