<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Fra https://purecss.io/ -->
<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
<title>Registrering</title>
</head>
<body>
    <h2>Registrering</h2>
    <form method="post" class="pure-form pure-form-aligned">
        <fieldset>
            <div class="pure-control-group">
                <label for="tlf">Tlf (8 siffer):</label> <input type="text"
                    name="tlf" value="${Registrering.tlf}" /> 
                    <font color="red">${Registrering.tlfFeil}</font>
            </div>
            <div class="pure-control-group">
                <label for="password">Passord:</label> <input type="password"
                    name="passord" value="" /> 
                    <font color="red">${Registrering.passordFeil}</font>
            </div>
            <div class="pure-control-group">
                <label for="repeterPassord">Passord repetert:</label> <input
                    type="password" name="repeterPassord"
                    value="" /> 
                    <font color="red">${Registrering.repeterFeil}</font>
            </div>
            <div class="pure-controls">
                <button type="submit" class="pure-button pure-button-primary">Registrer</button>
            </div>
        </fieldset>
    </form>
</body>
</html>