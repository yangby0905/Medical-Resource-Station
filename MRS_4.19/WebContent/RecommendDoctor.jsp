<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="js/sometext.js">
    <link rel="stylesheet" href="">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        .cle {
            clear: both;
        }

        body {
            margin-left: auto;
            margin-right: auto;
            width: 1440px;
            height: 1024px;
        }

        .title1 {
            /*padding-top:0px;*/
            padding-bottom: 65px;
            padding-left: 5em;
            border-radius: 0px;
            border: 1px hidden grey;
            border-bottom-style: solid;
        }

        .title1 a {
            text-decoration: none;
        }

        .title1 ul,
        li {
            display: block;
            position: relative;
        }

        .title1 li {
            float: left;
            margin: auto 10px;
            list-style: none;
        }

        .title1 img {
            width: 23px;
            height: 23px;
        }

        .back1 img {
            width: 25px;
            height: auto;
            margin-top: 2%;
            float: left;
        }

        .rd {
            display: inline-block;
            position: relative;
            left: 10%;
            margin-top: 5%;
        }

        .list {
            padding-bottom: 120px;
            border: 1px hidden #000000;
            border-bottom-style: solid;
            margin-left: 10%;
            margin-right: 5%;
            margin-top: 5%;
        }

        .list ul,
        li {
            display: block;
            position: relative;
            /*margin-left: 10%;*/
        }

        .list li {
            float: left;
            margin: auto 10px;
            list-style: none;
        }

        .list img {
            float: left;
            width: 110px;
            height: auto;
        }

        .button {
            border: 1px solid #000000;
            background-color: aqua;
            padding: 1em;
            float: right;
            /*align-content: baseline;*/
        }

        .button a {
            text-decoration: none;
        }

        .PageButton ul,
        li {
            display: block;
            position: relative;
            margin-top: 20px;
        }

        .PageButton li {
            float: left;
            border: 1px hidden black;
            position: relative;
            padding: 3px;
            margin-right: 10px;
            left: 40%;
        }

        .PageButton a {
            text-decoration: none;
        }
        .pagination-bar {
            font-size: 0px;
padding-top:158px;
            text-align: center;
        }

        .pagination-bar a {
            display: inline-block;
            padding: 5px 7.5px;
            text-decoration: none;
            width: 20px;
            height: 20px;
            font-size: 14px;
            border-radius:8px;
        }

        .pagination-bar a:not(.disabled) {
            background-color: #FFF;
            color: #595959;
            
        }

        .pagination-bar a.disabled {
            background-color: #1890FF;
            color: #FFF;
           
        }


        .page-prev {
            border-radius: 15px 0px 0px 15px;
        }

        .page-next {
            border-radius: 0px 15px 15px 0px
        }

        .pagination-bar span:not(.active) {
            display: inline-block;
            padding: 5px 7.5px;
            font-size: 14px;
        }
    </style>
    <title>RecommendDoctor</title>
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
            <a href="appointment.jsp">
                <img src="image/appointment/back_img.png" alt="back_img">
            </a>
        </ul>
    </div>
    <!--    Recommend Doctor    -->
    <div class="rd">
        <h2>Recommend Doctor</h2>
    </div>
    <div class="list" style="margin-top: 0;">
        <ul>
            <li>
                <img src="image/appointment/MaleDoctor1.png" alt="RDoctor1">
            </li>
            <li>
                <p><strong>Amani </strong>Family doctor<br>Barnes Center at The Arch
                    <br>Good at upper respiratory infection, asthma and other respiratory diseases</p>
            </li>
            <li class="button" style="float:right">
                <a href="DoctorHomePage.jsp">Make an appointment</a>
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
                <a href="">Make an appointment</a>
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
                <a href="">Make an appointment</a>
            </li>
        </ul>
    </div>
    <div class="pagination-bar">
        <a href="#" class="">&lt;</a>
        <a href="#" class="disabled">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">5</a>

        <a href="#" class="page-next">&gt;</a>
    </div>

</body>

</html>