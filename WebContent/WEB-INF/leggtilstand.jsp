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
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic);
* {


  -moz-box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
  -moz-font-smoothing: antialiased;
  -o-font-smoothing: antialiased;
  font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
}


#leggtil input[type="text"],
#leggtil input[type="email"],
#leggtil input[type="tel"],
#leggtil input[type="url"],
#leggtil textarea,
#leggtil button[type="submit"] {
  font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
}

#leggtil {

  padding: 25px;
  margin: 0 0;
}

#leggtil h3 {
  display: block;
  font-size: 30px;
  font-weight: 300;
  margin-bottom: 10px;
}

#leggtil h4 {
  margin: 5px 0 15px;
  display: block;
  font-size: 13px;
  font-weight: 400;
}

fieldset {
  border: medium none !important;
  margin: 0 0 10px;
  min-width: 100%;
  padding: 0;
  width: 100%;
}

#leggtil input[type="text"],
#leggtil input[type="email"],
#leggtil input[type="tel"],
#leggtil input[type="url"],
#leggtil textarea {
  width: 100%;
  border: 1px solid #ccc;
  background: #FFF;
  margin: 0 0 5px;
  padding: 10px;
}

#leggtil input[type="text"]:hover,
#leggtil input[type="email"]:hover,
#leggtil input[type="tel"]:hover,
#leggtil input[type="url"]:hover,
#leggtil textarea:hover {
  -webkit-transition: border-color 0.3s ease-in-out;
  -moz-transition: border-color 0.3s ease-in-out;
  transition: border-color 0.3s ease-in-out;
  border: 1px solid #aaa;
}

#leggtil textarea {
  height: 100px;
  max-width: 100%;
  resize: none;
}

#leggtil button[type="submit"] {
  cursor: pointer;
  width: 100%;
  border: none;
  background: #004357;
  color: #FFF;
  margin: 0 0 5px;
  padding: 10px;
  font-size: 15px;
}

#leggtil button[type="submit"]:hover {
  background: #43A047;
  -webkit-transition: background 0.3s ease-in-out;
  -moz-transition: background 0.3s ease-in-out;
  transition: background-color 0.3s ease-in-out;
}

#leggtil button[type="submit"]:active {
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}

.copyright {
  text-align: center;
}

#leggtil input:focus,
#leggtil textarea:focus {
  outline: 0;
  border: 1px solid #aaa;
}

::-webkit-input-placeholder {
  color: #888;
}

:-moz-placeholder {
  color: #888;
}

::-moz-placeholder {
  color: #888;
}

