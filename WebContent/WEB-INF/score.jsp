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
<link rel="stylesheet" type="text/css" href="css/scoretable.css">

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
  <h1 class="header_name">Rangert poengtavle for stands</h1>
  <div class="table-title">
<h3></h3>
</div>
<table class="table-fill">
<thead>
<tr>
<th class="text-left">Navn</th>
<th class="text-left">Score</th>
</tr>
</thead>
<tbody class="table-hover">
<c:forEach var="stands" items="${stands}" varStatus="loop">
<tr>
<td class="text-left">${stands.tittel}</td>
<td class="text-left">${stands.kalkulertscore}</td>
</tr>
</c:forEach>

</tbody>
</table>
  </div>
  </div>
  <div class="footer">© HvL Expo 2019</div>
</body>

</html>
