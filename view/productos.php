<?php 
require_once("view/layout/producto-component.php");

include_once("view/layout/header.php");
?>
  <title>PRODUCTOS</title>  
  <link rel="stylesheet" href="view/css/main.css">
  <link rel="stylesheet" href="view/css/productos.css">
  <link rel="stylesheet" href="view/css-component/producto.css">

  <script defer src="https://cdn.jsdelivr.net/npm/glider-js@1.7.9/glider.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/glider-js@1.7.9/glider.min.css" rel="stylesheet">
  <script defer src="./view/js/carrusel-producto.js"></script>
</head>
<body>
<section class="CONTENEDOR-GENERAL">
  <header class="header">
    <div class="conteiner-img-user">
      <img src="./view/img/logo.jpg" alt="">
    </div>

    <nav>
      <a href="#" class="activo-nav">INICIO</a>
      <a href="#">COMPRAS</a>
      <div class="conteiner-user-perfil">
        <img src="./view/img/perfil-user.jpg" alt="imagen del usuario">
      </div>
    </nav>
  </header>

  <article class="conteiner-carrusel">
    <header class="header-carrusel">
      <section>
        <p>OFERTAS</p>
      </section>
      <div id="resp-dots" class="indicador-carrusel" style="margin: 0px; padding: 0px; justify-content: end;"></div>
    </header>
    
    <section>
      <!-- fin carrosel -->
      <div class="glider">
        <img src="./view/img/pollo1.png" alt="">
        <img src="./view/img/pollo2.png" alt="">
        <img src="./view/img/pollo3.png" alt="">
        <img src="./view/img/pollo4.png" alt="">
        <img src="./view/img/pollo5.png" alt="">
        <img src="./view/img/pollo6.png" alt="">
        <img src="./view/img/pollo7.png" alt="">
        <img src="./view/img/pollo8.png" alt="">
      </div>
      <!-- inicio carrosel -->
    </section>
  </article>

  <section class="conteiner-categorias">
    <a href="#" class="activo-categoria">categoria 1</a>
    <a href="#">categoria 2</a>
    <a href="#">categoria 3</a>
  </section>

  <main class="conteiner-producto">
    <?php
    producto(
      "view/img/pollo1.png",
      'POLLO ENTERO CON ENSALDA',
      70.20,
      0
    );
    producto(
      "view/img/pollo2.png",
      'POLLO ENTERO CON ENSALDA',
      70.20,
      0
    );
    producto(
      "view/img/pollo3.png",
      'POLLO ENTERO CON ENSALDA',
      70.20,
      0
    );
    ?>
  </main>
</section>
</body>