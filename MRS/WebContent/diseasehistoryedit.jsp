<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>diseasehistoryedit</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>


        .information {
            height: 300px;
            margin-top: 44px;
margin-left:144px;
        }

        .headnickname {
            float: left;

            height: 600px;
            width: 400px;

            font-size: 28px;
            text-align: center;

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

        .titleh {
            margin-top: 1px;
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
            display: inline-block;
        }

        .right {
            width: 608px;
            height: 27px;
            display: inline-block;
        }

        .subleft {
            width: 156px;
            display: inline-block;
        }

        .subright {
            width: 200px;
            display: inline-block;
        }
        .titleb{
            margin-top:-200px;
        }
        .diseasehistoryimg{
            width:1272px;
            padding-left:144px;
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
        <HR class="titleh" align=center width=1082px SIZE=1>
    </div>
    <div class="information">
       
            
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

                    
                </div>

            
        </div>
        <div>
            <HR class="titleh titleb" align=center width=1082px SIZE=1>
        </div>
        <div>
            <img class="diseasehistoryimg" src="img/diseasehistoryedit/information/information.png" alt="diseasehistoryimg">
        </div>
    </div>
    </div>

</body>

</html>