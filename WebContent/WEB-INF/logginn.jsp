<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Fra https://purecss.io/ -->
<style>
form {
	margin: 0 auto;
	width: 250px;
}
</style>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
<title>Logg inn</title>
</head>
<body>
	<div class="main">
		<div id="cssmenu">
			<ul>
				<a href="hjem.html"><img class="logo" src="images/expo_logo.png" /></a>
				<li><a href="hjem.html">Hjem</a></li>
				<li class="active"><a href="logginn">Logg inn</a></li>
			</ul>
		</div>

		<div class="container">

			<h1 class="header_name">Logg inn</h1>
			<div align="center">
				<p>
					<font color="red">${logginn.feilmelding}</font>
				</p>
			</div>
			<form method="post" class="pure-form pure-form-aligned">
				<fieldset>
					<div class="pure-control-group" align="center">
						<input type="text" name="mobil" placeholder="Mobilnummer" />
					</div>
					<div class="pure-control-group" align="center">
						<input type="password" name="passord" placeholder="Passord" />
					</div>
					<div align="center">
						<button type="submit" class="pure-button pure-button-primary">Logg
							inn</button>
					</div>
				</fieldset>
			</form>
			<div align="center">
				<p>Har du ikke bruker?</p>
				<p>
					<a href="registrering">Registrer deg her</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>