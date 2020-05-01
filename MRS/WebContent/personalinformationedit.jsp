<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>personalinformationedit</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        .information {
            height: 443px;

        }
        .headnickname {
            float: left;

            height: 600px;
            width: 400px;

            font-size: 30px;
            text-align: center;

        }
        .nickname{
            height:30px;
            width:114px;
            font-size:12px;
        }
        .headimg {
            display: block;
            margin: 60px auto;

        }
        .word {
            float: right;
            height: 443px;
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

        .savebutton {
            
            height: 500px;
            padding-left:1105px;
        }
        
        .input {
 
            width: 356px;
            height: 46px;
/*             margin-top: 24px;
            margin-bottom: 50px; */
           

        }
        select{
            width:200px;
            height:30px;
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
    <div class="information">
        <div class="headnickname">
            <img class="headimg" src="img/usercenter/head/head.jpeg" alt="head">
            <div>           
                <button class="nickname" >
Change a picture
            </button>
        </div>
 
            
            
        </div>
        <div class="word">
            <div>
                <span class="personalinformation">
                    Personal Information</span>

                <HR class="h" align=center width=579 color=black SIZE=1>
                

            </div>
            <div>
                <span class="pi username">User Name</span>
                <input class="input pia" type="text">
                
            </div>
            <div>
                <span class="pi realname">Real Name</span>
                <input class="input pia" type="text">
                
            </div>
            <div>
                <span class="pi gender">Gender</span>
                <select>
                    <option value ="Male">male</option>
                    <option value ="Female">female</option>

                  </select>
                
                
            </div>
            <div>
                <span class="pi birthday">Birthday</span>
                <input class="input pia" type="text">
                
            </div>
            <div>
                <span class="pi address">Address</span>

                <input class="input pia" type="text">
            </div>

        </div>
    </div>
    <div class="savebutton">
        <button class="save" onclick="{location.href='usercenter.jsp'}">
SAVE
        </button>
    </div>
</body>

</html>