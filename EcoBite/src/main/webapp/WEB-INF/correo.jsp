<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&family=Shadows+Into+Light&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="/css/Login.css">
    <link rel="stylesheet" href="/css/footer.css">
    <link rel="stylesheet" href="/css/atc.css">
    <link rel="shortcut icon" href="/img/pngwing.com.png">

    <title>Agenda tu cita</title>
</head>
<body>
	<header class="header">
        <div class="logo">
            <img src="/img/pngwing.com.png" alt="">
            <h3>FindMyVet</h3>
        </div>

        <nav class="nav-links">
            <a href="/">Home</a>
                <a href="/atencioncliente">Productos</a> 
                <a href="/dashboard">Donde donar tu ropa</a> 
				<a href="/aranceles">Publicidad</a>
				<a href="/informacion">Nosotros</a>
        </nav>
        <a href="/logout" class="btn">Cerrar Sesion</a>


        <a onclick="openNav()" class="menu" href="#">Menu</a>

        <div class="overlay" id="mobile-menu">
            <a href="" onclick="closeNav()" class="close">&times;</a>
            <div class="overlay-content">
                <a href="/">Home</a>
                <a href="/dashboard">Agenda tu cita</a>
                <a href="/informacion">Informacion</a>
                <a href="/logout" class="btn">Cerrar Sesion</a>

            </div>
        </div>
    </header>
    <div class="container">
        <h2>${vetid.vetname}</h2>
        <form action="https://formsubmit.co/${vetid.vetemail}" method="POST">
            
            <label for="Nombre">Nombre</label>
            <input type="text" name="name">

            <label for="email">Correo Electronico</label>
            <input type="email" name="email">

            <label for="subject">Tipo de cita</label>
            <input type="text" name="subject">

            <label for="start">Fecha</label>
            <input type="date"  name="date"
                   min="2023-02-08" max="2023-12-31">
            
            <label for="comments">Comentarios</label>
            <textarea name="comments" id="" cols="15" rows="5"></textarea>

            <input type="submit" value="Enviar">
       </form>
    </div>

    <footer>
        <div class="divcontact">
            <div class="logoimagen">
                <img src="/img/pngwing.com.png" alt="" width="40px" height="40px"><span>FindmyVet</span>
            </div>
            <p>
                <span class="material-symbols-outlined">mail</span>
                findmyvet@gmail.com
            </p>
            <p>
                <span class="material-symbols-outlined">call</span>
                800 775 222
            </p>
        </div>

    </footer>
    <div class="llama">
        <p>@ FindMyVet - Todos los derechos reservados</p>
    </div>
    <script>
        function openNav() {
            document.getElementById("mobile-menu").style.width = "100%";
        }
        function closeNav() {
            document.getElementById("mobile-menu").style.width = "0%";
        }

        var x = document.getElementById('login');
        var y = document.getElementById('register');
        var z = document.getElementById('btn');
        function register() {
            x.style.left = '-400px';
            y.style.left = '45px';
            z.style.left = '110px';
        }
        function login() {
            x.style.left = '50px';
            y.style.left = '450px';
            z.style.left = '0px';
        }
    </script>
</body>
</html>