:-ms-input-placeholder {
  color: #888;
}
@import url(http://fonts.googleapis.com/css?family=Raleway);
@media only screen
and (min-device-width: 600px){
#cssmenu,
#cssmenu ul,
#cssmenu ul li,
#cssmenu ul li a {
  margin: 0;

  padding: 0;
  border: 0;
  list-style: none;
  line-height: 1;
  display: block;
  position: relative;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
#cssmenu:after,
#cssmenu > ul:after {
  content: ".";
  display: block;
  clear: both;
  visibility: hidden;
  line-height: 0;
  height: 0;
}
#cssmenu {
  width: 100%;
  border-bottom: 3px solid #64d0df;
  font-family: Raleway, sans-serif;
  line-height: 1;
  margin-bottom:0px;
  position: fixed; /* Set the navbar to fixed position */
top: 0; /* Position the navbar at the top of the page */
overflow:hidden;
z-index: 4000;
}
#cssmenu ul {
  background: #004357;
}
#cssmenu > ul > li {
  float: right;
}
#cssmenu.align-center > ul {
  font-size: 0;
  text-align: center;
}
#cssmenu.align-center > ul > li {
  display: inline-block;
  float: none;
}
#cssmenu.align-right > ul > li {
  float: right;
}
#cssmenu.align-right > ul > li > a {
  margin-right: 0;
  margin-left: -4px;
}
#cssmenu > ul > li > a {
  z-index: 2;
  padding: 60px 25px 12px 25px;
  font-size: 25px;
  font-weight: 400;
  text-decoration: none;
  color: #64d0df;
  font-family:"AkademieStd",sans-serif;letter-spacing:.025rem;margin-left:auto;margin-right:auto;font-size:1.25rem;color:#fff
  -webkit-transition: all .2s ease;
  -moz-transition: all .2s ease;
  -ms-transition: all .2s ease;
  -o-transition: all .2s ease;

  margin-right: -4px;
}
#cssmenu > ul > li.active > a,
#cssmenu > ul > li:hover > a,
#cssmenu > ul > li > a:hover {
  color: #ffffff;
}
#cssmenu > ul > li > a:after {
  position: absolute;
  left: 0;
  bottom: 0;
  right: 0;
  z-index: -1;
  width: 100%;
  height: 120%;
  border-top-left-radius: 8px;
  border-top-right-radius: 8px;
  content: "";
}
#cssmenu > ul > li.active > a:after,
#cssmenu > ul > li:hover > a:after,
#cssmenu > ul > li > a:hover:after {
  background: #64d0df;
}
}
.main{
  height:100%;
  margin-bottom:5px;
}
.content{}
.name{
margin-top:30px;
margin-bottom:10px;
font-size:25px;

}
.tittel{
  margin-top:10px;
  margin-bottom:20px;
  font-size:20px;
  font-style: italic;
}
.forklaring{
  font-size:15px;
  margin-bottom:10px;

}
.listegjenstand{
  font-size:15px;
  margin-bottom:10px;
  font-weight:bold;

}
.addr, .duration{
  font-style: italic;
}
.section__title{
  font-size:17px;
}
.section_info{
      font-family: "LyonText",serif;
font-size: 1.125rem;
    letter-spacing: .0125rem;
}
.backbutton a{

    border-bottom: 1px solid #64d0df;
    color: #008aaf;
    text-decoration: none;

    border-bottom: none;
        display: block;
        font-family: "AkademieStd",sans-serif;
            font-size: 1.125rem;
            float:left;
}
.backbutton a:hover{
color: #00a9d8;
}
.info_jury{
  margin-top:80px;
  margin-left:60px;
}
.listitem a {
  border-bottom: 1px solid #64d0df;
  color: #008aaf;
  text-decoration: none;

  border-bottom: none;
      display: block;
      font-family: "AkademieStd",sans-serif;
          font-size: 1.4rem;
          margin-top:20px;

}
.listitem a:hover{
color: #00a9d8;
}
.backimg{
  height:18px;
  width:10px;
  float:left;
  margin-top:3px;
  margin-right:5px;
}
.menuicn{
  height:15px;

  margin-right:5px;

}
}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  height: 100%;
}
body {
  position: relative;
  margin: 0;
  padding-bottom: 6rem;
  min-height: 100%;
  font-family:"AkademieStd",sans-serif;
  letter-spacing:.025rem;
  margin-left:auto;
  margin-right:auto;
  font-size:1.25rem;
  color:#fff


}
body {
  min-height: 100%;
  background: #eee;
  font-family: 'Lato', sans-serif;
  font-weight: 400;
  color: #222;
  font-size: 14px;
  line-height: 26px;
  padding-bottom: 50px;


}

.container {
  max-width: 1000px;
  min-width:500px;
  background: #fff;
  margin: 0px auto 0px;

  border-radius: 3px;
  padding: 40px;
  margin-top:200px;
  overflow:hidden;

}

.home_photo{
 width:100%;
}
.header {
  margin-bottom: 30px;
}
.header .full-name {
  font-size: 40px;
  text-transform: uppercase;
  margin-bottom: 5px;
}
.header .first-name {
  font-weight: 700;
}
.header .last-name {
  font-weight: 300;
}
.header .contact-info {
  margin-bottom: 20px;
}
.header .email,
.header .phone {
  color: #999;
  font-weight: 300;
}
.header .separator {
  height: 10px;
  display: inline-block;
  border-left: 2px solid #999;
  margin: 0px 10px;
}
.header .position {
  font-weight: bold;
  display: inline-block;
  margin-right: 10px;
  text-decoration: underline;
}

