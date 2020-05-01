<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>orderfail</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        .im>img {
            background-size: contain;
            width: 100%;
            height: auto;
            margin-bottom: -10px;
        }

        .blank {

            background-color: #DFE3E8;
            width: auto;
            height: 930px;
            padding: 0px;
            margin: 0px;


        }


        .success {
            background-color: #FFFFFF;
            height: 622px;
            width: 908px;
            display: inline-block;
            margin-top: 106px;
            margin-left: 168px;

            border-style: solid;
            border-width: 1px;
            border-color: #BBBBBB;


        }

        .check {
            text-align: center;
            padding-top: 70px;

        }

        .successful {
            text-align: center;
            font-size: 36px;
            color: #F20A0A;
             margin-top:42px; 

        }

        .login {
            display: inline-block;
            width: 148px;
            height: 54px;
            font-size: 20px;
            background-color: #5DAACE;
        }

        .button {
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            margin-top: 54px;
            
        }
        .back {
            padding-top: 37px;
            padding-left: 33px;
            height: 58px;
        }
        .backimg{
            float:left;
        }
    </style>
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
    <div class="im">
        <img src="img/signupsuccess/background/background.png" alt="background">
    </div>
    
    <div class="blank">
        <div class="backimg">
            <a href="OrderConfirmation.jsp"><img class="back" src="img/currentorder/back/back.png" alt="back"></a>
        </div>
        <div class="success">
            <div class="check">
                <img src="img/orderfail/fail/fail.png" alt="fail">

            </div>
            <div>
                <p class="successful">
                    Failed to create the order!
                </p>
            </div>
            


        </div>
    </div>
    <div class="footer">
        <ul class="information">
            <ul class="company">
                <li>
                    XXXXXXXXXXXX Company
                </li>

            </ul>
            <ul class="contact">
                <li>
                    Address: Syracuse University
                </li>
                <li>
                    Phone: +1-3150000000
                </li>
                <li>
                    Email: ood@syr.edu
                </li>
            </ul>
        </ul>

        <ul class="other">
            <ul class="intro">
                <ul class="introduce">
                    <li>
                        Introduce
                    </li>
                </ul>
                <ul class="otherintro">
                    <li>
                        Company introduction
                    </li>
                    <li>
                        Team introduce
                    </li>
                    <li>
                        About us
                    </li>
                </ul>
            </ul>
            <ul class="service">
                <ul class="servicescope">
                    <li>
                        Service scope
                    </li>
                </ul>
                <ul class="otherservice">
                    <li>
                        Product introduction
                    </li>
                    <li>
                        News
                    </li>
                    <li>
                        Service
                    </li>
                </ul>

            </ul>
        </ul>
    </div>
</body>

</html>