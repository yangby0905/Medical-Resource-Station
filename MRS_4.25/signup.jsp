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

        .signuptitle {
            padding-top: 84px;
            padding-left: 533px;
            font-size: 28px;
            padding-bottom: 12px;
            color: #0A0A0B;
        }

        .signupinfo {
            background-color: #FFFFFF;
            height: 705px;
            width: 628px;
            margin-left: auto;
            margin-right: auto;
            border-style: solid;
            border-width: 1px;
            border-color: #BBBBBB;
        }

        .signupinfo>* {
            color: #7D7B7B;
            display: block;
            font-size: 20px;


        }



        .star {
            color: red;
        }

        .input {
            margin-left: auto;
            margin-right: auto;
            width: 380px;
            height: 60px;
            margin-top: 18px;
            margin-bottom: 26px;
            font-size: 30px;

        }

        .signupinfo>div {
            margin-left: 56px;
            margin-top: 38px;
            height: 544px;
            width: 350px;
            padding-top: 20px;
            /*             border-style: solid;
            border-width: 1px;
            border-color: #BBBBBB; */
        }

        .register {
            display: inline-block;
            width: 380px;
            height: 60px;
            font-size: 20px;
            background-color: #0DA9F2;
        }

        .button {
            margin-left: 56px;

        }

        #hint1 {
            display: none;
            margin-top: -25px;
            margin-bottom: 5px;
            font-size: 18px;
            color: #F20A0A;

        }

        #hint2 {
            display: none;
            margin-top: -25px;
            margin-bottom: 5px;
            font-size: 18px;
            color: #F20A0A;
        }
    </style>
    <script type="text/javascript">
        function validate() {
            var hide = document.getElementById("hint2");
            var pw1 = document.getElementById("pw1").value;
            var pw2 = document.getElementById("pw2").value;
            if (pw1 != pw2) {
                hide.style.display = "block";
            }
            else {
                hide.style.display = "none";
            }
        }
        function emailvalidate()
        {
            var hide = document.getElementById("hint1");
            var reg=/^([A-Za-z0-9_\-\.\u4e00-\u9fa5])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,8})$/;
            var email=document.getElementById("email").value;
            if(reg.test(email)==false)
            {
                hide.style.display = "block";
            }
            else {
                hide.style.display = "none";
            }
        }
    </script>
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
        <img src="img/signup/background/background.png" alt="background">
    </div>
    <div class="blank">

        <div class="signup">
            <p class="signuptitle"> Create your account</p>
            <div class="signupinfo">
                <div>
                    <ul>
                        Username
                        <span class="star">*</span>
                    </ul>
                    <input class="input" type="text">
                    <ul>
                        Email Address <span class="star">*</span>
                    </ul>
                    <input class="input" id="email" type="email" 
                onkeyup="setTimeout(function(){emailvalidate()},1000)">
                    <ul class="hint " id="hint1">
                        In correct mailbox format!
                    </ul>
                    <ul>
                        Password <span class="star">*</span>
                    </ul>
                    <input class="input" id="pw1" type="password">
                    <ul>
                        Password Confirmation <span class="star">*</span>
                    </ul>
                    <input class="input" id="pw2" type="password" onkeyup="validate()">
                    <ul class="hint " id="hint2">
                        The passwords entered are inconsistent!
                    </ul>
                </div>
                <ul class="button">
                    <button class="register" onclick="{location.href='signupsuccess.jsp'}">
                        Register
                    </button>
                </ul>


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