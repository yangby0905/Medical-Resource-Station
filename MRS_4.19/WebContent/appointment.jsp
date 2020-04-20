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
        .list {
            padding-bottom:140px;
            border-radius:0px;
            border:1px solid grey;
            border-right-style: hidden;
            border-left-style: hidden;
        }
        .list img{
            float:left;
            width:120px;
            height:auto;
        }
        .list a{
            text-decoration: none;
        }
        .list ul,li{
            display:block;
            position:relative;
        }
        .list li{
            float:left;
            margin:auto 10px;
            list-style:none;
        }
        .WordInList{
            font-size: 120%;
            /* align:top; */
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
    <!--The message about the doctor-->
    <div class="list">
        <ul>
            <li><img src="image/appointment/Doctor1.png" alt="Doctor2" ></li>
            <li>
                <a href="RecommendDoctor.jsp" ><p class="WordInList"><strong>Cold</strong></p></a>
                <p ><small>Headache, sneezing, sore throat, cough, fever, etc.</small></p>
            </li>
        </ul>
    </div>
    <div class="list">
        <ul>
            <li><img src="image/appointment/Doctor1.png" alt="Doctor2" ></li>
            <li>
                <a href="RecommendDoctor.jsp" ><p class="WordInList"><strong>Stomachache</strong></p></a>
                <p ><small>Stomachache, flatulence, gastroenteritis, etc.</small></p>
            </li>
        </ul>
    </div>
    <div class="list">
        <ul>
            <li><img src="image/appointment/Doctor1.png" alt="Doctor3" ></li>
            <li>
                <a href="RecommendDoctor.jsp" ><p class="WordInList"><strong>Pharmacy</strong></p></a>
                <p ><small>Pregnancy, pregnancy physical examination, childbirth, etc.</small></p>
            </li>
        </ul>

    </div>
    <div class="list">
        <ul>
            <li><img src="image/appointment/Doctor2.png" alt="Doctor4" ></li>
            <li>
                <a href="RecommendDoctor.jsp" ><p class="WordInList"><strong>Specialist</strong></p></a>
                <p ><small>Orthopedics, neurology, brain surgery, cardiothoracic surgery and other specialties.</small></p>
            </li>
        </ul>
    </div>
</body>
</body>
</html>