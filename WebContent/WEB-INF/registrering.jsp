<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrering</title>
</head>
<body>
    <h2>Registrering</h2>
    <form method="post" class="pure-form pure-form-aligned">
        <fieldset>
            <div class="pure-control-group">
                <label for="mobil">Mobil (8 siffer):</label> <input type="text"
                    name="mobil" value="${Skjema.mobil}" /> 
                    <font color="red">"${Skjema.mobilfeilmelding}"</font>
            </div>
            <div class="pure-control-group">
                <label for="password">Passord:</label> <input type="password"
                    name="passord" value="${Skjema.passord}" /> 
                    <font color="red">"${Skjema.passordfeilmelding}"</font>
            </div>
            <div class="pure-control-group">
                <label for="passordRepetert">Passord repetert:</label> <input
                    type="password" name="passordRepetert"
                    value="${Skjema.repeterpassord}" /> 
                    <font color="red">"${Skjema.repeterpassordfeilmelding}"</font>
            </div>
            <div class="pure-controls">
                <button type="submit" class="pure-button pure-button-primary">Registrer</button>
            </div>
        </fieldset>
    </form>
</body>
</html>