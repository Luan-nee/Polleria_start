<?php function categoria($urlImg, $nombreCategoria){ ?>
  <article class="producto-categoria">
    <img 
      src="<?php echo $urlImg;?>" 
      alt="<?php echo "imagen de la categoria ".$nombreCategoria;?>"
    >
    <p>
      <?php echo $nombreCategoria;?>
    </p>
  </article>
<?php } ?>