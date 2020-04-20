<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signup</title>
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
            margin-left: 270px;

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
            color: #5DAACE;
            margin-top:-10px;

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
    </style>
</head>

<body>
    <script>
        function tz() {
            window.location.href = 'login.jsp';
        }
    </script>
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

        <div class="success">
            <div class="check">
                <img src="img/signupsuccess/successful/successful.png" alt="successful">

            </div>
            <div>
                <p class="successful">
                    Successful!
                </p>
            </div>
            <div class="button">
                <button class="login" onclick="{location.href='index.jsp'}">
                    View my order
                </button>
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