<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="js/sometext.js">
    <link rel="stylesheet" href="">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        HR {
            color: #BBBBBB;
        }

        .h {
            margin: 0px;
            padding: 0px;
        }

        .back {
            padding-top: 37px;
            padding-left: 33px;
            height: 58px;
        }

        .titleh {
            margin-top: 1px;
        }

        .currentorder {
            margin-top: -5px;
            height: 425px;
            /*             border-style: solid;
            border-width: 1px;
            border-color: black; */
            width: 1226px;

            margin-left: auto;
            margin-right: auto;

        }

        .currentorderdetail {
            width: 1082px;
            height: 442px;
            margin-left: auto;
            margin-right: auto;
            font-size: 20px;

        }

        .subtitle {
            font-size: 34px;
            padding-bottom: 15px;
        }

        .infor {
            height: 300px;
            border-style: solid;
            /*  border-width: 1px; */
            border-color: black;
            width: 1082px;
            margin: 0px;
            padding: 0px;

        }

        .infoleft {
            height: 300px;
            width: 354px;

            float: left;
            padding: 0px;
            margin: 0px;
            color: #101010;
        }

        .infomid {
            height: 300px;
            width: 600px;

            display: inline-block;
        }

        .infor ul {
            padding-top: 31px;
        }

        .hospitalname {
            color: #0C0D0D;
        }

        .hospitaladdress {
            color: #F48A09;
        }

        .doctorname {

            color: #0C0D0D;
        }

        .date {
            color: #403F3F;
        }

        .orderprice {
            color: #F20A0A;
        }

        .addreminderbutton {
            text-align: center;
        }

        .addreminder {
            display: inline-block;
            width: 380px;
            height: 54px;
            font-size: 20px;
            background-color: #0DA9F2;
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
    <div class="blank">
        <div>
            <a href="historyorder.jsp"><img class="back" src="img/currentorder/back/back.png" alt="back"></a>
        </div>
        <div class="currentorder">
            <div class="currentorderdetail">
                <div>
                    <p class="subtitle">
                        Order Confirmation
                    </p>
                </div>
                <div>
                    <HR class="h" align=center width=1082px SIZE=1>
                </div>
                <div class="infor">
                    <div class="infoleft">
                        <ul class="hospital">
                            Hospital
                        </ul>
                        <ul class="address">
                            Address
                        </ul>
                        <ul class="doctor">
                            Doctor
                        </ul>
                        <ul class="clinictime">
                            Clinic Time
                        </ul>
                        <ul class="price">
                            Price
                        </ul>
                    </div>
                    <div class="infomid">
                        <ul class="hospitalname">
                            Upstate University Hospital
                        </ul>
                        <ul class="hospitaladdress">
                            750 East Adams Street Syracuse, NY 13210
                        </ul>
                        <ul class="doctorname">
                            Mike
                        </ul>
                        <ul class="date">
                            1st May, 2020 Morning
                        </ul>
                        <ul class="orderprice">
                            $50.00
                        </ul>
                    </div>
                </div>
                <div>
                    <HR class="h" align=center width=1082px SIZE=1>
                </div>
            </div>
        </div>
        <div class="addreminderbutton">
            <button class="addreminder" onclick="{location.href='OrderSuccess.jsp'}" </button>
                Confirm
            </button>
        </div>

    </div>
    </div>
</body>

</html>