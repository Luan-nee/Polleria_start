<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <h1>login</h1>
  <p>apartado para iniciar sesion con la cuenta que ya tienes creado</p>
  <br>
  <hr>
  <label for="email-login">
    <p>correo electrónico:</p>
    <input type="email" name="email-login" id="input-email-login">
  </label>
  <label for="password-login">
    <p>contraseña:</p>
    <input type="password" name="password-login" id="input-password-login">
  </label>
  <button>Login</button>
</body>

<style>
  *{
    padding: 0px;
    margin: 0px;
  }
  body{
    display:flex;
    flex-direction: column;
    padding: 0px 400px;
  }
</style>
</html>