-- drop schema gdvo_p1;

use gdvo_p1;

-- Tabla categorias
INSERT INTO `gdvo_p1`.`categorias` (`nombre_c`, `id_up`) VALUES 
('Comidas', 1),
('Bebidas', 1),
('Bebidas', NULL),
('Comidas', NULL),
('Postres', NULL),
('Entradas', NULL);


-- Tabla cliente_principal
INSERT INTO `gdvo_p1`.`cliente_principal` (`nombre_cliente`, `apellido_cliente`, `foto_principal`, `dni`, `nombre_compania`, `direccion_app`, `contrasenia`, `clave_seguridad`, `numero_cel`, `correo`) VALUES 
('Juan', 'Perez', 'foto1.jpg', '12345678', 'GDVO_p', 'Calle Falsa 123', 'pass123', 'clave123', '999999999', 'juan.perez@gmail.com'),
('Maria', 'Gomez', 'foto2.jpg', '87654321', 'GDVO_p', 'Avenida Siempre Viva 742', 'pass456', 'clave456', '888888888', 'maria.gomez@gmail.com'),
('Carlos', 'Lopez', 'carlos.jpg', '12345678', 'GDVO_p', 'Avenido Dos de Mayo', 'pass4156', 'clave4e56', '777777777', 'carlos.lopez@gmail.com'),
('Maria', 'Gonzalez', 'maria.jpg', '87654321', 'GDVO_p', 'Jorge chavez UwU', 'pass356', 'clave4q56', '666666666', 'maria.gonzalez@hotmail.com');


-- Tabla cuentas_p_t
INSERT INTO `gdvo_p1`.`cuentas_p_t` (`usuario`, `password`, `rol`, `nombre`, `dni`, `estado`) VALUES 
('admin', 'admin123', 'Administrador', 'Admin', '123456789', 'activo'),
('cocinero1', 'cook123', 'Cocinero', 'Carlos', '987654321', 'activo'),
('jdoe', 'password789', 'admin', 'John Doe', '11111111', 'activo'),
('msmith', 'password012', 'mesero', 'Mary Smith', '22222222', 'activo');



-- Tabla mesas
INSERT INTO `gdvo_p1`.`mesas` (`n_mesa`, `descripcion`, `qr`) VALUES 
(1, 'Mesa cerca de la ventana', 'qr1.png'),
(2, 'Mesa en el centro', 'qr2.png'),
(1, 'Mesa junto a la ventana', 'qr1.png'),
(2, 'Mesa en el centro del salón', 'qr2.png');




-- Tabla notas_venta
INSERT INTO `gdvo_p1`.`notas_venta` (`id_cliente`, `productos_descripcion`, `total`, `id_tipo_comprobante`, `RUC`) VALUES 
(1, 'Pollo a la brasa, Coca Cola', 50.00, 1, '20123456789'),
(2, 'Ceviche, Inca Kola', 35.00, 2, '20987654321'),
(1, 'Pollo a la brasa, Inka Kola', 45.00, 1, '20100123456'),
(2, 'Ceviche, Limonada', 30.00, 2, '20456789012');






-- Tabla pedidos
INSERT INTO `gdvo_p1`.`pedidos` (`id_mesa`, `confirmacion_cliente`, `confirmacion_cs`, `estado`, `tipo_pedido`, `total`, `id_cliente_l`) VALUES 
(1, 1, 1, 'servido', 1, 50.00, 1),
(2, 1, 1, 'servido', 2, 35.00, 2),
(1, 1, 1, 'completado', 1, 45.00, 1),
(2, 1, 0, 'en proceso', 2, 30.00, 2);


-- Tabla productos
INSERT INTO `gdvo_p1`.`productos` (`nombre_p`, `descripcion_p`, `img_p`, `precio_p`, `id_cat`, `id_tipo_p`) VALUES 
('Pollo a la brasa', 'Pollo dorado y jugoso', 'pollo.jpg', 25.00, 1, 1),
('Coca Cola', 'Bebida gaseosa', 'cocacola.jpg', 5.00, 2, 2),
('Pollo a la brasa', 'Pollo marinado y asado a la perfección', 'pollo.jpg', 30.00, 2, 1),
('Inka Kola', 'Gaseosa peruana', 'inka_kola.jpg', 5.00, 1, 1),
('Ceviche', 'Plato tradicional de pescado marinado', 'ceviche.jpg', 25.00, 2, 1),
('Limonada', 'Refrescante bebida de limón', 'limonada.jpg', 5.00, 1, 1);



-- Tabla roles
INSERT INTO `gdvo_p1`.`roles` (`administrador`, `cocinero`, `mesero`) VALUES 
('admin', 'cocinero1', 'mesero1'),
('admin', NULL, NULL),
(NULL, 'chef', NULL),
(NULL, NULL, 'waiter');




-- Tabla tabla_pedidos
INSERT INTO `gdvo_p1`.`tabla_pedidos` (`id_pedido`, `id_producto`, `cantidad`, `suma_pedido`) VALUES 
(1, 1, 2, 50.00),
(2, 2, 3, 15.00),
(1, 1, 1, 30.00),
(1, 2, 1, 5.00),
(2, 3, 1, 25.00),
(2, 4, 1, 5.00);


-- Tabla tipo_comprobante
INSERT INTO `gdvo_p1`.`tipo_comprobante` (`dato`) VALUES 
('Boleta'), 
('Factura'),
('Factura'),
('Boleta'),
('Nota de venta');




-- Tabla tipo_pedido
INSERT INTO `gdvo_p1`.`tipo_pedido` (`nombre_t_p`) VALUES 
('Para llevar'), 
('En local'),
('Para llevar'),
('Para consumir en el local'),
('Delivery'),
('Reserva');



-- Tabla tipo_producto
INSERT INTO `gdvo_p1`.`tipo_producto` (`nombre_producto`) VALUES 
('Comida'), 
('Bebida'),
('Comida'),
('Bebida'),
('Postre');



-- Tabla usuario_local
INSERT INTO `gdvo_p1`.`usuario_local` (`nombre_u`, `apellido_u`, `dni_u`, `correo`, `contrasenia`) VALUES 
('User', 'Local', '123456789', 'userlocal@gmail.com', 'userlocal123'),
('Pedro', 'Martinez', '33333333', 'pedro.martinez@gmail.com', 'password789'),
('Ana', 'Perez', '44444444', 'ana.perez@hotmail.com', 'password012');


