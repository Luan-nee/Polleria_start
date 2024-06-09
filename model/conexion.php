<?php
	class Modelo{
			protected $bdatos;
			protected $condicion;
			private $modelo;
			private $sql;
			
			public function __construct($usuario,$password,$basedatos)
			{  
				try {
					$this->modelo = array();
					$this->bdatos = new PDO("mysql:host=localhost;dbname=$basedatos","$usuario","$password");
				} catch (PDOException $e) {
					echo "Error al conectarse".$e;
				} 
			}
			private function ejecutar(){
				$aux_var = $this->bdatos->prepare($this->sql);
				$aux_var->execute();
				return $aux_var->rowCount();
			}
			public function reiniciar_valores(){
				$this->sql = "";
			}
			public function set_datos($tabla,$condicion){
				$this->sql = "SELECT * FROM $tabla WHERE $condicion";
				$aux_report = $this->bdatos->prepare($this->sql);
				$aux_report->execute();
				return $aux_report->fetchAll(PDO::FETCH_ASSOC);            
			}
	}

?>