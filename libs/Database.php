<?php	

	class Database
	{
		const HOST   = "localhost" ;
		const USER   = "root" ;
		const PASS   = "" ;
		const DBNAME = "inventario" ;

		private static ?Database $instancia = null ;
		private $sqli ;
		private $res ;

		private function __clone() { }
		private function __construct() 
		{
			$this->sqli = @new mysqli(self::HOST, self::USER, 
									  self::PASS, self::DBNAME) ;			
			if ($this->sqli->connect_errno)
				die("**ERROR: no se ha podido conectar con el servidor de bases de datos.") ;
		}

		/**
		 */
		public static function getDatabase():Database
		{
			if (self::$instancia==null) self::$instancia = new Database ;
			return self::$instancia ;
		}

		/**
			@param string $sql
			@return
		 */
		public function consulta(string $sql):bool
		{
			$this->res = $this->sqli->query($sql) ;

			// Si SELECT y se ha hecho con éxito se devuelve un mysqli_result
			// Si INSERT, UPDATE, DELETE con éxito se devuelve TRUE
			// Si la consulta no ha tenido éxito se devuelve FALSE
			if (is_object($this->res)) return ($this->res->num_rows > 0) ;
			else 
				return (($this->res) and ($this->sqli->affected_rows > 0)) ;
		}

		/**
			@param string $class
			@return
		 */
		public function getObjeto(string $class = "StdClass"):?Object
		{
			return $this->res->fetch_object($class) ;
		}

		/**
			@return
		 */
		public function getUltimoId():int
		{
			return $this->sqli->insert_id ;
		}

		/**
		 */
		public function __destruct()
		{
			$this->sqli->close() ;
		}
	} 