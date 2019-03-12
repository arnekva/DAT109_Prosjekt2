<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Fra https://purecss.io/ -->
<link rel="stylesheet"
	href="https://unpkg.com/purecss@1.0.0/build/pure-min.css">
<title>Scores</title>
</head>
<body>
	<h2>Scores</h2>
	<table class="pure-table">
		<tr bgcolor="#cccccc">
			<th align="left">Stand</th>
			<th align="left">Score</th>
		</tr>
		<c:forEach var="stands" items="${stands}" varStatus="loop">

		<tr bgcolor= "#ffffff">
			<td align="center">${stands.tittel}</td>
			<td>${stands.kalkulertscore}</td>
		</tr>
		</c:forEach>
	</table>
	<p>
		<a href="loggut">Ferdig</a>
	</p>
</body>