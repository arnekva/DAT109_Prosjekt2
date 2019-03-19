<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>Expo 2019</title>

<link rel="icon" href="images/favicon.png">
 <meta charset="UTF-8">
<meta name=ârobotsâ content=âindexâ>
<style>

</style>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/form.css">
</head>
<body>

  <div class="main">
    <div id="cssmenu">
      <ul>
        <a href="hjem.html"><img class="logo"src="images/expo_logo.png"/></a>
          <li ><a href="annet.html">Annet</a></li>
        <li ><a href="kontakt.html">Kontakt</a></li>
        <li class="active"><a href="jury.html" >For Juryen</a></li>
        <li ><a href="stands">Stands</a></li>
        <li ><a href="hjem.html">Hjem</a></li>
  </ul>
    </div>
<div class="container">
  <h1 class="header_name">Registrer deg!</h1>

  <div class="container1">
    <form id="leggtil" action="" method="post">

      <fieldset>
        <input placeholder="Telefonnummer" type="tel" name="tlf" tabindex="1" required autofocus>
        <p class="feilerror">${Registrering.tlffeil}</p>


        <input placeholder="Passord" type="password" name="passord" tabindex="2" required>
<p class="feilerror">${Registrering.passordfeil}</p>

        <input placeholder="Passord repetert" type="password" name="repeterPassord" tabindex="3" required>
        <p class="feilerror">${Registrering.repeterfeil}</p>
        <button class="centerme" name="submit" type="submit" id="leggtil-submit" data-submit="...Sending">Submit</button>

      </fieldset>
        </form>
        <div class="backbutton" ><img class="backimg" src="images/backbutton.png"/><a href="logginn">Har du allerede bruker? Klikk her for Ã¥ logge inn!</a></div>

  </div>


  </div>
  <div class="footer">Â© HvL Expo 2019</div>
</body>
</html>
