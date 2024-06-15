<?php function favorito($urlImg, $nombreProducto){ ?>
  <article class="favorito">
    <div class="corazon">
      <img src="view/icon/corazon.png" alt="">
    </div>

    <div class="foto-producto">
      <img src="<?php echo $urlImg;?>" alt="">
    </div>

    <p><?php echo $nombreProducto;?></p>
  </article>
<?php }?>