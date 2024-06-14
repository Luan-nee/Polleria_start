<?php function favorito($urlImg, $nombreProducto){ ?>
  <article class="favorito">
    
    <div class="foto-producto">
      <div class="corazon">
        <img src="view/icon/corazon.png" alt="">
      </div>
      <img class="imagen-producto" src="<?php echo $urlImg;?>" alt="">
    </div>

    <p><?php echo $nombreProducto;?></p>
  </article>
<?php }?>