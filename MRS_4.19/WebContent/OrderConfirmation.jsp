<%--
  Created by IntelliJ IDEA.
  User: liyx1
  Date: 4/19/2020
  Time: 1:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
        }
        .title1 a{
            text-decoration: none;
            /*target:_blank;*/
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
        .list1 {
            border:1px hidden #000000;
            /*padding-bottom: 60px;*/
            margin-left: 5%;
            margin-right: 5%;
            margin-top: 5%;
            width: 1000px;
        }
        .list1 ul,li{
            display:block;
            position:relative;
            /*margin-left: 10%;*/
        }
        .list1 li{
            list-style:none;
            margin-bottom: 50px;
        }
        .list1 pre{
            font-size: 140%;
        }
        .list1 p{
            font-size: 120%;
        }
        .button1{
            border:1px solid #000000;
            background-color: aqua;
            padding:1em;
            width:9em;
            position: center;
            float:right;
            margin-top: 40%;
            text-align: center;
        }
        .button1 a{
            text-decoration: none;
        }
        .img1 img{
            float:left;
            width:130px;
            height:auto;
        }
    </style>
    <title>OrderConfirmation</title>
</head>
<body>
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
        <a href="AppointmentDate.jsp">
            <img src="image/appointment/back_img.png" alt="back_img" >
        </a>
    </ul>
</div>
<div class="list1" >
    <%--     title:Outpatient service time   --%>
    <ul>
        <li>
            <h2><strong>OrderConfirmation</strong> <hr /></h2>
        </li>
    </ul>
    <%--    details    --%>
    <ul>
        <ul style="float:left; width:16em;">
            <li>
                <p><strong>Hospital </strong></p>
            </li>
            <li>
                <p><strong>Address</strong></p>
            </li>
            <li>
                <p><strong>Doctor </strong></p>
            </li>
            <li>
                <p><strong>Clinic Time</strong></p>
            </li>
            <li>
                <p><strong>Price</strong></p>
            </li>
        </ul>
        <ul style="float:right; width:23em;">
            <li>
                <p><strong>Upstate University Hospital </strong></p>
            </li>
            <li>
                <p style="color: orange"><strong>750 East Adams Street Syracuse, NY 13210 </strong></p>
            </li>
            <li>
                <p>Mike </p>
            </li>
            <li>
                <p><strong>1st May,2020 Morning</strong></p>
            </li>
            <li>
                <p style="color: red"><strong>$50.00</strong></p>
            </li>
        </ul>
    </ul>
    <ul>
        <li class="button1">
            <a href="OrderSuccess.jsp" ><strong>Confirm</strong></a>
        </li>
    </ul>
</div>
</body>
</html>
