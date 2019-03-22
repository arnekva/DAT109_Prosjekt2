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
        <li class="active"><a href="jury" >For Juryen</a></li>
        <li ><a href="stands">Stands</a></li>
         <li ><a href="logginn">Logg inn</a></li>
        <li ><a href="hjem.html">Hjem</a></li>

  </ul>
  </div>
    </div>
<div class="container">
<div class="backbutton"><img class="backimg" src="images/backbutton.png"/><a href="jury">Ta meg tilbake til juryfunksjonene</a></div>
  <h1 class="header_name">Endre en stand:</h1>
<h2></h2>
  <div class="container1">
    <div><h3>Hvilken stand vil du endre på? (dropdown meny kommer)</h3></div>
    <select class="stand_dropdown" name="standid" onchange="this.form.submit()">
     <c:forEach var="stand" items="${standliste}" varStatus="loop">
     
     <option value="${stand.standid}">${stand.tittel}</option>
    
     
     </c:forEach>
      </select>
    <form id="leggtil" action="" method="post">

      <fieldset>
        <input placeholder="Tittel på stand" type="text" name="tittel" tabindex="1" value="${stand.tittel}"required autofocus>


        <input placeholder="Gruppemedlemmer" type="text" name="gruppenavn" tabindex="2" value="${stand.gruppenavn}" required>


        <input placeholder="Lokasjon" type="text" name="lokasjon" tabindex="3" value="${stand.lokasjon}"required>
<p>Vennligst last opp et bilde av prosjektet</p>
          <input type="file" name="pic" accept="image/*" style="margin-bottom:15px;">

        <input placeholder="Last opp bilde" hidden="hidden"type="url" name="bildeurl" value="http://placehold.it/150x150" tabindex="4" required>


        <textarea placeholder="Beskrivelse av stand" type="text" name="beskrivelse" tabindex="5" value="${stand.beskrivelse}" required></textarea>

	<input type="hidden" name="standid" value="${stand.standid}">
        <button name="submit" type="submit" id="leggtil-submit" data-submit="...Sending">Submit</button>
      </fieldset>
        </form>
  </div>

</div>
  </div>
  <div class="footer">Â© HvL Expo 2019</div>
</body>
</html>
