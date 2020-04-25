<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
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
            height: 807px;
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
            height: 480px;
            width: 628px;
            margin-left: auto;
            margin-right: auto;
            border-style: solid;
            border-width: 1px;
            border-color: #BBBBBB;
        }

        .createaccount {
            width: 628px;
            height: 93px;
            border-style: solid;
            border-width: 1px;
            border-color: #BBBBBB;
            background-color: #FFFFFF;
            margin-left: auto;
            margin-right: auto;
            margin-top: 25px;
        }

        .signupinfo>* {
            color: #7D7B7B;
            display: block;
            font-size: 20px;


        }



        .input {
            margin-left: auto;
            margin-right: auto;
            width: 380px;
            height: 60px;
            margin-top: 24px;
            margin-bottom: 50px;
            font-size: 30px;

        }

        .signupinfo>div {
            margin-left: 56px;
            margin-top: 35px;
            height: 332px;
            width: 380px;
            padding-top: 20px;
            margin-bottom:-10px;
            /*             border-style: solid;
            border-width: 1px;
            border-color: #BBBBBB; */
        }

        .login {
            display: inline-block;
            width: 380px;
            height: 60px;
            font-size: 20px;
            background-color: #0DA9F2;

        }

        .button {
            margin-left: 56px;
        }

        .forgot {
            font-size: 20px;
            padding-left: 120px;
        }

        .cre {
            padding-left: 70px;
            color:#0A84BD;
        }

        .new {
            margin-left: 56px;
            font-size: 20px;
            padding-top: 30px;
        }
        .hint{
            font-size: 18px;
            margin-top:-40px;
            color:#F20A0A;
            display: none;
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
        <img src="img/login/background/background.png" alt="background">
    </div>
    <div class="blank">

        <div class="signup">
            <p class="signuptitle"> Sign in to Medical Resource</p>
            <div class="signupinfo">
                <div>
                    <ul>
                        Username or Email
                    </ul>
                    <input class="input" type="text">

                    <ul>
                        Password
                        <span class="forgot">
                            <a href="forgotpassword.jsp">Forgot Password?</a>

                        </span>
                    </ul>
                    <input class="input" type="text">
<ul class="hint">
    The credentials you entered are incorrect!
</ul>
<!-- 密码不正确时显示上面文字 -->

                </div>
                <ul class="button">
                    <button class="login" onclick="{location.href='index.jsp'}">
                        Log in
                    </button>
                </ul>
            </div>
        </div>
        <div class="createaccount">
            <div>
                <p class="new">
                    New to Medical Resource?
                    <span class="cre">
                        <a href="signup.jsp">Create An Account</a>

                    </span>
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