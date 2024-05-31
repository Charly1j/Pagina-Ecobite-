<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	href="https://fonts.googleapis.com/css2?family=Lobster&family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet" href="css/Login.css">
<link rel="stylesheet" href="css/slider.css">
<link rel="stylesheet" href="css/Index.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/donacion.css">
<link rel="shortcut icon" href="/img/ecobite-logo.png">

<title>EcoBite</title>
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
			<a href="/logout" class="btn">Cerrar Sesión</a> <a
				onclick="openNav()" class="menu" href="#">Menú</a>
			<div class="overlay" id="mobile-menu">
				<a href="" onclick="closeNav()" class="close">&times;</a>
				<div class="overlay-content">

					<a href="/">Home</a> <a href="/dashboard">Donde donar tu ropa</a> <a
						href="/informacion">Nosotros</a> <a href="/logout" class="btn">Cerrar
						Sesión</a>

				</div>
			</div>
		</header>

		<main>
			<div class="contenido-central">
				<div class="slideshowContainer">

					<img class="imageSlides" src="img/niña-desierto-mate.jpeg">
					<img class="imageSlides" src="img/desierto.jpeg"> <img
						class="imageSlides" src="img/desierto-lindolimpio.jpg"> <span
						id="leftArrow" class="slideshowArrow"></span> <span
						id="rightArrow" class="slideshowArrow"></span>

					<div class="slideshowCircles">
						<span class="circle dot"></span> <span class="circle"></span> <span
							class="circle"></span>
					</div>
				</div>
				<script src="js/index.js"></script>
				<div></div>
			</div>
		</main>
		<section class="botones">
			<button class="boton-buscar">
				<a href="/mapa"><h3>Buscar</h3></a>
			</button>
			<button class="boton-servicio">
				<a href="/atencioncliente"><h3>Productos</h3></a>
			</button>
			<button class="boton-donaciones">
				<a href="/aranceles"><h3>Dona a EcoBite</h3></a>
			</button>
		</section>

		<div class="dos-imagenes">
			<img class="img1" src="/img/descto.jpeg" alt="descuento 20%"> <img
				class="img1" src="/img/publicidad1.jpeg" alt="publicidad">

		</div>


		<footer>
			<div class="divcontact">
				<div class="logoimagen">
					<img src="/img/ecobite-logo.png" alt="" width="40px" height="40px"><span>EcoBite</span>
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