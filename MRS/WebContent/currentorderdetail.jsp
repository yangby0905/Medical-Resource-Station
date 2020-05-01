<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>currentorderdetail</title>
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

        .hide {
            display: none;
            /* 默认隐藏 */
            /*生成绝对定位的元素，相对于浏览器窗口进行定位。*/
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            /*设置弹窗位置*/
            padding-top: 200px;
            padding-bottom: 300px;
            /*浮在全屏上*/
            width: 100%;
            height: 100%;
            /*overflow：auto；如果内容被修剪，则浏览器会显示滚动条，以便查看其余内容。*/
            overflow: auto;



        }

        @-webkit-keyframes animatetop {
            from {
                top: -200px;
                opacity: 0
            }

            to {
                top: 0;
                opacity: 1
            }

        }

        @keyframes animatetop {
            from {
                top: -200px;
                opacity: 0
            }

            to {
                top: 0;
                opacity: 1
            }
        }

        .hidecontent {
            /*position: relative;
        /*弹窗背景色设置*/
            background-color: #fefefe;
            margin: auto;
            padding: 200px auto;
            width: 671px;
            height: 367px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            -webkit-animation-name: animatetop;
            -webkit-animation-duration: 0.4s;
            animation-name: animatetop;
            animation-duration: 0.4s
        }

        .left {
            height: 367px;
            width: 116px;

            float: left;
        }

        .right {
            height: 367px;
            width: 555px;
          
            float: right;
        }

        .check {
            padding-left: 50px;
            padding-top: 62px;
        }

        .checkimg {
            height: 35px;
        }

        .addsuccesstitle {
            padding-top: 67px;
            font-size:20px;
        }
      .addsuccesscontent{
          font-size:20px;
          padding-top:50px;
      }
      .ok{
          padding-left:360px;
          padding-top:100px;
      }
      .okbutton{
        display: inline-block;
            width: 100px;
            height: 50px;
            font-size: 20px;
            background-color: #1890FF;
            color:white;
      }
    </style>
    <script type="text/javascript">
        function openwindow() {
            //获取弹窗得div
            var hide = document.getElementById('hidden');
            // 获取 <span> 元素，用于关闭弹窗 （X）
            var span = document.getElementsByClassName("close")[0];
            //获取弹窗中得确定按钮
            var ok = document.getElementsByClassName("ok")[0];
            //获取弹窗中得取消按钮
            var no = document.getElementsByClassName("no")[0];
            //窗体弹出
            hide.style.display = "block";

  

            // 在用户点击其他地方时，关闭弹窗
            window.onclick = function (event) {
                //点击窗口外内容，关闭窗口
                if (event.target == hide) hide.style.display = "none";
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
    <div>
        <HR class="titleh" align=center width=1082px SIZE=1>
    </div>
    <div class="blank">
        <div>
            <a href="currentorder.jsp"><img class="back" src="img/currentorder/back/back.png" alt="back"></a>
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
            <button class="addreminder" onclick="openwindow()">
                Add a reminder
            </button>
        </div>
        <div class="hide" id="hidden">
            <div class="hidecontent">
                <div class="left">
                    <div class="check">
                        <img class="checkimg" src="img/currentorderdetail/check/ci-yql-check-circle.svg" alt="check">
                    </div>
                </div>
                <div class="right">
                    <div class="addsuccesstitle">
                        <ul class="addsuccesstitlew">
                            Add reminder successfully!
                        </ul>
                    </div>
                    <div class="addsuccesscontent">
                        <ul class="addsuccesscontentw">
                            You will receive a text message the day
                            before the appointment.
                        </ul>
                    </div>
                    <div class="ok">
                        <button class="okbutton" onclick="{location.href='currentorderdetail.jsp'}">OK</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    </div>
</body>

</html>