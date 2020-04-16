<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <style>
        .information {
            height: 300px;

        }
        .headnickname {
            float: left;

            height: 600px;
            width: 400px;

            font-size: 30px;
            text-align: center;

        }
        .headimg {
            display: block;
            margin: 60px auto;

        }
        .word {
            float: right;
            height: 300px;
            width: 1040px;


        }

        .word div {
            padding-bottom: 30px;
            padding-left: 30px;
        }
        .headimg {
            height: 250px;

        }
        .h {
            display: inline-block;
        }
        .personalinformation {
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

        .gender {
            padding-right: 90px;
        }
        .birthday {
            padding-right: 80px;
        }

        .address {
            padding-right: 84px;
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
                <a href="">User Name</a>
            </li>
        </ul>
    </div>
    <div class="information">
        <div class="headnickname">
            <img class="headimg" src="img/usercenter/head/head.jpeg" alt="head">
            <a class="nickname" href="">Lucy</a>
        </div>
        <div class="word">
            <div>
                <span class="personalinformation">
                    Personal Information</span>

                <HR class="h" align=center width=579 color=black SIZE=1>
                <a class="edit" href="">edit</a>

            </div>
            <div>
                <span class="pi username">User Name</span>

                <a class="pia" href="">******@gmail.com</a>
            </div>
            <div>
                <span class="pi realname">Real Name</span>

                <a class="pia" href="">Lucy</a>
            </div>
            <div>
                <span class="pi gender">Gender</span>

                <a class="pia" href="">Female</a>
            </div>
            <div>
                <span class="pi birthday">Birthday</span>

                <a class="pia" href="">1st,Jan,1990</a>
            </div>
            <div>
                <span class="pi address">Address</span>

                <a class="pia" href="">111 Test Ave, Syracuse</a>
            </div>

        </div>
    </div>
    <div class="icon">
        <div>
            <img src="img/usercenter/bottom/currentorder.png" alt="currentorder">
            <ul>
                Current Order
            </ul>
        </div>
        <div>
            <img src="img/usercenter/bottom/historyorder.png" alt="historyorder">
            <ul>
                History order
            </ul>
        </div>
        <div>
            <img src="img/usercenter/bottom/diseasehistory.png" alt="diseasehistory">
            <ul>
                Disease History
            </ul>
        </div>
    </div>
</body>

</html>