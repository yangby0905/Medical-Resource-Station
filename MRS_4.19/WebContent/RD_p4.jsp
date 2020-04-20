<%--
  Created by IntelliJ IDEA.
  User: liyx1
  Date: 4/10/2020
  Time: 1:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
    <style>
        .cle{clear:both;}
        body {
            margin-left: auto;
            margin-right: auto;
            width: 1440px;
            height: 1024px;
        }
        .title1{
            /*padding-top:0px;*/
            padding-bottom:65px;
            padding-left: 5em;
            border-radius:0px;
            border:1px hidden grey;
            border-bottom-style: solid;
        }
        .title1 a{
            text-decoration: none;
        }
        .title1 ul,li{
            display:block;
            position:relative;
        }
        .title1 li{
            float:left;
            margin:auto 10px;
            list-style:none;
        }
        .title1 img{
            width:23px;
            height:23px;
        }
        .back1 img{
            width:25px;
            height:auto;
            margin-top: 2%;
            float:left;
        }
        .rd {
            display:inline-block;
            position:relative;
            left:10%;
            margin-top: 5%;
        }
        .list{
            padding-bottom:120px;
            border:1px hidden #000000;
            border-bottom-style: solid;
            margin-left: 10%;
            margin-right: 5%;
            margin-top: 5%;
        }
        .list ul,li{
            display:block;
            position:relative;
            /*margin-left: 10%;*/
        }
        .list li{
            float:left;
            margin:auto 10px;
            list-style:none;
        }
        .list img{
            float:left;
            width:110px;
            height:auto;
        }
        .button{
            border:1px solid #000000;
            background-color: aqua;
            padding:5px;
            /*align-content: baseline;*/
        }
        .button a{
            text-decoration: none;
        }
        .PageButton ul,li{
            display:block;
            position:relative;
            margin-top: 20px;
        }
        .PageButton li{
            float:left;
            border: 1px hidden black;
            position: relative;
            padding:3px;
            margin-right: 10px;
            left:40%;
        }
        .PageButton a{
            text-decoration: none;
        }
    </style>
    <title>RecommendDoctor</title>
</head>
<body>
<%--    Title:Medical Resource Station  --%>
<div class="title1">
    <ul >
        <li><h1 style="color:grey"> Medical Resource Station</h1></li>
        <li style="float:right;">
            <p>  |  <img src="image/appointment/User.png" >Lucy</p>
        </li>
        <li style="float:right;">
            <p><img src="image/appointment/UserCenter.svg" alt="UserCenter" >
                <a href="" target="_blank" > UserCenter</a></p>
        </li>
        <li style="float:right;">
            <p><img src="image/appointment/Service.svg" alt="Service" >
                <a href="" target="_blank" > Service</a></p>
        </li>
        <li style="float:right;">
            <p><img src="image/appointment/Home.svg" alt="Home" >
                <a href="index.jsp" target="_blank" > Home</a></p>
        </li>
    </ul>
</div>
<%--    back_img    --%>
<div class="back1">
    <ul>
        <a href="appointment.jsp">
            <img src="image/appointment/back_img.png" alt="back_img" >
        </a>
    </ul>
</div>
<%--    Recommend Doctor    --%>
<div class="rd">
    <h2>Recommend Doctor</h2>
</div>
<div class="list" style="margin-top: 0;">
    <ul>
        <li>
            <img src="image/appointment/FemaleDoctor.png" alt="RDoctor1">
        </li>
        <li>
            <p><strong>Amani </strong>Family doctor<br>Barnes Center at The Arch
                <br>Good at upper respiratory infection, asthma and other respiratory diseases</p>
        </li>
        <li class="button" style="float:right">
            <a href="" >Make an appointment</a>
        </li>
    </ul>
</div>
<div class="list">
    <ul>
        <li>
            <img src="image/appointment/FemaleDoctor.png" alt="RDoctor1">
        </li>
        <li>
            <p><strong>Amani </strong>Family doctor<br>Barnes Center at The Arch
                <br>Good at upper respiratory infection, asthma and other respiratory diseases</p>
        </li>
        <li class="button" style="float:right">
            <a href="" >Make an appointment</a>
        </li>
    </ul>
</div>
<div class="list">
    <ul>
        <li>
            <img src="image/appointment/FemaleDoctor.png" alt="RDoctor1">
        </li>
        <li>
            <p><strong>Amani </strong>Family doctor<br>Barnes Center at The Arch
                <br>Good at upper respiratory infection, asthma and other respiratory diseases</p>
        </li>
        <li class="button" style="float:right">
            <a href="" >Make an appointment</a>
        </li>
    </ul>
</div>
<div class="PageButton">
    <ul>
        <li ><a href="RecommendDoctor.jsp">1</a></li>
        <li ><a href="RD_p2.jsp">2</a></li>
        <li ><a href="RD_p3.jsp">3</a></li>
        <li style="background-color: dodgerblue"><a href="RD_p4.jsp" style="color: white">4</a></li>
        <li ><a href="RD_p5.jsp">5</a></li>
    </ul>
</div>
</body>
</html>