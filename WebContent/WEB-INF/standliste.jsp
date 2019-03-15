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

</head>
<body style="background: url('images/expo_bg3.jpg') no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">

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
<div class="container">

  <h1 class="header_name">Stands på Expo 2019</h1>
  <div class="stand_list">
    <ul>
      <c:forEach var="stand" items="${standliste}" varStatus="loop">
      <li><span><a href="stand?standid=${stand.standid}"><img class="standListImage" src="${stand.bildeurl}"/></a></span>
          <span class="infoText">${stand.tittel}</span>
          <a href="#">Se mer...</a>
      </li>

		</c:forEach>
      
    </ul>
  </div>
  </div>
  </div>
  <div class="footer">© HvL Expo 2019</div>
</body>
</html>