.details {
  line-height: 20px;
}
.details .section {
  margin-bottom: 40px;
}
.details .section:last-of-type {
  margin-bottom: 0px;
}
.details .section__title {
  letter-spacing: 2px;
  color: #54AFE4;
  font-weight: bold;
  margin-bottom: 10px;
  text-transform: uppercase;
}
.details .section__list-item {
  margin-bottom: 40px;
}
.details .section__list-item:last-of-type {
  margin-bottom: 0;
}
.details .left,
.details .right {
  vertical-align: top;
  display: inline-block;
}
.details .left {
  width: 70%;

}
.details .right {
  text-align: right;
  width: 24%;
}
.details .name {
  font-weight: bold;
  margin-left:0;
}
.details a {
  text-decoration: none;
  color: #000;
  font-style: italic;
}
.details a:hover {
  text-decoration: underline;
  color: #000;
}
.details .skills__item {
  margin-bottom: 10px;
}
.details .skills__item .right input {
  display: none;
}

.details .skills__item .right input:checked + label {
  background: #79A9CE;
}




.mainphoto{
  margin-left:-40px;
  width:800px;
  overflow:hidden;
}


.header_name{
  font-size:40px;
  text-align:center;

}
.header_desc{
  font-size:15px;
  text-align:center;
  margin-bottom: 30px;
  margin-top:-15px;
  color:#6A6A6A;
}
.location{
  text-align:center;
  margin-bottom: 70px;
}
.section_under_image{
  margin-top:5px;
}
.footer {
  height:25px;
  position: absolute;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color: #424244;
  text-align: center;
    margin-top:150px;
    color:white;
}

@media only screen
and (max-device-width: 600px){
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  html {
    height: 100%;
  }

  body {
    min-height: 100%;
    background: #eee;
    font-family: 'Lato', sans-serif;
    font-weight: 400;
    color: #222;
    font-size: 15px;
    line-height: 26px;
    padding-bottom: 50px;
  }

  .container {
    max-width: 900px;
    background: #fff;
    margin: 0px auto 0px;
    box-shadow: 1px 1px 2px #DAD7D7;
    border-radius: 3px;
    padding: 40px;
    margin-top: 50px;
    overflow:hidden;
    height:100%;
    margin-bottom:500px;
  }
  .container_index{
    max-width: 900px;
    background: #fff;
    margin: 0px auto 0px;
    box-shadow: 1px 1px 2px #DAD7D7;
    border-radius: 3px;
    padding: 40px;
    margin-top: 0px;
    overflow:hidden;
    height:100%;
    margin-bottom:500px;
  }
.image_center_home{

}
  #cssmenu,
  #cssmenu ul,
  #cssmenu ul li,
  #cssmenu ul li a {
    margin: 0;

    padding: 0;
    border: 0;
    list-style: none;
    line-height: 1;
    display: block;
    position: relative;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
  }
  #cssmenu:after,
  #cssmenu > ul:after {
    content: ".";
    display: block;
    clear: both;
    visibility: hidden;
    line-height: 0;
    height: 0;
  }
  #cssmenu {
    width: auto;
    border-bottom: 3px solid #47c9af;
    font-family: Raleway, sans-serif;
    line-height: 1;
    margin-bottom:60px;
  }
  #cssmenu ul {
    background: #ffffff;
  }
  #cssmenu > ul > li {
    float: left;
  }
  #cssmenu.align-center > ul {
    font-size: 0;
    text-align: center;
  }
  #cssmenu.align-center > ul > li {
    display: inline-block;
    float: none;
  }
  #cssmenu.align-right > ul > li {
    float: right;
  }
  #cssmenu.align-right > ul > li > a {
    margin-right: 0;
    margin-left: -4px;
  }
  #cssmenu > ul > li > a {
    z-index: 2;
    padding: 18px 25px 12px 25px;
    font-size: 30px;
    font-weight: 400;
    text-decoration: none;
    color: #444444;
    -webkit-transition: all .2s ease;
    -moz-transition: all .2s ease;
    -ms-transition: all .2s ease;
    -o-transition: all .2s ease;

    margin-right: -4px;
  }
  #cssmenu > ul > li.active > a,
  #cssmenu > ul > li:hover > a,
  #cssmenu > ul > li > a:hover {
    color: #ffffff;
  }
  #cssmenu > ul > li > a:after {
    position: absolute;
    left: 0;
    bottom: 0;
    right: 0;
    z-index: -1;
    width: 100%;
    height: 120%;
    border-top-left-radius: 8px;
    border-top-right-radius: 8px;
    content: "";
    -webkit-transition: all .2s ease;
    -o-transition: all .2s ease;


  }
  #cssmenu > ul > li.active > a:after,
  #cssmenu > ul > li:hover > a:after,
  #cssmenu > ul > li > a:hover:after {
    background: #47c9af;
  }

  .menutext{
    margin-top:30px;
  }
