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
        if(isset($_POST['btn']) && $_POST['btn'] == 'login'){
            //validación de datos de usuario
    
            //si los datos son "correctos", permitir acceso
            //a los productos.
            if(
                $_POST['login-email-user'] == 'user@gmail.com'
                && $_POST['login-password-user'] == '12345678'
            ){
                ModeloController::productos();
            }
            //si los datos son "incorrectos", regresar al login 
        }else if(isset($_POST['btn']) && $_POST['btn'] == 'registro'){
            //guardar datos del usuario
            
            //permite acceso a los productos
        }else{
            ModeloController::login();
        }
    }

?>

