<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Fra https://purecss.io/ -->
<link rel="stylesheet"
	href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
<title>Legg til stand</title>
<style>
body {
	max-width: 1300px;
	min-width: 1300px;
}
</style>
</head>
<body>
	<h2>Legg til stand</h2>
	<form method="post" class="pure-form pure-form-aligned">
		<fieldset>
			<div class="pure-control-group">
				<label for="tittel">Tittel:</label> <input id="tittel"
					type="text" name="tittel">
			</div>

			<div class="pure-control-group">
				<label for="beskrivelse">Beskrivelse:</label> <input id="beskrivelse"
				 type="text" name="beskrivelse"/>
			</div>
			<div class="pure-control-group">
				<label for="gruppenavn">Studenter:</label> <input id="gruppenavn"
					type="text" name="gruppenavn"
					/>
			</div>
			<div class="pure-control-group">
				<label for="lokasjon">Lokasjon:</label> <input id="lokasjon"
					type="text" name="lokasjon"/>
			</div>
			<div class="pure-control-group">
				<label for="bildeurl">Bildeurl:</label> <input id="bildeurl" type="text" name="bildeurl"/>
			</div>
			<div class="pure-controls">
				<button type="submit" class="pure-button pure-button-primary">Legg til stand</button>
			</div>
		</fieldset>
	</form>
</body>
</html>
