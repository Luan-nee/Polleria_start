/*
  ESTA BASE DE DATOS ES LA VERSIÓN RELACIADA PERO
  AÚN NO ESTÁ COMPLETA POR LO QUE SE RECOMIENDA NO
  USARLO
*/

-- -----------------------------------------------------
-- Schema gdvo_p1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `gdvo_p1` DEFAULT CHARACTER SET utf8mb4 ;
USE `gdvo_p1` ;

-- -----------------------------------------------------
-- Table `usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuario` (
  `dni` VARCHAR(8) NOT NULL,
  `nombre` VARCHAR(60) NOT NULL,
  `apellido_paterno` VARCHAR(60) NOT NULL,
  `apellido_materno` VARCHAR(60) NOT NULL,
  `email` VARCHAR(60) NULL DEFAULT 'null',
  `numeroCelular` VARCHAR(9) NULL DEFAULT 'null',
  `contrasenia` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`dni`)
);


-- -----------------------------------------------------
-- Table `jefe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jefe` (
  `idJefe` INT NOT NULL AUTO_INCREMENT,
  `usuario_dni` VARCHAR(8) NOT NULL,
  `nombreEmpresa` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idJefe`),
	FOREIGN KEY (`usuario_dni`) REFERENCES `usuario` (`dni`)
	ON DELETE CASCADE
	ON UPDATE CASCADE
  
);

-- -----------------------------------------------------
-- Table `categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `categoria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  `jefe_idJefe` INT NOT NULL,
  PRIMARY KEY (`id`),
	FOREIGN KEY (`jefe_idJefe`) REFERENCES `gdvo_p1`.`jefe` (`idJefe`)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);

-- -----------------------------------------------------
-- Table `cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario_dni` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`id`),
	FOREIGN KEY (`usuario_dni`) REFERENCES `usuario` (`dni`)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `producto` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NULL DEFAULT 'sin nombre',
  `descripcion` TEXT NULL DEFAULT 'ninguna' COMMENT 'esto es el nombre del producto mas largo de la historia',
  `precio` decimal(10,2) NULL DEFAULT 0,
  `fecha_registro` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP(),
  `descuento` FLOAT NULL DEFAULT 0,
  `categorias_id` INT NOT NULL,
  PRIMARY KEY (`id`),
	FOREIGN KEY (`categorias_id`) REFERENCES `gdvo_p1`.`categoria` (`id`)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `rol` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`)
);
/*
esta tabla se me limitado a solo tener 4 registros, mesero, cocinero, delivery y cajero.
*/


-- -----------------------------------------------------
-- Table `empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `activo` BOOLEAN NOT NULL DEFAULT true,
  `fecha_contratado` DATETIME NOT NULL DEFAULT current_timestamp(),
  `fecha_despido` DATETIME DEFAULT null,
  `rol_id` INT NOT NULL,
  `usuario_dni` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`id`),
	FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (`usuario_dni`) REFERENCES `usuario` (`dni`)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


-- -----------------------------------------------------
-- Table `estadoPreparacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `estadoPreparacion` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NULL,
  PRIMARY KEY (`id`)
);


-- -----------------------------------------------------
-- Table `mesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mesa` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_mesa` INT NOT NULL,
  PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `tipoVenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tipoVenta` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`)
);


-- -----------------------------------------------------
-- Table `tipoEntrega`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tipoEntrega` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`)
);


-- -----------------------------------------------------
-- Table `venta`
-- -----------------------------------------------------
	CREATE TABLE IF NOT EXISTS `venta` (
		`id` INT NOT NULL,
		`cantidadVendida` INT NOT NULL,
		`fecha_venta` DATETIME NOT NULL DEFAULT current_timestamp(),
		`productos_id` INT NOT NULL,
		`cliente_id` INT NOT NULL,
		`tipoVenta_id` INT NOT NULL,
		`estadoPreparacion_id` INT NOT NULL,
		`mesa_id` INT NOT NULL,
		`tipoEntrega_id` INT NOT NULL,
		PRIMARY KEY (`id`),
		FOREIGN KEY (`productos_id`) REFERENCES `producto` (`id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
		FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
		FOREIGN KEY (`estadoPreparacion_id`) REFERENCES `estadoPreparacion` (`id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
		FOREIGN KEY (`mesa_id`) REFERENCES `mesa` (`id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
		FOREIGN KEY (`tipoVenta_id`) REFERENCES `tipoVenta` (`id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
		FOREIGN KEY (`tipoEntrega_id`) REFERENCES `tipoEntrega` (`id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
	);