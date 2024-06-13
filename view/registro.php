<?php include("view/layout/header.php") ?>
  <title>REGISTRO</title>
  <link rel="stylesheet" href="view/css/main.css">
  <link rel="stylesheet" href="view/css/login.css">
</head>
<body>
  <section class="login dispositivo-Movil">
    <div class="login-logo">
      <img src="view/icon/logoPollo.png" alt="fondo del login">
      <p>Polleria Start</p>
    </div>

    <form class="login-credenciales" action="index.php" method="post">
      <input type="text" placeholder="Nombres">
      <input type="text" placeholder="Apellidos">
      <input type="text" placeholder="Nro de Celular">
      <input type="email" placeholder="Correo Electrónico">
      <input type="password" placeholder="Contraseña">
      <input type="password" placeholder="Validar Contraseña">
      <button type="submit">login</button>
      <p>
        Ya tienes Cuenta? <a href="index.php?opcion=login">iniciar sesión</a>
      </p>
    </form>
  </section>
</body>
</html>