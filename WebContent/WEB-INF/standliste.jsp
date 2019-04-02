<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=UTF-8" %>






<!DOCTYPE html>
<html>
<head>
<title>Expo 2019</title>

<link rel="icon" href="images/favicon.png">
 <meta charset="UTF-8">
<meta name=”robots” content=”index”>
<style>

</style>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/standliste.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<!--
Body med bakgrunnsbilde
<body style="background: url('images/expo_bg3.jpg') no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;"> -->
<body>

  <div class="main">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script defer type="text/javascript" src="js/mobilemenu.js"></script>
    <script defer type="text/javascript" src="js/gridlist.js"></script>
    <i id="burger" class="material-icons" onclick="burger()">menu</i>
    <i id="quit" class="material-icons" onclick="quit()">clear</i>
    <div id="links">
    <div id="cssmenu">

      <ul>

        <a href="hjem.html"><img class="logo"src="images/expo_logo.png"/></a>
         <li ><a href="minside">Min Side</a></li>
        <li ><a href="kontakt.html">Kontakt</a></li>
        <li ><a href="jury" >For Juryen</a></li>
        <li class="active"><a href="stands">Stands</a></li>
         <li ><a href="logginn">Logg inn</a></li>
        <li ><a href="hjem.html">Hjem</a></li>

  </ul>
  </div>
    </div>

<div class="container">
  <div class="cat-bar">
    <div class="cat-bar-cont">

      <form method="get" id="filterForm" class="searchForm-cl" action"">
        <select name="fagomraade" class="filter-selection">
          <option value="" selected="">Velg fagområde</option>
                <option value="Allmenn maskinteknikk">Allmenn maskinteknikk</option>
                <option value="Automatisering">Automatisering</option>
                <option value="Bioingeniør">Bioingeniør</option>
                <option value="Byggingeniør">Byggingeniør</option>
                <option value="Dataingeniør og informasjonsteknologi">Dataingeniør og Informasjonsteknologi</option>
                <option value="Elektronikk">Elektronikk</option>
                <option value="Elkraft">Elkraft</option>
                <option value="Energiteknologi">Energiteknologi</option>
                <option value="Innovation and entrepreneurship">Innovation and Entrepreneurship</option>
                <option value="Kjemiingeniør">Kjemiingeniør</option>
                <option value="Kommunikasjonssystemer">Kommunikasjonssystemer</option>
                <option value="Landmåling og eiendomsdesign">Landmåling og eiendomsdesign</option>
                <option value="Marinteknikk">Marinteknikk</option>
                <option value="Produksjonsteknikk">Produksjonsteknikk</option>
                <option value="Undervannsteknologi">Undervannsteknologi</option>
                <option value="Økonomisk-administrative fag">Økonomisk-administrative fag</option>
        </select>


<input type="submit" class="filt-ser-btn" value="Filtrer">
      </form>

    </div>
  <form method="get" id="searchForm" class="searchForm-cl" action"">
    <input type="submit" class="filt-ser-btn" value="Søk">
  <input type="text" id="searchField"placeholder="Søk i fritekst"name="sok">

  </form>

    </div>
    <div class="viewtype-controller">
    <input class="viewtype"type="image" src="images/grid.png" onclick="gridview()"/>
    <input class="viewtype"type="image" src="images/list.png" onclick="listview()"/>
  </div>
  <h1 class="header_name">Stands på Expo 2019</h1>
  <h3 class="header_name" style="color:red;font-size:1.5rem;">${noadmin}</h3>
  <!--  <div class="grid-list-view"><img class="backimg" src="images/backbutton.png"/><a href="standliste2.html">Listevisning</a></div>
--><div id="grid-view"class="stand_list">

    <ul>
      <li id="list-view-header">
          <p class="exponr-title">ExpoNr</p><p class="infoText-title">Tittel</p><p class="exponr-forfattere">Forfattere</p></a>
      </li>
<li>
        <a class="standlist-title-link" href="presentasjon.html"><img class="standListImage" src="images/standImages/E00.jpg"/>
          <p class="exponr">E00</p><p class="infoText">Presentasjon av prosjektoppgave 1</p><p class="exponr">Gruppe 7</p></a>
      </li>
<c:forEach var="stand" items="${standliste}" varStatus="loop">


<li>
        <a class="standlist-title-link" href="stand?standid=${stand.standid}"><img class="standListImage" src="images/standImages/E70.jpg"/>
          <p class="exponr">${stand.lokasjon}</p><p class="infoText">${stand.tittel}</p><p class="exponr">${stand.gruppenavn}</p></a>
      </li>
		</c:forEach>

    </ul>
  </div>
  </div>
  </div>
  <div class="footer"><div class="footer-left-col"><h4>EXPO 2019</h4><p>Avgangsstudentene ved Avdeling for ingeniør- og økonomifag stiller ut bachelorprosjektene sine på Campus Kronstad.</p></div><div class="footer-mid-col"><h4>Besøk utstillingen</h4>Kl 10–15 onsdag 17. juni</div><div class="footer-right-col"><a href="https://hvl.no" ><img class="hvl_logo" style="margin-top:-15px;"src="images/hvl1.png"/></a></div></div>
  <script>

  </script>
</body>

</html>
