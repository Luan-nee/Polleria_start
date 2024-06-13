<?php 
require_once("view/layout/categoria-component.php");
require_once("view/layout/favorito-component.php");

include("view/layout/header.php");
?>
  <title>PRODUCTOS</title>  
  <link rel="stylesheet" href="view/css/main.css">
  <link rel="stylesheet" href="view/css/productos.css">
  <link rel="stylesheet" href="view/css-component/categoria.css">
  <link rel="stylesheet" href="view/css-component/favorito.css">
</head>
<body>
  <section class="productos dispositivo-Movil">
    <header class="productos-cabecera">
      <img src="view/icon/menu.png" alt="">
      <p>Polleria Start</p>
      <img src="view/icon/carrito.png" alt="">
    </header>
    <input class="productos-buscador" type="search" placeholder="buscar">
    <div class="productos-ofertas">
      <img src="view/img/oferta.jpg" alt="">
    </div>
    <section class="productos-conteiner-categorias">
      <?php 
        categoria('view/icon/plato.png','Platos');
        categoria('view/icon/combo.png','Combos'); 
        categoria('view/icon/bino.png','Binos'); 
        categoria('view/icon/gaseosa.png','Gaseosas'); 
        categoria('view/icon/refresco.png','Refrescos');
      ?>
    </section>
    <section class="productos-conteiner-favoritos">
      <?php 
        favorito('view/img/plato-de-comida.png', "pollito a la brasa");
        favorito('view/img/plato-de-comida.png', "pollito a la brasa");
        favorito('view/img/plato-de-comida.png', "pollito a la brasa");
      ?>
    </section>
  </section>
</body>