<?php

	require_once "vendor/autoload.php" ;

	class TwigController
	{
		private $config ;
		private $twig   ;

		public function __construct(string $ruta)
		{
			$this->config = new \Twig\Loader\FilesystemLoader($ruta) ;
			$this->twig   = new \Twig\Environment($this->config) ;
		}

		/**
		 */
		public function render(string $ruta, array $params = [])
		{
			echo $this->twig->render($ruta, $params) ;
		}
	}