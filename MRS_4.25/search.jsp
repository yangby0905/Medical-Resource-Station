<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>search</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        .searchwrapper {
            /* float: right; */
            width: 379px;
            height: 54px;
            margin-left: 82px;
            background-color: #EBEBEB;
            border-radius: 20px;
            margin-top: 33px;

        }

        .titleh {
            margin-top: 20px;
        }

        .up {
            height: 312px;
            border-style: solid;
            border: 1px;
            border-color: #BBBBBE;

        }



        .searchwrapper>ul {
            display: inline-block;
            padding-top: -30px;

        }


        .searchinput {
            BACKGROUND-COLOR: transparent;
            border-style: hidden;
            color: #2D2D2D;
            margin-top: -33px;
            margin-left: 17px;
            position: absolute;
            font-size: 18px;
            size: 40px;
        }

        .searchicon {
            padding-top: 10px;
            padding-left: 30px
        }

        .recomhospital {
            height: 156px;
            width: 1276px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 50px;
        }

        .recomdoctor {
            height: 355px;
            width: 1276px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 42px;
        }

        .subtitle {
            font-size: 28px;
        }



        .hospitalimg {
            width: 75px;

        }

        .doctorimg {
            width: 94px;
        }

        .dimg {
            width: 94px;
            display: inline-block;
        }

        .himg {

            width: 75px;

            display: inline-block;
        }

        .recomhospital1 {
            padding-top: 28px;
            height: 79px;
        }

        .recomdoctor1 {
            padding-top: 45px;
            height: 117px;
        }

        .hword {
            float: right;
            height: 79px;
            width: 1180px;
            padding-left: 14px;
        }

        .dword {
            display: inline-block; 
            /* float:right; */
            width: 863px;
            height: 117px;
            padding-left: 14px;
        }

        .address {
            font-size: 22px;
        }

        .firaddress {
            padding-top: 8px;
        }

        .name {
            padding-top: 8px;
        }

        .doctorname {
            font-size: 22px;
            display: inline-block;
        }

        .doctoraddress {
            padding-top: 8px;
        }
        .advantage{
            padding-top: 8px;
        }
        .advantagedetail {
            font-size: 16px;
        }
        .doctoraddressdetail {
            font-size: 16px;
        }

        .secaddress {
            padding-top: 18px;
        }

        .addressdetail {
            font-size: 16px;
        }
        .job{
            display: inline-block;
            padding-left:8px;
            font-size:16px;
        }
        .makeanappointement{
            width:208px;
            height:48px;
            float:right;
            margin-right:93px; 
             margin-top: 30px;
            
        }
        .appoint {
            display: inline-block;
            width:208px;
            height:48px;
            font-size: 16px;
            background-color: #8AD1F2;
            border-color: #BBBBBB;
            border-width: 1px;
            border-radius: 10px;
            box-shadow: 0 0 0 0;
        }
        .pagination-bar {
            font-size: 0px;
            padding-top: 273px;
            text-align: center;
        }

        .pagination-bar a {
            display: inline-block;
            padding: 5px 7.5px;
            text-decoration: none;
            width: 20px;
            height: 20px;
            font-size: 14px;
            border-radius: 8px;
        }

        .pagination-bar a:not(.disabled) {
            background-color: #FFF;
            color: #595959;

        }

        .pagination-bar a.disabled {
            background-color: #1890FF;
            color: #FFF;

        }


        .page-prev {
            border-radius: 15px 0px 0px 15px;
        }

        .page-next {
            border-radius: 0px 15px 15px 0px
        }

        .pagination-bar span:not(.active) {
            display: inline-block;
            padding: 5px 7.5px;
            font-size: 14px;
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
    <div class="blank">

    </div>

    <div class="searchwrapper">
        <ul>
            <a href="search.jsp"><img class="searchicon" src="img/index/search/md-search.svg" alt="search"></a>
        </ul>
        <ul>
            <input class="searchinput" type="text" aria-label="Search" placeholder="Search">
        </ul>
    </div>
    <div class="recomhospital">
        <div>
            <ul class="subtitle">
                Recommended hospital
            </ul>
        </div>
        <div class="recomhospital1">
            <div class="himg">
                <ul class="hospital">
                    <img class="hospitalimg" src="img/search/hospital/hospital.png" alt="hospital">
                </ul>
            </div>
            <div class="hword">
                <div class="firaddress">
                    <ul class="address">
                        Barnes Center
                    </ul>
                </div>
                <div class="secaddress">
                    <ul class="addressdetail">
                        Barnes Center at The Arch 150 Sims Drive, Syracuse, NY, 13244 | 315.443.8000
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="recomdoctor">
        <div>
            <ul class="subtitle">Recommended Doctor</ul>
        </div>
        <div class="recomdoctor1">
            <div class="dimg">
                <ul class="doctor">
                    <img class="doctorimg" src="img/search/doctor/Amani.png" alt="doctor">
                </ul>
            </div>
            <div class="dword">
                <div class="name">
                    <ul class="doctorname">
                        Amani
                    </ul>
                    <ul class="job">
                        Family doctor
                    </ul>
                </div>
                <div class="doctoraddress">
                    <ul class="doctoraddressdetail">
                        Barnes Center at The Arch 150 Sims Drive, Syracuse, NY, 13244 | 315.443.8000
                    </ul>
                </div>
                <div class="advantage">
                    <ul class="advantagedetail">
                        Good at upper respiratory infection, asthma and other respiratory diseases
                    </ul>
                </div>
               
            </div>
            <div class="makeanappointement">
                <ul class="button">
                    <button class="appoint"  onclick="{location.href=''}" >
                        Make an appointment
                    </button>
                </ul>
            </div>
            <div>
                <HR class="titleh" align=center width=1082px SIZE=1>
            </div>
            <div class="recomdoctor1">
                <div class="dimg">
                    <ul class="doctor">
                        <img class="doctorimg" src="img/search/doctor/Mike.png" alt="doctor">
                    </ul>
                </div>
                <div class="dword">
                    <div class="name">
                        <ul class="doctorname">
                            Mike
                        </ul>
                        <ul class="job">
                            Family doctor
                        </ul>
                    </div>
                    <div class="doctoraddress">
                        <ul class="doctoraddressdetail">
                            Barnes Center at The Arch 150 Sims Drive, Syracuse, NY, 13244 | 315.443.8000
                        </ul>
                    </div>
                    <div class="advantage">
                        <ul class="advantagedetail">
                            Good at upper respiratory infection, asthma and other respiratory diseases
                        </ul>
                    </div>
                   
                </div>
                <div class="makeanappointement">
                    <ul class="button">
                        <button class="appoint"  onclick="{location.href=''}" >
                            Make an appointment
                        </button>
                    </ul>
                </div>
        </div>
    </div>
    <div class="pagination-bar">
        <a href="#" class="">&lt;</a>
        <a href="#" class="disabled">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">4</a>
        <a href="#">5</a>

        <a href="#" class="page-next">&gt;</a>
    </div>
</body>

</html>