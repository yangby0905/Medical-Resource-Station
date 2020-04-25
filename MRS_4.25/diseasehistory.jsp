<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>diseasehistory</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        .back {
            padding-top: 37px;
            padding-left: 33px;
            height: 58px;
        }

        .information {
            height: 300px;
            margin-top: -35px;

        }

        .headnickname {
            float: left;

            height: 600px;
            width: 400px;

            font-size: 28px;
            text-align: center;

        }

        .headimg {
            display: block;
            margin-left: 60px;

        }

        .word {
            float: right;
            height: 300px;
            width: 1040px;


        }

        .subtitle {
            padding-bottom: 50px;

        }

        .headimg {
            height: 250px;

        }

        .h {
            display: inline-block;
            margin-left: 99px;
        }

        .healthhistory {
            font-size: 28px;

        }

        .edit {
            font-size: 20px;
        }

        .pi {
            font-size: 18px;
            padding-right: 63px;

        }

        .pia {
            font-size: 18px;

        }




        .icon {
            float: right;
            height: 500px;
        }

        .icon div {
            float: left;
            position: relative;
            right: 8%;
            margin: 50px;
            height: 400px;
            width: 200px;
        }

        .icon img {
            margin: auto;

            display: block;
        }

        .icon ul {
            text-align: center;
        }



        .l {
            height: 27px;
            margin-bottom: 24px;
        }

        .l1 {
            height: 27px;
            margin-bottom: 15px;
        }

        .left1 {
            width: 196px;
            display: inline-block;
        }

        .right1 {
            display: inline-block;
        }

        .left {
            width: 366px;
            height: 27px;
            float: left;
        }

        .right {
            width: 674px;
            height: 27px;
            float: right;
        }

        .subleft {
            width: 156px;
            display: inline-block;
        }

        .subright {
            width: 200px;
            display: inline-block;
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
    <div>
        <a href="usercenter.jsp"><img class="back" src="img/currentorder/back/back.png" alt="back"></a>
    </div>
    <div class="information">
        <div class="headnickname">
            <img class="headimg" src="img/usercenter/head/head.jpeg" alt="head">
            <a class="nickname" href="">Lucy</a>
        </div>
        <div class="word">
            <div class="subtitle">
                <span class="healthhistory">
                    Health History</span>

                <HR class="h" align=center width=579 color=black SIZE=1>
                <a class="edit" href="diseasehistoryedit.jsp">edit</a>

            </div>
            <div>
                <div class="dieasehistoryinformation">
                    <div class="personal">
                        <div class="l">
                            <div class="left">
                                <span class="subleft">
                                    Real Name
                                </span>
                                <span class="subright">
                                    Lucy
                                </span>
                            </div>
                            <div class="right">
                                <span class="subleft">
                                    Gender
                                </span>
                                <span class="subright">
                                    Female
                                </span>
                            </div>
                        </div>
                        <div class="l">
                            <div class="left">
                                <span class="subleft">
                                    Birthday
                                </span>
                                <span class="subright">
                                    1st, Jan, 1990
                                </span>
                            </div>
                            <div class="right">
                                <span class="subleft">
                                    Address
                                </span>
                                <span class="subright">
                                    111 Test Ave, Syracuse
                                </span>
                            </div>
                        </div>

                    </div>

                    <div class="health">
                        <div class="l1">
                            <span class="left1">
                                Past Medical History:
                            </span>
                            <span class="right1">
                                Heart Problems
                            </span>
                        </div>
                        <div class="l1">
                            <span class="left1">
                                Previous Surgeries:
                            </span>
                            <span class="right1">
                                None
                            </span>
                        </div>
                        <div class="l1">
                            <span class="left1">
                                Servious Injury:
                            </span>
                            <span class="right1">
                                None
                            </span>
                        </div>
                        <div class="l1">
                            <span class="left1">
                                Allergies:
                            </span>
                            <span class="right1">
                                Penicillin allergy
                            </span>
                        </div>
                        <div class="l1">
                            <span class="left1">
                                Family History:
                            </span>
                            <span class="right1">
                                Diabetes
                            </span>
                        </div>
                        <div class="l1">
                            <span class="left1">
                                Servious Injury:
                            </span>
                            <span class="right1">
                                None
                            </span>
                        </div>
                        <div class="l1">
                            <span class="left1">
                                Servious Injury:
                            </span>
                            <span class="right1">
                                None
                            </span>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>

</body>

</html>