.mainphoto{
  margin-left:-40px;
  width:1000px;
  overflow:hidden;
}
.section_under_image{
  margin-top:30px;
  font-size:30px;
}
.tittel{
  margin-top:10px;
  margin-bottom:20px;
  font-size:20px;
  font-style: italic;
}
.forklaring{
  font-size:20px;
  margin-bottom:10px;

}
.details .right .forklaring{
  font-size:23px;
      min-height: 100%;
      line-height: 23px;
font-family: 'Lato', sans-serif;
    font-weight: 400;
}
}

.stand_list {
   display: block;

 }

 .stand_list ul {
   list-style: none;
   width: 90%;
       margin: auto;
 }

 .stand_list ul li {
     display: inline;
     list-style: none;
     float: left;
     padding: 0 10px 0 0;
     text-align:center;
 }

 .stand_list ul li span a {
     background-color: #fff;
 }

 .stand_list ul li a {

   display: block;
   /*
   margin-right: 10px;
   margin-bottom: 7px; */
   opacity: 0.75;
   -webkit-transition: all 0.3s linear;
   -moz-transition: all 0.3s linear;

 }
 .stand_list ul li a:hover {
   opacity: 1.0;
 }

 .stand_list ul li a img {
   border: 6px solid #424244;
 }
.container {
  position: relative;
}
.infoText{
  width:200px;
  height:50px;
  display: -webkit-box;
-webkit-line-clamp: 3;
-webkit-box-orient: vertical;
overflow: hidden;
text-overflow: ellipsis;

}
.standListImage{
  width:200px;
  height:200px;
  background-position: center center;
  background-repeat: no-repeat;
  overflow: hidden;

  object-position: center;
}
.section_under_title{
  font-size:25px;

}
.logo{
  height:90px;
  width:auto;
  bottom:0;
  margin-left:10px;
  position:absolute;
}

</style>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/form.css">
</head>
<body>

  <div class="main">
    <div id="cssmenu">
     <ul>
        <a href="hjem.html"><img class="logo"src="images/expo_logo.png"/></a>
        <li ><a href="hjem.html">Hjem</a></li>
        <li ><a href="stands">Stands</a></li>
        <li class="active" ><a href="jury.html" >For Juryen</a></li>
        <li ><a href="kontakt.html">Kontakt</a></li>
        <li ><a href="annet.html">Annet</a></li>
      </ul>
    </div>
    </div>
<div class="container">
<div class="backbutton"><img class="backimg" src="images/backbutton.png"/><a href="jury.html">Ta meg tilbake til juryfunksjonene</a></div>
  <h1 class="header_name">Legg til en ny stand</h1>

  <div class="container1">
    <form id="leggtil" action="" method="post">

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
  <div class="footer">© HvL Expo 2019</div>
</body>
</html>
