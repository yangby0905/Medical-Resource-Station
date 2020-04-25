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
    <title>bill</title>
    <style>
        .back {
            padding-top: 48px;
            padding-left: 48px;
            height: 58px;
        }

        .bill {
            width: 1440px;
            height: 558px;
        }

        .responsibleparty {
            margin-left: 64px;
            margin-top: 15px;
            margin-bottom:44px;
        }

        .subtitle {
            font-size: 18px;

        }

        .line {
            height: 24px;
            margin-bottom:18px;
        }
        .info{
            margin-top:20px;
        }

        .left {
            height: 24px;
            width: 110px;
            float: left;
        }

        .right {
            display: inline-block;
            height: 24px;
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
        <a href="historyorderdetail.jsp"><img class="back" src="img/forgotpassword/back/back.png" alt="back"></a>

    </div>
    <div class="responsibleparty">
        <div class="subtitle">
            Responsible Party
        </div>
        <div>
            <HR class="titleh" align=left width=517px SIZE=1>
        </div>
        <div class="info">
            <div class="line">
                <div class="left">
                    Name:
                </div>
                <div class="right">
                    Lucy
                </div>
            </div>
            <div class="line">
                <div class="left">
                    Address:
                </div>
                <div class="right">
                    111 Test Ave, Syracuse
                </div>
            </div>
        </div>
    </div>

    <div>
        <img class="bill" src="img/bill/bill/bill.png" alt="bill">
    </div>

</body>

</html>