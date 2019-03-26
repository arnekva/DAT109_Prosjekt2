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
        <li class="active"><a href="jury" >For Juryen</a></li>
        <li ><a href="stands">Stands</a></li>
         <li ><a href="logginn">Logg inn</a></li>
        <li ><a href="hjem.html">Hjem</a></li>

  </ul>
  </div>
    </div>
<div class="container">
<div class="backbutton"><img class="backimg" src="images/backbutton.png"/><a href="jury">Ta meg tilbake til juryfunksjonene</a></div>
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
  </div>
  <div class="footer"><div class="footer-left-col"><h4>EXPO 2019</h4><p>Avgangsstudentene ved Avdeling for ingeniør- og økonomifag stiller ut bachelorprosjektene sine på Campus Kronstad.</p></div><div class="footer-mid-col"><h4>Besøk utstillingen</h4>Kl 10–15 onsdag 17. juni</div><div class="footer-right-col"><img class="hvl_logo" src="images/hvl1.png"/></div></div>

</body>
</html>
