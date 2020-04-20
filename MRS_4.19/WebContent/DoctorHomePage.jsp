<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
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
            padding-bottom:120px;
            /*border:1px solid #000000;*/
            border:1px hidden #000000;
            /*border-bottom-style: solid;*/
            margin-left: 10%;
            margin-right: 5%;
            margin-top: 5%;
            width: 850px;
        }
        .list1 ul,li{
            display:block;
            position:relative;
            /*margin-left: 10%;*/
        }
        .list1 li{
            /*float:left;*/
            margin:auto 10px;
            list-style:none;
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
            left:300px;
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
        .img2 img{
            margin-right: 10%;
            float:right;
            width:70px;
            height:70px;
        }
    </style>
    <title>Mike</title>
</head>
<body>
    <div class="title">Medical Resource Station</div>
    <div class="topright">
        <ul class="toprightleft">
            <li class="home">
                <img src="img/index/topright/fa-home.svg" style="vertical-align:-8px" alt="fa-home">
                <a href="index.jsp">Home</a>
            </li>
            <li class="service">
                <img src="img/index/topright/mb-book.svg" style="vertical-align:-5px" alt="mb-book">
                <a href="">Service</a>
            </li>
            <li class="usercenter">
                <img src="img/index/topright/mb-user.svg" style="vertical-align:-5px" alt="mb-user">
                <a href="usercenter.jsp">User Center</a>
            </li>
            <li class="username">
                <img class="s" src="img/index/topright/s.png" style="height:30px;vertical-align:-10px" alt="s">
                <a href="login.jsp">Log In</a>
            </li>
        </ul>
    </div>
    <!--    back_img    -->
    <div class="back1">
        <ul>
            <a href="RecommendDoctor.jsp">
                <img src="image/appointment/back_img.png" alt="back_img" >
            </a>
        </ul>
    </div>
    <div class="list1" >
        <ul>
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
        <ul>
            <li style="padding-left:160px">
                <p><br><br><strong>Good at </strong>
                    <br>Good at upper respiratory infection, asthma and other respiratory diseases</p>
            </li>
        </ul>
        <ul>
            <li style="padding-left:160px">
                <p><br><br><strong>Record of education </strong>
                    <br>M.d, Ph.D. NYU</p>
            </li>
        </ul>
        <ul>
            <li class="button1">
                <a href="AppointmentDate.jsp" >Make an appointment</a>
            </li>
        </ul>
    </div>
</body>
</html>