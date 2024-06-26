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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link
	href="https://fonts.googleapis.com/css2?family=Lobster&family=Shadows+Into+Light&display=swap"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRzNQjC4OdkXBEZaiAOHg_0rfDcSOXzF4&libraries=places"></script>
<link rel="stylesheet" href="css/Login.css">
<link rel="stylesheet" href="css/Mapa.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="shortcut icon" href="/img/ecobite-logo.png">

<title>Mapa</title>
<style>
.header {
	background-color: rgb(27, 44, 51);
}
</style>
</head>

<body>
	<div class="container">
		<header class="header">
			<div class="logo">
				<a href="/"><img src="/img/ecobite-logo.png" alt="">
					<h3>EcoBite</h3></a>
			</div>

			<nav class="nav-links">
				<a href="/">Home</a> <a href="/atencioncliente">Productos</a> <a
					href="/dashboard">Donde donar tu ropa</a> <a href="/aranceles">Publicidad</a>
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
	</div>
	<div class="contenido-central"></div>
	<div id="map"></div>
	
	<button id="search-btn">Tiendas Ecobite</button>
	
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
	<script>
		function initMap() {
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 14
			});

			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
					var pos = {
						lat : position.coords.latitude,
						lng : position.coords.longitude,

					};

					map.setCenter(pos);
					var service = new google.maps.places.PlacesService(map);
					document.getElementById("search-btn").addEventListener(
							"click", function() {
								var request = {
									location : pos,
									radius : '500',
									query : 'clinica veterinaria'
								};
								service.textSearch(request, callback);
							});

				}, function() {
					handleLocationError(true, map.getCenter());
				});
			} else {
				handleLocationError(false, map.getCenter());
			}

			function callback(results, status) {
				if (status === google.maps.places.PlacesServiceStatus.OK) {
					for (var i = 0; i < results.length; i++) {
						createMarker(results[i]);
					}
				}
			}

			function createMarker(place) {
				var marker = new google.maps.Marker({
					map : map,
					position : place.geometry.location,
					icon : '/img/iconomap.png'
				});

				google.maps.event.addListener(marker, 'click', function() {
					var infowindow = new google.maps.InfoWindow();
					infowindow.setContent(place.name);
					infowindow.open(map, this);
				});
			}
			function handleLocationError(browserHasGeolocation, pos) {
				console
						.log(browserHasGeolocation ? 'Error: The Geolocation service failed.'
								: 'Error: Your browser doesn\'t support geolocation.');
			}
		}
	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRzNQjC4OdkXBEZaiAOHg_0rfDcSOXzF4&libraries=places&callback=initMap"></script>


</body>

</html>