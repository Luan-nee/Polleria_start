<?php
    require_once('model/conexion.php');
    class ModeloController{
        private $modelo;

        static function login(){
            require_once("./view/login.php");
        }
        static function no_disable(){
            require_once("./view/no_disable.php");
        }
        static function registro(){
            require_once("./view/registro.php");
        }
        static function productos(){
            require_once("./view/productos.php");
        }
        /*
        static function login(){
            require_once("./view/login.php");
        }
        static function iniciarSesion(){
            require_once("./view/iniciarSesion.php");
        }
        */
    }
?>