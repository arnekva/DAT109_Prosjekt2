<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



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
        <li class="active"><a href="jury" >For Juryen</a></li>
        <li ><a href="stands">Stands</a></li>
        <li ><a href="logginn">Logg inn</a></li>
        <li ><a href="hjem.html">Hjem</a></li>
      </ul>
    </div>
    </div>
<div class="container">
<div class="backbutton"><img class="backimg" src="images/backbutton.png"/><a href="jury.html">Ta meg tilbake til juryfunksjonene</a></div>
  <h1 class="header_name">Legg til en ny stand</h1>

  <div class="container1">
    <form id="leggtil" action="" method="post" accept-charset="UTF-8">

      <fieldset>
        <input placeholder="Tittel på stand" type="text" name="tittel" tabindex="1" required autofocus>


        <input placeholder="Gruppemedlemmer" type="text" name="gruppenavn" tabindex="2" required>


        <input placeholder="Lokasjon" type="text" name="lokasjon" tabindex="3" required>
<p>Vennligst last opp et bilde av prosjektet</p>
          <input type="file" name="pic" accept="image/*" style="margin-bottom:15px;">

        <input placeholder="Last opp bilde" hidden="hidden"type="url" name="bildeurl" value="http://placehold.it/150x150" tabindex="4" required>


        <textarea placeholder="Beskrivelse av stand" type="text" name="beskrivelse" tabindex="5" required></textarea>


        <button name="submit" type="submit" id="leggtil-submit" data-submit="...Sending">Submit</button>
      </fieldset>
        </form>
  </div>


  </div>
  <div class="footer">© HvL Expo 2019</div>
</body>
</html>
