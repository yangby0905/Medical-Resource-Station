<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>reportdetail</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        .blank{
            color:#101010;
        }
        .back {
            padding-top: 37px;
            padding-left: 33px;
            height: 58px;
        }
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
            width: 1164px;
            margin-left: 186px;
margin-top:-78px;

        }

        .currentorderdetail {
            width: 1082px;
            height: 442px;
            margin-left: auto;
            margin-right: auto;
            font-size: 20px;

        }

        .subtitle {
            padding-top: 25px;
            font-size: 28px;
            text-align: center;
        }

        .infor {
            height: 142px;
            /*             border-style: solid;
            border-width: 1px;
            border-color: black; */
            width: 1082px;
            margin: 0px;
            padding: 0px;

        }

        .address {
            text-align: center;
            font-size: 28px;
            margin-top: 10px;
        }

        .contactinfo {
            height: 37px;
            padding-top: 20px;
            font-size: 25px;
        }

        .phoneinfo {
            width: 541px;
            height: 37px;
            float: left;
            margin-left: -40px;
        }

        .emailinfo {
            width: 541px;
            height: 37px;
            float: right;
            margin-right: -40px;
        }

        .phoneinfo1 {
            float: right;

        }

        .emailinfo1 {
            float: left;
        }

        .patient {
            padding-top: 90px;
            width: 1200px;
            height: 34px;
        }

        .patientname {
            width: 325px;
            display: inline-block;
        }

        .patientdate {
            width: 325px;
            display: inline-block;
        }
        .items{
            width: 325px;
            display: inline-block;
        }

        .prescription {
            height: 291px;
            margin-top: 36px;
        }

        .prescriptionicon {
            width: 223px;
            height: 291px;
            float: left;
        }

        .prescriptioniconimg {
            width: 223px;
        }

        .prescriptiondetail {
            width: 859px;
            height: 291px;
            float: right;
        }

        .prescriptiondetailtake {
            width: 500px;
            height: 109px;
            padding-top: 36px;
            padding-left: 124px;
            font-size:28px;
        }
        .prescriptiondetailtake ul{
            padding-bottom:5px;
        }
        .doctor{
            margin-top:79px;
            margin-left:842px;
            font-size:28px;
        }
        .report{
            margin-top:15px;
        }
        .reportimg{
            width:923px;
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
            <a href="medicalreport.jsp"><img class="back" src="img/currentorder/back/back.png" alt="back"></a>
        </div>
        <div class="currentorder">
            <div class="currentorderdetail">
                <div>
                    <p class="subtitle">
                        Barnes Center at The Arch
                    </p>
                    <p class="address">
                        111 Test Ave, Syracuse, New York, US, 13210
                    </p>
                    <div class="contactinfo">
                        <ul class="phoneinfo">
                            <ul class="phoneinfo1">
                                Phone: 313-0000000
                            </ul>

                        </ul>
                        <ul class="emailinfo">
                            <ul class="emailinfo1">
                                Email: 1111111@syr.edu
                            </ul>
                        </ul>
                    </div>
                </div>
                <div class="infor">

                    <div class="patient">
                        <ul class="patientname">
                            <ul class="patientname1">
                                Patient Name: Lucy
                            </ul>
                        </ul>
                        <ul class="patientdate">
                            <ul class="patientdate1">
                                Date: 1st May, 2020
                            </ul>
                        </ul>
                        <ul class="items">
                            Items: Routine blood
                        </ul>
                    </div>

                </div>
                <div>
                    <HR class="h" align=center width=1082px SIZE=1>
                </div>
                <div class="report">
                    <img class="reportimg"src="img/reportdetail/report/report.png" alt="report">
                </div>
        </div>
</body>

</html>