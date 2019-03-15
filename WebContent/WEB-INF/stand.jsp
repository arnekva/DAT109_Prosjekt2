


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
<div class="backbutton"><img class="backimg" src="images/backbutton.png"/><a href="stands">Ta meg tilbake til listen</a></div>
  <h1 class="header_name">${stand.tittel}</h1>
  <h3 class="header_desc">${stand.lokasjon}</h3>
  <div class="info">
    <div class="section_info" style="float:right;"><img class="standListImage" src="${stand.bildeurl}" alt="bilde for stand"/></div>

    <div class="section_info"><h3 class="header_header">Beskrivelse: </h3>${stand.beskrivelse}</div>
    <div class="section_info"><h3 class="header_header">Gruppenavn: </h3>${stand.gruppenavn}</div>
    </div>

  </div>
  <div class="footer">� HvL Expo 2019</div>
</body>
</html>
