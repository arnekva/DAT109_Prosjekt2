<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=UTF-8" %>




<!DOCTYPE html>
<html>
<head>
<title>Expo 2019</title>

<link rel="icon" href="images/favicon.png">
 <meta charset="UTF-8">
<meta name="robots" content="index">
<style>

</style>
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body style="background: url('images/expo_bg3.jpg') no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">

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

  <h1 class="header_name">Stands på Expo 2019</h1>
  <div class="stand_list">
    <ul>
      <c:forEach var="stand" items="${standliste}" varStatus="loop">
      <li><span><a href="stand?standid=${stand.standid}"><img class="standListImage" src="${stand.bildeurl}"/></a></span>
          <span class="infoText">${stand.tittel}</span>
          <a href="stand?standid=${stand.standid}">Se mer...</a>
      </li>

		</c:forEach>
      
    </ul>
  </div>
  </div>
  </div>
  <div class="footer">© HvL Expo 2019</div>
</body>
</html>
