<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Fra https://purecss.io/ -->
<link rel="stylesheet"
    href="https://unpkg.com/purecss@1.0.0/build/pure-min.css%22%3E">
<title>Registrering</title>
</head>
<body>
    <h2>Registrering</h2>
    <form method="post" class="pure-form pure-form-aligned">
        <fieldset>
            <div class="pure-control-group">
                <label for="mobil">Mobil (8 siffer):</label> <input type="text"
                    name="mobil" value="${Registrering.tlf}" /> 
                    <font color="red">"${Registrering.tlfFeil}"</font>
            </div>
            <div class="pure-control-group">
                <label for="password">Passord:</label> <input type="password"
                    name="passord" value="${Registrering.passord}" /> 
                    <font color="red">"${Registrering.passordFeil}"</font>
            </div>
            <div class="pure-control-group">
                <label for="passordRepetert">Passord repetert:</label> <input
                    type="password" name="passordRepetert"
                    value="${Registrering.passordRepeter}" /> 
                    <font color="red">"${Registrering.repeterFeil}"</font>
            </div>
            <div class="pure-controls">
                <button type="submit" class="pure-button pure-button-primary">Registrer</button>
            </div>
        </fieldset>
    </form>
</body>
</html>