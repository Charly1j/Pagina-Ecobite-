<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
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
<link rel="stylesheet" href="/css/index.css">
<link rel="stylesheet" href="/css/footer.css">
<link rel="shortcut icon" href="/img/ecobite-logo.png">
<link rel="stylesheet" href="/css/Arancel.css">

<title>EcoByte</title>
<style>
.header {
	background-color: rgb(27, 44, 51);
}
</style>
</head>
<body>
	<header class="header">
		<div class="logo">
			<a href="/"><img src="/img/ecobite-logo.png" alt="">
			<h3>EcoBite</h3></a>
		</div>

		<nav class="nav-links">
			<a href="/">Home</a><a href="/atencioncliente">Productos</a> 
			<a href="/dashboard">Donde donar tu ropa</a> <a href="/aranceles">Publicidad</a>
			<a href="/informacion">Nosotros</a>
		</nav>
		<a href="/logout" class="btn">Cerrar Sesion</a> <a onclick="openNav()"
			class="menu" href="#">Menu</a>

		<div class="overlay" id="mobile-menu">
			<a href="" onclick="closeNav()" class="close">&times;</a>
			<div class="overlay-content">
				<a href="/">Home</a> <a href="/dashboard">Agenda tu cita</a> <a
					href="/informacion">Informacion</a> <a href="/logout" class="btn">Cerrar
					Sesion</a>

			</div>
		</div>
	</header>
	<div class="con-items ">
		<div class="item item1">
			<div class="con-img">
				<img src="1-3.png" alt="">
			</div>
			<header>
				<h3>Mensual</h3>
				<p>
					<b>$3.990 CLP</b>
				</p>
			</header>
			<ul>
				<li><i class='bx bx-check'></i> Comienza a ofrecer tus <b>Servicios</b>
				</li>
				<li><i class='bx bx-check'></i> Tu primer mes gratis</li>
				<li><i class='bx bx-check'></i> <b> Únete </b> a esta red
					eco-amigable</li>
				<li><i class='bx bx-check'></i> Comienza a anunciarte</li>
			</ul>
			<button>Seleccionar Plan</button>
		</div>
		<div class="item color item2">
			<div class="con-img">
				<img src="2-1.png" alt="">
			</div>
			<span class="badge"> Conveniente </span>
			<header>
				<h3>Anual</h3>
				<p>
					<b> $24.990 CLP </b>
				</p>
			</header>
			<ul>
				<li><i class='bx bx-check'></i> Sé una pyme <b>Destacada</b></li>
				<li><i class='bx bx-check'></i> Aparece <b>Primero</b>En La
					Lista</li>
				<li><i class='bx bx-check'></i> Cupones de descuento para ti y
					tus referidos</li>
				<li><i class='bx bx-check'></i> Ahorra 48% En comparacón al
					plan mensual</li>
			</ul>
			<button class="border">Seleccionar plan</button>
		</div>
		<div class="item item3">
			<div class="con-img">
				<img src="3-1.png" alt="">
			</div>
			<header>
				<h3>Semestral</h3>
				<p>
					<b> $16.990 CLP </b>
				</p>
			</header>
			<ul>
				<li><i class='bx bx-check'></i><b>Anunciate</b> Con nosotros!</li>
				<li><i class='bx bx-check'></i> Orientado al <b>Crecimiento</b>
				</li>
				<li><i class='bx bx-check'></i> <b>Obten</b> cupones de
					descuentos</li>
				<li><i class='bx bx-check'></i> Ahorra 30% En Selecciona Plan</li>
			</ul>
			<button>Unirme a EcoBite</button>
		</div>
	</div>
	<footer>
		<div class="divcontact">
			<div class="logoimagen">
				<img src="/img/ecobite-logo.png" alt="" width="46px" height="46px"><span>EcoBite</span>
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