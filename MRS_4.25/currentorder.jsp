<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>currentorder</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        HR {
            color: #BBBBBB;
        }
.h{
    margin:0px;
    padding:0px;
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
            height: 124px;
            border-style: solid;
            /*  border-width: 1px; */
            border-color: black;
            width: 1082px;
            margin: 0px;
            padding: 0px;

        }

        .infoleft {
            height: 124px;
            width: 300px;

            float: left;
            padding: 0px;
            margin: 0px;
            
        }

        .infomid {
            height: 124px;
            width: 300px;

            display: inline-block;
        }

        .inforight {
            height: 124px;
            width: 300px;


            float: right;
        }

        .doctor {
            padding-top: 31px;
            color: #101010;
        }

        .doctorname {
            padding-top: 31px;
            color: #0C0D0D;
        }

        .clinictime {
            padding-top: 21px;
            color: #101010;
        }

        .date {
            padding-top: 21px;
            color:#403F3F;
        }

        .viewmore {
            text-align: right;
            padding-top: 57px;
            
        }

        .pagination-bar {
            font-size: 0px;
padding-top:158px;
            text-align: center;
        }

        .pagination-bar a {
            display: inline-block;
            padding: 5px 7.5px;
            text-decoration: none;
            width: 20px;
            height: 20px;
            font-size: 14px;
            border-radius:8px;
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
    <div>
        <HR class="titleh" align=center width=1082px SIZE=1>
    </div>
    <div class="blank">
        <div>
            <a href="usercenter.jsp"><img class="back" src="img/currentorder/back/back.png" alt="back"></a>
        </div>

        <div class="currentorder">
            <div class="currentorderdetail">
                <div>
                    <p class="subtitle">
                        Current order
                    </p>

                </div>

                <div>
                    <HR class="h" align=center width=1082px SIZE=1>
                </div>
                <div class="infor">
                    <div class="infoleft">
                        <ul class="doctor">
                            Doctor
                        </ul>
                        <ul class="clinictime">
                            Clinic Time
                        </ul>
                    </div>
                    <div class="infomid">

                        <ul class="doctorname">
                            Mike
                        </ul>
                        <ul class="date">
                            1st May, 2020 Morning
                        </ul>
                    </div>
                    <div class="inforight">
                        <ul class="viewmore">
                            <a href="currentorderdetail.jsp">View More</a>

                        </ul>
                    </div>
                </div>
                <div>
                    <HR class="h" align=center width=1082px SIZE=1>
                </div>
                <div class="infor">
                    <div class="infoleft">
                        <ul class="doctor">
                            Doctor
                        </ul>
                        <ul class="clinictime">
                            Clinic Time
                        </ul>
                    </div>
                    <div class="infomid">

                        <ul class="doctorname">
                            Mike
                        </ul>
                        <ul class="date">
                            1st May, 2020 Morning
                        </ul>
                    </div>
                    <div class="inforight">
                        <ul class="viewmore">
                            <a href="currentorderdetail.jsp">View More</a>

                        </ul>
                    </div>
                </div>
                <div>
                    <HR class="h" align=center width=1082px SIZE=1>
                </div>
                <div class="infor">
                    <div class="infoleft">
                        <ul class="doctor">
                            Doctor
                        </ul>
                        <ul class="clinictime">
                            Clinic Time
                        </ul>
                    </div>
                    <div class="infomid">

                        <ul class="doctorname">
                            Mike
                        </ul>
                        <ul class="date">
                            1st May, 2020 Morning
                        </ul>
                    </div>
                    <div class="inforight">
                        <ul class="viewmore">
                            <a href="currentorderdetail.jsp">View More</a>

                        </ul>
                    </div>
                </div>
                <div>
                    <HR class="h" align=center width=1082px SIZE=1>
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

    </div>
</body>

</html>