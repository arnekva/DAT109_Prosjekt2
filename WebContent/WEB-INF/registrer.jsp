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
<title>EXPO 2019</title>
</head>
<body>
	<div class="main">
		<div id="cssmenu">
			<ul>
				<a href="hjem.html"><img class="logo" src="images/expo_logo.png" /></a>
				<li><a href="hjem.html">Hjem</a></li>
				<li><a href="logginn">Logg inn</a></li>
				<li class="active"><a href="registrering">Registrering</a></li>
			</ul>
		</div>
	<div class="container">
    
	<h1 class="header_name">Registrering</h1>
    <form method="post" class="pure-form pure-form-aligned">
        <fieldset>
            <div align="center" class="pure-control-group">
                <input type="text"
                    name="tlf" value="${Registrering.tlf}" placeholder="Tlf (8 siffer)"/> 
                    <font color="red">${Registrering.tlfFeil}</font>
            </div>
            <div align="center" class="pure-control-group">
                <input type="password"
                    name="passord" value="" placeholder="Passord" /> 
                    <font color="red">${Registrering.passordFeil}</font>
            </div>
            <div align="center" class="pure-control-group">
                <input
                    type="password" name="repeterPassord"
                    value="" placeholder="Repeter passordet"/> 
                    <font color="red">${Registrering.repeterFeil}</font>
            </div>
            <div align="center">
                <button type="submit" class="pure-button pure-button-primary">Registrer</button>
            </div>
        </fieldset>
    </form>
	</div>
	</div>
</body>
</html>