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
<link rel="stylesheet"
	href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
</head>
<body>
  <div class="main">
    <div id="cssmenu">
      <ul>
        <a href="hjem.html"><img class="logo"src="images/expo_logo.png"/></a>
        <li ><a href="hjem.html">Hjem</a></li>
        <li class="active" ><a href="stands">Stands</a></li>
        <li ><a href="jury.html" >For Juryen</a></li>
        <li ><a href="kontakt.html">Kontakt</a></li>
        <li ><a href="annet.html">Annet</a></li>
      </ul>
    </div>
    </div>
    <div class="container">
    <div class="backbutton"><img class="backimg" src="images/backbutton.png"/><a href="jury.html">Ta meg tilbake til juryfunksjoner</a></div>
    	<h1 class="header_name">Rangeringstavle</h1>
    	<table class="pure-table" align="center">
		<tr bgcolor="#cccccc">
			<th>Tittel</th>
			<th align="left">Score</th>
		</tr>
		<c:forEach var="stands" items="${stands}" varStatus="loop">
		
		<tr bgcolor="#ffffff"}>
			<td align="center">${stands.tittel}</td>
			<td>${stands.kalkulertscore}</td>
		</tr>
		</c:forEach>
	</table>
	</div>
	<div class="footer">© HvL Expo 2019</div>
 </body>
 </html>