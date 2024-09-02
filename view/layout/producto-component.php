<?php function producto($urlImg, $nombrePlato, $precio, $descuento ){ ?>
  <section class="item-producto">
    <div>
      <img src=" <?php echo $urlImg; ?> " alt="foto de una imagen <?php echo $nombrePlato; ?>">
    </div>
    <div>
      <h3>
        <?php echo $nombrePlato; ?>
      </h3>

      <p>
        S/<?php echo number_format($precio,2); ?>
      </p>

      <button type="buttom">agregar</button>
    </div>
  </section>
<?php }?>