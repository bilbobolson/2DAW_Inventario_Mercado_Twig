<?php

	require_once "TwigController.php" ;
	require_once "modelos/Item.php" ;

	class ItemController extends TwigController
	{
		/**
		 */
		public function __construct()
		{
			parent::__construct("./vistas") ;	
		}

		/**
		 */
		public function mostrar()
		{			
			$this->render("items/mostrarItems.php.twig", 
				[
					"datos" => Item::findAllByIdPue($_GET["id"])
				]) ;
		}

		/**
		 */
		public function borrar()
		{
			$item = Item::findById($_GET["id"]) ;
			if (!is_null($item)) $item->delete() ;
		}

		/**
		 */
		public function aniadir()
		{
			if (!isset($_GET["ite"])):
				$this->render("items/aniadirItems.php.twig",
					[
						"idp"    => $_GET["id"],
	 					"titulo" => "Añadir ítem",
					]) ;
			else:
				$item = new Item ;
				$item->setIdPue($_GET["idp"]) ;
				$item->setItem($_GET["ite"]) ;
				$item->setStock($_GET["sto"]) ;
				$item->setAlta(date("Y-m-d")) ;
				$item->save() ;

				header("location: http://localhost/inventario/puestos/info/{$_GET["idp"]}") ;
			endif ;
		}
	}