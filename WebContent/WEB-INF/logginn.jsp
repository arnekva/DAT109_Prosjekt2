<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>Expo 2019</title>

<link rel="icon" href="images/favicon.png">
 <meta charset="UTF-8">

<style>

</style>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/form.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

  <div class="main">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script defer type="text/javascript" src="js/mobilemenu.js"></script>
    <i id="burger" class="material-icons" onclick="burger()">menu</i>
    <i id="quit" class="material-icons" onclick="quit()">clear</i>
    <div id="links">
    <div id="cssmenu">

      <ul>

        <a href="hjem.html"><img class="logo"src="images/expo_logo.png"/></a>
          <li ><a href="annet.html">Annet</a></li>
        <li ><a href="kontakt.html">Kontakt</a></li>
        <li ><a href="jury" >For Juryen</a></li>
        <li ><a href="stands">Stands</a></li>
         <li class="active"><a href="logginn">Logg inn</a></li>
        <li ><a href="hjem.html">Hjem</a></li>

  </ul>
  </div>
    </div>
<div class="container">
  <h1 class="header_name">Logg inn</h1>

  <div class="container1">
    <form id="leggtil" action="" method="post">

      <fieldset>

        <input placeholder="Telefonnummer" type="tel" name="mobil" tabindex="1" required autofocus>


        <input placeholder="Passord" type="password" name="passord" tabindex="2" required>


        <button name="submit" type="submit" id="leggtil-submit" data-submit="...Sending">Logg inn</button>

      </fieldset>
        </form>
        <div class="backbutton" ><img class="backimg" src="images/backbutton.png"/><a href="registrering">Har du ikke bruker? Klikk her for å registrere deg!</a></div>

  </div>


  </div>
  </div>
  <div class="footer">Â© HvL Expo 2019</div>
</body>
</html>
