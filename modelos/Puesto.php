<?php

	require_once "Item.php" ;
	require_once "libs/Database.php" ;

	class Puesto
	{
		private ?int $idPue = null ;
		private string $nombre ;
		private string $ubicacion ;
		private $planta ;
		private $numero ;

	    /**
	     * @return mixed
	     */
	    public function getIdPue()
	    {
	        return $this->idPue;
	    }

	    /**
	     * @return mixed
	     */
	    public function getNombre()
	    {
	        return $this->nombre;
	    }

	    /**
	     * @param mixed $nombre
	     *
	     * @return self
	     */
	    public function setNombre($nombre)
	    {
	        $this->nombre = $nombre;

	        return $this;
	    }

	    /**
	     * @return mixed
	     */
	    public function getUbicacion()
	    {
	        return $this->ubicacion;
	    }

	    /**
	     * @param mixed $ubicacion
	     *
	     * @return self
	     */
	    public function setUbicacion($ubicacion)
	    {
	        $this->ubicacion = $ubicacion;

	        return $this;
	    }

	    /**
	     * @return mixed
	     */
	    public function getPlanta()
	    {
	        return $this->planta;
	    }

	    /**
	     * @param mixed $planta
	     *
	     * @return self
	     */
	    public function setPlanta($planta)
	    {
	        $this->planta = ($planta)?$planta:0 ;

	        return $this;
	    }

	    /**
	     * @return mixed
	     */
	    public function getNumero()
	    {
	        return $this->numero;
	    }

	    /**
	     * @param mixed $numero
	     *
	     * @return self
	     */
	    public function setNumero($numero)
	    {	    		    
	        $this->numero = ($numero)?$numero:0 ;

	        return $this;
	    }

	    /**
	     * Devuelve un array con el listado de puestos
	     */
	    public static function findAll()
	    {
	    	$db = Database::getDatabase() ;
	    	$db->consulta("SELECT * FROM puesto ;") ;

	    	$datos = [] ;
	    	while ($item = $db->getObjeto("Puesto"))
	    		array_push($datos, $item) ;
	    	//
	    	return $datos ;
	    }

	    /**
	     * Devuelve el puesto indicado, si se encuentra.
	     */
	    public static function findById(int $idp)
	    {
	    	$db = Database::getDatabase() ;
	    	$db->consulta("SELECT * FROM puesto WHERE idPue = $idp ;") ;

	    	//
	    	return $db->getObjeto("Puesto") ;
	    }

	    /**
	     * @return
	     */
	    public function items()
	    {
	    	$db = Database::getDatabase() ;
	    	$db->consulta("SELECT * FROM item WHERE idPue = {$this->idPue} ;") ;

	    	$datos = [] ;
	    	while ($item = $db->getObjeto("Item"))
	    		array_push($datos, $item) ;
	    	//
	    	return $datos ;
	    }

}

