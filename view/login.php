<?php include("view/layout/header.php") ?>
  <title>LOGIN</title>  
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
      <input 
        type="text" 
        name="login-email-user" 
        placeholder="Email"
        value="user@gmail.com"
      >
      <input 
        type="password" 
        name="login-password-user" 
        placeholder="Password"
        value="12345678"
      >
      <div>
        <a href="#NoRecordar">remember</a>
        <a href="#RecuperarPassword">forget password</a>
      </div>
      <button name="btn" value="login" type="submit">login</button>
      <p>
        No tienen una Cuenta? <a href="index.php?opcion=registro">Crear una cuenta</a>
      </p>
    </form>
  </section>
</body>
</html>