<?php include('./view/layout/itemCarrito-component.php') ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Carrito</title>
  <link rel="stylesheet" href="./view/css-component/itemCarrito.css">
  <link rel="stylesheet" href="./view/css/carrito.css">
</head>
<body>
  <div class="centrar-contenido">
    <section class="header-carrito">
      <p>CARRITO DE COMPRAS</p>
      <p>
        TOTAL 
        <span>S/400.80</span>
      </p>
    </section>
  
    <section class="conteiner-itemsCarrito">
      <?php 
        itemCarrito(
          '1/4 DE POLLO',
          1,
          'Plato ahora estoy agregando texto por demás, espero no te molestes :X de pollo a la brasa que contienen papa fritas, ensalada, refresco y mayonesa',
          100.20,
          0
        ); 
        itemCarrito(
          '1/4 DE POLLO',
          1,
          'Plato ahora estoy agregando texto por demás, espero no te molestes :X de pollo a la brasa que contienen papa fritas, ensalada, refresco y mayonesa',
          100.20,
          0
        ); 
        itemCarrito(
          '1/4 DE POLLO',
          1,
          'Plato ahora estoy agregando texto por demás, espero no te molestes :X de pollo a la brasa que contienen papa fritas, ensalada, refresco y mayonesa',
          100.20,
          0
        ); 
        itemCarrito(
          '1/4 DE POLLO',
          1,
          'Plato ahora estoy agregando texto por demás, espero no te molestes :X de pollo a la brasa que contienen papa fritas, ensalada, refresco y mayonesa',
          100.20,
          0
        ); 
      ?>
    </section>
  
    <section class="opciones">
      <a href="index.php?opcion=productos">regresar</a>
      <a href="#realizar compra asinzonamente">realizar compra</a>
    </section>
  </div>
</body>
</html>