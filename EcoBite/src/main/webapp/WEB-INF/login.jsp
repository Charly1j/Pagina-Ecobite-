<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
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
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/Login.css">
<link rel="shortcut icon" href="/img/ecobite-logo.png">

<title>EcoBite Login-Registerr</title>
<style>
footer {
	margin: 0;
}
.header{
	background-color: rgb(27, 44, 51);
}
</style>
</head>
<body>
	<div class="full-page">
		<header class="header">
			<div class="logo">
				<a href="/"><img src="/img/ecobite-logo.png" alt="">
				<h3>EcoBite</h3></a>
			</div>

			<nav class="nav-links">
				<a href="/">Home</a><a href="/atencioncliente">Productos</a> <a href="/dashboard">Donde donar tu ropa</a> 
				<a href="/aranceles">Publicidad</a> <a href="/informacion">Nosotros</a> 
			</nav>
			<a href="/joinus" class="btn">Registrate</a> <a onclick="openNav()"
				class="menu" href="#">Menu</a>

			<div class="overlay" id="mobile-menu">
				<a href="" onclick="closeNav()" class="close">&times;</a>
				<div class="overlay-content">
					<a href="/">Home</a> <a href="/dashboard">Agenda tu cita</a> <a
						href="/informacion">Informacion</a> <a href="/joinus" class="btn">Registrate</a>
				</div>
			</div>
		</header>

		<div class="body">


			<!--FORM LOGIN Y REGISTRO-->
			<div id='login-form' class='login-page'>

				<div class="form-box">
					<div class='button-box'>
						<div id='btn'></div>
						<button type='button' onclick='login()' class='toggle-btn'>Log
							In</button>
						<button type='button' onclick='register()' class='toggle-btn'>Register</button>
					</div>
					<p class="text-danger">${error_login}</p>
					<form action="/login" method="post" id="login"
						class='input-group-login'>
						<h1>Iniciar Sesion</h1>
						<div class='input-field-login'>
							<input type="email" class='input-field' name="email"
								placeholder='Enter Email' required>
						</div>
						<div class='input-field-login'>
							<input type="password" class='input-field' name="password"
								placeholder='Enter Password' required>
						</div>
						<button type="submit" value="Registrarme" class='submit-btn'>Acceder</button>

					</form>
					<form:form action="/register" method="post"
						modelAttribute="nuevoUsuario" id="register"
						class='input-group-register'>
						<h1>Registro</h1>
						<div class='input-field'>
							<form:label path="name"></form:label>
							<form:input path="name" class='input-field' placeholder='Nombre'></form:input>
							<form:errors path="name" class="text-danger"></form:errors>
						</div>
						<div class='input-field'>
							<form:label path="email"></form:label>
							<form:input path="email" class='input-field' placeholder='E-mail'></form:input>
							<form:errors path="email" class="text-danger"></form:errors>
						</div>
						<div class='input-field'>
							<form:label path="password"></form:label>
							<form:password path="password" class='input-field'
								placeholder='Password'></form:password>
							<form:errors path="password" class="text-danger"></form:errors>
						</div>
						<div class='input-field'>
							<form:label path="confirm"></form:label>
							<form:password path="confirm" class='input-field'
								placeholder='Confirm Password'></form:password>
							<form:errors path="confirm" class="text-danger"></form:errors>
						</div>

						<button type="submit" value="Registrarme" class='submit-btn'>Registrarme</button>
					</form:form>
				</div>

			</div>
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
					<span class="material-symbols-outlined">call</span> 800 300 683
				</p>
			</div>

		</footer>
	</div>
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