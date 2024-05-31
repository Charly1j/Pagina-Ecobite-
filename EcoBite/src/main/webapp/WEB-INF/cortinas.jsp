<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
	integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI="
	crossorigin="" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&family=Shadows+Into+Light&display=swap">
<link rel="stylesheet" href="">
<link rel="stylesheet" href="/css/Login.css">
<link rel="stylesheet" href="/css/atc.css">
<link rel="stylesheet" href="/css/index.css">
<link rel="stylesheet" href="/css/footer.css">
<link rel="stylesheet" href="/css/productos.css">
<link rel="shortcut icon" href="/img/ecobite-logo.png">

<title>Productos</title>
</head>
<body>
	<div class="container">
		<header class="header">
			<div class="logo">
				<a href="/"><img src="/img/ecobite-logo.png" alt="">
				<h3>EcoBite</h3></a>
			</div>

			<nav class="nav-links">
				<a href="/">Home</a>
                <a href="/atencioncliente">Productos</a> 
                <a href="/dashboard">Donde donar tu ropa</a> 
				<a href="/aranceles">Publicidad</a>
				<a href="/informacion">Nosotros</a>
			</nav>
			<a href="/logout" class="btn">Cerrar Sesion</a> <a
				onclick="openNav()" class="menu" href="#">Menu</a>

			<div class="overlay" id="mobile-menu">
				<a href="" onclick="closeNav()" class="close">&times;</a>
				<div class="overlay-content">
					<a href="/">Home</a> <a href="/dashboard">Agenda tu cita</a> <a
						href="/informacion">Informacion</a> <a href="/logout" class="btn">Cerrar
						Sesion</a>

				</div>
			</div>
		</header>
		<main>

			<!--PRODUCTOS-->

			<section id="alfombras">

				<article class="producto">
					<img src="/img/cortina_blanca.jpg" alt="Producto 1">
					<h3>Cortina</h3>
					<p>Cortina aislante.</p>
					<span>$6.990</span>
					<button class="boton-producto">Agregar al carrito</button>
				</article>

				<article class="producto">
					<img src="/img/cortina_pun.jpg" alt="Producto 2">
					<h3>Cortina</h3>
					<p>Cortina aislante.</p>
					<span>$15.990</span>
					<button class="boton-producto">Agregar al carrito</button>
				</article>

				<article class="producto">
					<img src="/img/cortina_dis.jpg" alt="Producto 2">
					<h3>Cortina</h3>
					<p>Cortina aislante.</p>
					<span>$12.990</span>
					<button class="boton-producto">Agregar al carrito</button>
				</article>

				<article class="producto">
					<img src="/img/cortina_verde.jpg" alt="Producto 2">
					<h3>Cortina</h3>
					<p>Cortina aislante.</p>
					<span>$8.990</span>
					<button class="boton-producto">Agregar al carrito</button>
				</article>

			</section>

			<!--parte de abajo-->

			<section id="alfombras">

				<article class="producto">
					<img src="/img/cortina_cafe.jpg" alt="Producto 1">
					<h3>Cortina</h3>
					<p>Cortina aislante.</p>
					<span>$6.990</span>
					<button class="boton-producto">Agregar al carrito</button>
				</article>

				<article class="producto">
					<img src="/img/cortina_ped.jpg" alt="Producto 2">
					<h3>Cortina</h3>
					<p>Cortina aislante.</p>
					<span>$15.990</span>
					<button class="boton-producto">Agregar al carrito</button>
				</article>

				<article class="producto">
					<img src="/img/cortina_gris.jpg" alt="Producto 2">
					<h3>Cortina</h3>
					<p>Cortina aislante.</p>
					<span>$12.990</span>
					<button class="boton-producto">Agregar al carrito</button>
				</article>

				<article class="producto">
					<img src="/img/cortina_col.jpg" alt="Producto 2">
					<h3>Cortina</h3>
					<p>Cortina aislante.</p>
					<span>$8.990</span>
					<button class="boton-producto">Agregar al carrito</button>
				</article>

			</section>


			<div class="box2">
				<div class="icon2">
					<h3>Mantas</h3>
					<p>Hechas con material 100% reciclado</p>
				</div>
				<a href="/mantas" class="btn3">Ver mantas</a>
			</div>

			<div class="box2">
				<div class="icon2">
					<h3>Alfombras</h3>
					<p>Hechas con material 100% reciclado</p>
				</div>
				<a href="/alfombras" class="btn3">Ver alfombras</a>
			</div>

		</main>
		<footer>
			<div class="divcontact">
				<div class="logoimagen">
					<img src="/img/ecobite-logo.png" alt="" width="40px" height="40px"><span>Ecobite</span>
				</div>
				<p>
					<span class="material-symbols-outlined">mail</span>
					ecobite.contacto@gmail.com
				</p>
				<p>
					<span class="material-symbols-outlined">call</span> 800 775 222
				</p>
			</div>

		</footer>
		<div class="llama">
			<p>@ EcoBite - Todos los derechos reservados</p>
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