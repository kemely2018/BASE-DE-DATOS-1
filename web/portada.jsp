<%-- 
    Document   : portada
    Created on : 03/07/2018, 08:41:01 AM
    Author     : Kemely
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>PORTADA TV!</title>
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <script  src="js/Login.js"></script>
    <script  src="js/Catalogo.js"></script>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
    <header>
        <div class="container-header">
            <div class="logo-title">
                <img src="image/h.png" >
                <h4>TIENDA ONLINE DE TELEVISORES </h4>
            <div class="detalle">
                <button onclick="location.href='Login.jsp';">LOGIN 🔒</button>
             </div>
             <div class="detalleregistrar">
                <button onclick="location.href='RegistrarCliente.jsp';">REGISTRAR 📝</button>
             </div>
            </div>
        </div>
    </header>
    <div class="container-portada">
        <div class="capa-gradient"></div>
        <div class="container-details">

            <div class="details">
                <h1>TV!</h1>
                <p>Somos una tienda , con mas de 20 locales distribuidos en todo el Peru .Siempre con la calidad que nos respalda en los 10 años que trabajamos en la industria de la tecnologia con la venta de los mejores televisores . Ahora a travez de internet.</p>
                <button onclick="location.href='Catalogo.jsp';">EMPEZAR A COMPRAR 🛒</button>
            </div>
        </div>
    </div>
    
</body>
</html>