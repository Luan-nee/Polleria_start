/*
  ESTE ARCHIVO GUARDA TODAS LAS CONSULTAS
  QUE SE REALIZARON PARA CREAR LA BASE 
  DE DATOS DESDE CERO.

  para poder usar el software es necesario
  ejecutar las consultas de la linea 10 hasta
  la última linea.
*/

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema gdvo_p1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema gdvo_p1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gdvo_p1` DEFAULT CHARACTER SET utf8mb4 ;
USE `gdvo_p1` ;

-- -----------------------------------------------------
-- Table `gdvo_p1`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`categorias` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_c` VARCHAR(145) NULL DEFAULT NULL,
  `id_up` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`cliente_principal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`cliente_principal` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` VARCHAR(145) NULL DEFAULT NULL,
  `apellido_cliente` VARCHAR(245) NULL DEFAULT NULL,
  `foto_principal` VARCHAR(345) NULL DEFAULT NULL,
  `dni` VARCHAR(245) NULL DEFAULT NULL,
  `nombre_compania` VARCHAR(245) NULL DEFAULT 'GDVO_p',
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(),
  `hora_entrada` INT(11) NULL DEFAULT 0,
  `hora_salida` INT(11) NULL DEFAULT 0,
  `descripcion` VARCHAR(345) NULL DEFAULT 'ninguna descripcion',
  `direccion_app` VARCHAR(345) NULL DEFAULT NULL,
  `contrasenia` VARCHAR(245) NULL DEFAULT NULL,
  `clave_seguridad` VARCHAR(145) NULL DEFAULT NULL,
  `numero_cel` VARCHAR(45) NULL DEFAULT '0',
  `correo` VARCHAR(245) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`cuentas_p_t`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`cuentas_p_t` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(145) NULL DEFAULT NULL,
  `password` VARCHAR(145) NULL DEFAULT NULL,
  `rol` VARCHAR(145) NULL DEFAULT NULL,
  `nombre` VARCHAR(145) NULL DEFAULT NULL,
  `dni` VARCHAR(9) NULL DEFAULT NULL,
  `estado` VARCHAR(45) NULL DEFAULT 'activo',
  `id_up` INT(11) NULL DEFAULT NULL,
  `p_cocinero` INT(11) NULL DEFAULT 0,
  `p_mesero` INT(11) NULL DEFAULT 0,
  `p_caja` INT(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`mesas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`mesas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `n_mesa` INT(11) NULL DEFAULT NULL,
  `descripcion` VARCHAR(245) NULL DEFAULT NULL,
  `qr` VARCHAR(345) NULL DEFAULT NULL,
  `id_up` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`notas_venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`notas_venta` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` INT(11) NULL DEFAULT NULL,
  `id_up` INT(11) NULL DEFAULT NULL,
  `productos_descripcion` VARCHAR(2000) NULL DEFAULT NULL,
  `total` DOUBLE NULL DEFAULT NULL,
  `fecha_culminada` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(),
  `id_tipo_comprobante` INT(11) NULL DEFAULT NULL,
  `RUC` VARCHAR(45) NULL DEFAULT 'nulo',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`pedidos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_mesa` INT(11) NULL DEFAULT NULL,
  `confirmacion_cliente` INT(11) NULL DEFAULT -1,
  `confirmacion_cs` INT(11) NULL DEFAULT -1,
  `estado` VARCHAR(145) NULL DEFAULT 'espera',
  `fecha_pedido` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(),
  `fecha_concluido` DATETIME NULL DEFAULT NULL,
  `id_up` INT(11) NULL DEFAULT NULL,
  `tipo_pedido` INT(11) NULL DEFAULT NULL,
  `total` DOUBLE NULL DEFAULT 0,
  `id_cliente_l` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`productos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_p` VARCHAR(145) NULL DEFAULT NULL,
  `descripcion_p` VARCHAR(345) NULL DEFAULT 'ninguna',
  `img_p` VARCHAR(345) NULL DEFAULT '2',
  `precio_p` DOUBLE NULL DEFAULT 0,
  `id_cat` INT(11) NULL DEFAULT 1,
  `id_tipo_p` INT(11) NULL DEFAULT 1,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(),
  `id_up` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`roles` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `administrador` VARCHAR(45) NULL DEFAULT NULL,
  `cocinero` VARCHAR(45) NULL DEFAULT NULL,
  `mesero` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`tabla_pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`tabla_pedidos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` INT(11) NULL DEFAULT NULL,
  `id_producto` INT(11) NULL DEFAULT NULL,
  `cantidad` INT(11) NULL DEFAULT NULL,
  `suma_pedido` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`tipo_comprobante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`tipo_comprobante` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `dato` VARCHAR(45) NULL DEFAULT 'nota venta',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`tipo_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`tipo_pedido` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_t_p` VARCHAR(145) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`tipo_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`tipo_producto` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` VARCHAR(145) NULL DEFAULT 'ninguno',
  `id_up` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `gdvo_p1`.`usuario_local`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`usuario_local` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_u` VARCHAR(145) NULL DEFAULT 'user_local',
  `apellido_u` VARCHAR(145) NULL DEFAULT 'user_local',
  `dni_u` VARCHAR(9) NULL DEFAULT NULL,
  `correo` VARCHAR(245) NULL DEFAULT 'user_local',
  `foto_user` VARCHAR(245) NULL DEFAULT '2',
  `contrasenia` VARCHAR(245) NULL DEFAULT NULL,
  `id_up` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

USE `gdvo_p1` ;

-- -----------------------------------------------------
-- Placeholder table for view `gdvo_p1`.`cant_registro_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`cant_registro_usuarios` (`id_up` INT, `cantidad` INT);

-- -----------------------------------------------------
-- Placeholder table for view `gdvo_p1`.`cant_reservaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`cant_reservaciones` (`id_up` INT, `count(id)` INT);

-- -----------------------------------------------------
-- Placeholder table for view `gdvo_p1`.`cant_ventas_diarias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`cant_ventas_diarias` (`id_up` INT, `cantidad` INT);

-- -----------------------------------------------------
-- Placeholder table for view `gdvo_p1`.`cant_ventas_totales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`cant_ventas_totales` (`id_up` INT, `cantidad` INT);

-- -----------------------------------------------------
-- Placeholder table for view `gdvo_p1`.`claves_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`claves_user` (`id` INT, `clave_seguridad` INT);

-- -----------------------------------------------------
-- Placeholder table for view `gdvo_p1`.`datos_cliente_p`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`datos_cliente_p` (`id` INT, `foto_principal` INT, `nombre_compania` INT, `hora_entrada` INT, `hora_salida` INT, `descripcion` INT, `direccion_app` INT, `numero_cel` INT, `correo` INT, `fecha_registro` INT);

-- -----------------------------------------------------
-- Placeholder table for view `gdvo_p1`.`direcciones_app`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`direcciones_app` (`id` INT, `direccion_app` INT);

-- -----------------------------------------------------
-- Placeholder table for view `gdvo_p1`.`productos_datos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`productos_datos` (`id` INT, `nombre_p` INT, `descripcion_p` INT, `img_p` INT, `precio_p` INT, `id_cat` INT, `id_tipo_p` INT, `fecha_registro` INT, `id_up` INT, `categoria_date` INT);

-- -----------------------------------------------------
-- Placeholder table for view `gdvo_p1`.`reporte_comprobantes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `gdvo_p1`.`reporte_comprobantes` (`id` INT, `id_cliente` INT, `id_up` INT, `productos_descripcion` INT, `total` INT, `fecha_culminada` INT, `id_tipo_comprobante` INT, `RUC` INT, `nombre_u` INT, `apellido_u` INT, `dni_u` INT, `foto_user` INT, `dato` INT);

-- -----------------------------------------------------
-- function cantidad_fechas
-- -----------------------------------------------------

DELIMITER $$
USE `gdvo_p1`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `cantidad_fechas`(fechas DATETIME,id_date integer) RETURNS int(11)
BEGIN
	declare cantidad integer;
    set cantidad = (select count(fecha_concluido) as cantidad from pedidos where id_up = id_date and date(fechas) = date(fecha_concluido));
	
RETURN cantidad;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure get_datos_product_cat
-- -----------------------------------------------------

DELIMITER $$
USE `gdvo_p1`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_datos_product_cat`(tipo_pr int,id_ups int)
BEGIN
  select p.*,c.nombre_c as categoria_date from productos p,categorias c where c.id = p.id_cat and p.id_tipo_p = tipo_pr and p.id_up = id_ups;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function logeo_data
-- -----------------------------------------------------

DELIMITER $$
USE `gdvo_p1`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `logeo_data`(correos varchar(245),dnis varchar(245),pass varchar(145)) RETURNS int(11)
BEGIN
	declare valor integer default -1;
	declare id_correo_aux integer default -1;
    declare id_dni_aux integer default -1;
    declare id_pass integer default -1;
    set id_correo_aux = (SELECT id FROM gdvo_p1.cliente_principal where correo = correos);
    set id_dni_aux = (SELECT id FROM gdvo_p1.cliente_principal  where dni = dnis);
    set id_pass = (SELECT id FROM gdvo_p1.cliente_principal where contrasenia = pass);
    if  id_correo_aux = -1 or id_dni_aux = -1 or id_pass = -1 then 
		return -1;
	end if;
    if id_correo_aux = id_dni_aux  and id_pass = id_dni_aux then
		set valor = id_dni_aux;
    end if;
RETURN valor;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function validacion_date
-- -----------------------------------------------------

DELIMITER $$
USE `gdvo_p1`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `validacion_date`(ids int,clave varchar(145)) RETURNS int(11)
BEGIN
	declare val1 integer default -1;
    declare val2 integer default -1;
    set val1 = ( SELECT id from gdvo_p1.claves_user where id = ids);
    set val2 = (SELECT id from gdvo_p1.claves_user where clave_seguridad = clave);
    IF val1 = val2 then 
			return val1;
    end IF;
    return -1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- View `gdvo_p1`.`cant_registro_usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gdvo_p1`.`cant_registro_usuarios`;
USE `gdvo_p1`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gdvo_p1`.`cant_registro_usuarios` AS select `gdvo_p1`.`usuario_local`.`id_up` AS `id_up`,count(`gdvo_p1`.`usuario_local`.`id`) AS `cantidad` from `gdvo_p1`.`usuario_local` group by `gdvo_p1`.`usuario_local`.`id_up`;

-- -----------------------------------------------------
-- View `gdvo_p1`.`cant_reservaciones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gdvo_p1`.`cant_reservaciones`;
USE `gdvo_p1`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gdvo_p1`.`cant_reservaciones` AS select `gdvo_p1`.`pedidos`.`id_up` AS `id_up`,count(`gdvo_p1`.`pedidos`.`id`) AS `count(id)` from `gdvo_p1`.`pedidos` where `gdvo_p1`.`pedidos`.`tipo_pedido` = 2 and `gdvo_p1`.`pedidos`.`confirmacion_cliente` = 1 group by `gdvo_p1`.`pedidos`.`id_up`;

-- -----------------------------------------------------
-- View `gdvo_p1`.`cant_ventas_diarias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gdvo_p1`.`cant_ventas_diarias`;
USE `gdvo_p1`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gdvo_p1`.`cant_ventas_diarias` AS select `gdvo_p1`.`pedidos`.`id_up` AS `id_up`,count(`gdvo_p1`.`pedidos`.`id`) AS `cantidad` from `gdvo_p1`.`pedidos` where cast(`gdvo_p1`.`pedidos`.`fecha_concluido` as date) = curdate() and `gdvo_p1`.`pedidos`.`confirmacion_cs` > 0 group by `gdvo_p1`.`pedidos`.`id_up`;

-- -----------------------------------------------------
-- View `gdvo_p1`.`cant_ventas_totales`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gdvo_p1`.`cant_ventas_totales`;
USE `gdvo_p1`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gdvo_p1`.`cant_ventas_totales` AS select `gdvo_p1`.`pedidos`.`id_up` AS `id_up`,count(`gdvo_p1`.`pedidos`.`id`) AS `cantidad` from `gdvo_p1`.`pedidos` where `gdvo_p1`.`pedidos`.`fecha_concluido` <> NULL group by `gdvo_p1`.`pedidos`.`id_up`;

-- -----------------------------------------------------
-- View `gdvo_p1`.`claves_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gdvo_p1`.`claves_user`;
USE `gdvo_p1`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gdvo_p1`.`claves_user` AS select `gdvo_p1`.`cliente_principal`.`id` AS `id`,`gdvo_p1`.`cliente_principal`.`clave_seguridad` AS `clave_seguridad` from `gdvo_p1`.`cliente_principal`;

-- -----------------------------------------------------
-- View `gdvo_p1`.`datos_cliente_p`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gdvo_p1`.`datos_cliente_p`;
USE `gdvo_p1`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gdvo_p1`.`datos_cliente_p` AS select `gdvo_p1`.`cliente_principal`.`id` AS `id`,`gdvo_p1`.`cliente_principal`.`foto_principal` AS `foto_principal`,`gdvo_p1`.`cliente_principal`.`nombre_compania` AS `nombre_compania`,`gdvo_p1`.`cliente_principal`.`hora_entrada` AS `hora_entrada`,`gdvo_p1`.`cliente_principal`.`hora_salida` AS `hora_salida`,`gdvo_p1`.`cliente_principal`.`descripcion` AS `descripcion`,`gdvo_p1`.`cliente_principal`.`direccion_app` AS `direccion_app`,`gdvo_p1`.`cliente_principal`.`numero_cel` AS `numero_cel`,`gdvo_p1`.`cliente_principal`.`correo` AS `correo`,`gdvo_p1`.`cliente_principal`.`fecha_registro` AS `fecha_registro` from `gdvo_p1`.`cliente_principal`;

-- -----------------------------------------------------
-- View `gdvo_p1`.`direcciones_app`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gdvo_p1`.`direcciones_app`;
USE `gdvo_p1`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gdvo_p1`.`direcciones_app` AS select `gdvo_p1`.`cliente_principal`.`id` AS `id`,`gdvo_p1`.`cliente_principal`.`direccion_app` AS `direccion_app` from `gdvo_p1`.`cliente_principal`;

-- -----------------------------------------------------
-- View `gdvo_p1`.`productos_datos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gdvo_p1`.`productos_datos`;
USE `gdvo_p1`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gdvo_p1`.`productos_datos` AS select `p`.`id` AS `id`,`p`.`nombre_p` AS `nombre_p`,`p`.`descripcion_p` AS `descripcion_p`,`p`.`img_p` AS `img_p`,`p`.`precio_p` AS `precio_p`,`p`.`id_cat` AS `id_cat`,`p`.`id_tipo_p` AS `id_tipo_p`,`p`.`fecha_registro` AS `fecha_registro`,`p`.`id_up` AS `id_up`,`c`.`nombre_c` AS `categoria_date` from (`gdvo_p1`.`productos` `p` join `gdvo_p1`.`categorias` `c`) where `c`.`id` = `p`.`id_cat`;

-- -----------------------------------------------------
-- View `gdvo_p1`.`reporte_comprobantes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `gdvo_p1`.`reporte_comprobantes`;
USE `gdvo_p1`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gdvo_p1`.`reporte_comprobantes` AS select `n`.`id` AS `id`,`n`.`id_cliente` AS `id_cliente`,`n`.`id_up` AS `id_up`,`n`.`productos_descripcion` AS `productos_descripcion`,`n`.`total` AS `total`,`n`.`fecha_culminada` AS `fecha_culminada`,`n`.`id_tipo_comprobante` AS `id_tipo_comprobante`,`n`.`RUC` AS `RUC`,`u`.`nombre_u` AS `nombre_u`,`u`.`apellido_u` AS `apellido_u`,`u`.`dni_u` AS `dni_u`,`u`.`foto_user` AS `foto_user`,`c`.`dato` AS `dato` from ((`gdvo_p1`.`usuario_local` `u` join `gdvo_p1`.`notas_venta` `n`) join `gdvo_p1`.`tipo_comprobante` `c`) where `n`.`id_cliente` = `u`.`id` and `c`.`id` = `n`.`id_tipo_comprobante`;
USE `gdvo_p1`;

DELIMITER $$
USE `gdvo_p1`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `gdvo_p1`.`categorias_BEFORE_DELETE`
BEFORE DELETE ON `gdvo_p1`.`categorias`
FOR EACH ROW
BEGIN
	UPDATE gdvo_p1.productos SET id_cat = 1 WHERE (id_cat = old.id and id > 0);
END$$

USE `gdvo_p1`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `gdvo_p1`.`tabla_pedidos_AFTER_DELETE`
AFTER DELETE ON `gdvo_p1`.`tabla_pedidos`
FOR EACH ROW
BEGIN
	declare total_aux double;
	set total_aux = (SELECT sum(suma_pedido) from tabla_pedidos where id_pedido = old.id_pedido);
	update pedidos set total = total_aux  WHERE id = old.id_pedido;
END$$

USE `gdvo_p1`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `gdvo_p1`.`tabla_pedidos_AFTER_INSERT`
AFTER INSERT ON `gdvo_p1`.`tabla_pedidos`
FOR EACH ROW
BEGIN
	declare suma_t double;
    set suma_t = (SELECT sum(suma_pedido) from tabla_pedidos where id_pedido = new.id_pedido);
    update pedidos set total = suma_t WHERE id = new.id_pedido;
END$$

USE `gdvo_p1`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `gdvo_p1`.`tabla_pedidos_AFTER_UPDATE`
AFTER UPDATE ON `gdvo_p1`.`tabla_pedidos`
FOR EACH ROW
BEGIN
	declare total_aux double;
    set total_aux = (SELECT sum(suma_pedido) from tabla_pedidos where id_pedido = old.id_pedido);
	update pedidos set total = total_aux  WHERE id = old.id_pedido;
END$$

USE `gdvo_p1`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `gdvo_p1`.`tabla_pedidos_BEFORE_INSERT`
BEFORE INSERT ON `gdvo_p1`.`tabla_pedidos`
FOR EACH ROW
BEGIN
	DECLARE precios double;
    declare t_anterior double;
    SET precios = (SELECT (precio_p * new.cantidad) FROM productos WHERE id = new.id_producto);
	set new.suma_pedido = precios;
END$$

USE `gdvo_p1`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `gdvo_p1`.`tabla_pedidos_BEFORE_UPDATE`
BEFORE UPDATE ON `gdvo_p1`.`tabla_pedidos`
FOR EACH ROW
BEGIN
	declare cant integer;
    set cant = (SELECT precio_p FROM productos WHERE id = new.id_producto);
	SET new.suma_pedido = new.cantidad * cant;
END$$

USE `gdvo_p1`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `gdvo_p1`.`tipo_producto_BEFORE_DELETE`
BEFORE DELETE ON `gdvo_p1`.`tipo_producto`
FOR EACH ROW
BEGIN
	UPDATE productos SET id_tipo_p = 1 WHERE (id_tipo_p = old.id and id > 0);
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
