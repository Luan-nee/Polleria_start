<?php function itemCarrito($nombrePlato, $cantidad, $description, $precioUnidad, $descuento){ ?>

  <?php 
    $montoTotal = ($precioUnidad * $cantidad) - ($precioUnidad * $cantidad * $descuento); 
  ?>

  <section class="item_carrito">
  <div>
    <h4>
      <?php echo $nombrePlato; ?>
    </h4>
    <p>
      x<?php echo $cantidad; ?>
    </p>
  </div>

  <div>
    <p>
      <?php echo $description; ?>
    </p>
  </div>
  
  <div>
    <p>
      S/<?php echo number_format($montoTotal,2); ?>
    </p>
  </div>
</section>

<?php } ?>