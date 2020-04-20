<%--
  Created by IntelliJ IDEA.
  User: liyx1
  Date: 4/14/2020
  Time: 10:21 PM
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
            margin-left: 10%;
            margin-right: 5%;
            margin-top: 5%;
            width: 700px;
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
            top:5%;
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
    <title>AppointmentDate</title>
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
            <a href="DoctorHomePage.jsp">
                <img src="image/appointment/back_img.png" alt="back_img" >
            </a>
        </ul>
    </div>
    <div class="list1" >
        <ul style="margin-bottom: 10%">
            <li class="img1">
                <img src="image/appointment/MaleDoctor1.png" alt="RDoctor1" >
                <img src="image/DoctorHomePage/Heart.png" alt="Heart"
                     style="float: right;width:70px;height:70px;">
            </li>
            <li style="padding-left:160px">
                <p><br><br><strong>Mike </strong><br>Specialist physician
                    <br>Upstate University Hospital</p>
            </li>
        </ul>
<%--     title:Outpatient service time   --%>
        <ul>
            <li>
                <pre><strong>Outpatient service time</strong>                               status                   <hr /></pre>
            </li>
        </ul>
<%--    details    --%>
        <ul>
            <ul style="float:left; width:21em;">
                <li>
                    <p><strong>1st May,2020 Morning </strong><br>$50.00</p>
                </li>
                <li>
                    <p><strong>1st May,2020 Morning </strong><br>$50.00</p>
                </li>
                <li>
                    <p><strong>1st May,2020 Morning </strong><br>$50.00</p>
                </li>
                <li>
                    <p><strong>1st May,2020 Morning </strong><br>$50.00</p>
                </li>
            </ul>
            <ul style="float:right; width:11em;">
                <li class="button1">
                    <a href="OrderConfirmation.jsp" >Make an appointment</a>
                </li>
                <li class="button1">
                    <a href="AppointmentDate.jsp" >Make an appointment</a>
                </li>
                <li class="button1">
                    <a href="AppointmentDate.jsp" >Make an appointment</a>
                </li>
                <li class="button1">
                    <a href="AppointmentDate.jsp" >Make an appointment</a>
                </li>
            </ul>
        </ul>
    </div>
</body>
</html>
