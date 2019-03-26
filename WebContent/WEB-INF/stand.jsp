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
<link rel="stylesheet" type="text/css" href="css/rating.css">
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
        <li class="active"><a href="stands">Stands</a></li>
         <li ><a href="logginn">Logg inn</a></li>
        <li ><a href="hjem.html">Hjem</a></li>

  </ul>
  </div>
    </div>
<div class="container">
<div class="backbutton"><img class="backimg" src="images/backbutton.png"/><a href="stands">Ta meg tilbake til listen</a></div>
  <h1 class="header_name">${stand.tittel}</h1>
  <h3 class="header_desc">${stand.lokasjon}</h3>
  <div class="info">
    <div class="section_info" style="float:right;"><img class="standListImage" src="${stand.bildeurl}" alt="bilde for stand"/></div>

    <div class="section_info"><h3 class="header_header">Beskrivelse: </h3>${stand.beskrivelse}</div>
    <div class="section_info"><h3 class="header_header">Gruppenavn: </h3>${stand.gruppenavn}</div>
    <div class="section_info"><h3 class="header_header">Gi en rating</h3></div>
    <form id="myForm" class="rating" method="post">
        <input type="hidden" value="${stand.standid}"/>
    <label>
      <input type="radio" name="stars" value="1" onclick="document.getElementById('myForm').submit();"/>
      <span class="icon">★</span>
    </label>
    <label>
      <input type="radio" name="stars" value="2" onclick="document.getElementById('myForm').submit();"/>
      <span class="icon">★</span>
      <span class="icon">★</span>
    </label>
    <label>
      <input type="radio" name="stars" value="3" onclick="document.getElementById('myForm').submit();"/>
      <span class="icon">★</span>
      <span class="icon">★</span>
      <span class="icon">★</span>
    </label>
    <label>
      <input type="radio" name="stars" value="4" onclick="document.getElementById('myForm').submit();" />
      <span class="icon">★</span>
      <span class="icon">★</span>
      <span class="icon">★</span>
      <span class="icon">★</span>
    </label>
    <label>
      <input type="radio" name="stars" value="5" onclick="document.getElementById('myForm').submit();"/>
      <span class="icon">★</span>
      <span class="icon">★</span>
      <span class="icon">★</span>
      <span class="icon">★</span>
      <span class="icon">★</span>
    </label>

  </form>
    </div>

  </div>
  <div class="footer"><div class="footer-left-col"><h4>EXPO 2019</h4><p>Avgangsstudentene ved Avdeling for ingeniør- og økonomifag stiller ut bachelorprosjektene sine på Campus Kronstad.</p></div><div class="footer-mid-col"><h4>Besøk utstillingen</h4>Kl 10–15 onsdag 17. juni</div><div class="footer-right-col"><img class="hvl_logo" src="images/hvl1.png"/></div></div>

</body>
</html>
