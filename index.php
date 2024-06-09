<?php
    require_once("./config.php");
    require_once("./controller/ModeloController.php");

    if(isset($_GET['opcion'])){
        if(method_exists("ModeloController",$_GET['opcion'])){
            ModeloController::{$_GET['opcion']}();
        }else{
            ModeloController::no_disable();
        }
    }else{
        ModeloController::login();
    }

?>

