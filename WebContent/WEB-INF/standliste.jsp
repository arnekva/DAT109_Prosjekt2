<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Fra https://purecss.io/ -->
<link rel="stylesheet"
	href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
<title>Standliste</title>
</head>
<body>
	<h2>Standliste</h2>
	<!-- &#9792; = KVINNE, &#9794; = MANN -->
	<table class="pure-table">
		<tr bgcolor="#cccccc">
			<th>Kjønn</th>
			<th align="left">Navn</th>
			<th align="left">Mobil</th>
		</tr>
		
		<c:forEach var="stand" items="${standliste}" varStatus="loop">
		
		<tr >
			<td align="center">${stand.tittel}</td>
			<td>${stand.beskrivelse}</td>
			<td>${stand.lokasjon}</td>
			
		</tr>
		</c:forEach>
		
	</table>
	<p>
		<a href="loggut" style="margin-left:25px;">Logg ut</a>
	</p>
</body>
</html>
