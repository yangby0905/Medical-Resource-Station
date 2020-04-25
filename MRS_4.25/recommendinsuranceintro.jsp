<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>recommendinsuranceintro</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        .back {
            padding-top: 48px;
            padding-left: 48px;
            height: 58px;
    
        }

      
        .insurance {
            margin-left: 167px;
            margin-right: 167px;
            height: 150px;
            margin-top: 56px;
        }



        .insuranceimg {
            width: 406px;
            margin-top: 18px;
        }
        .word{
            margin-left:152px;
            margin-right:152px;
            font-size:33px;
            line-height:50px ;
            margin-top:50px;
        }
        .website{
            margin-left:868px;
            margin-top:76px;
        }
        .appoint {
            display: inline-block;
            height: 77px;
            width: 323px;
            font-size: 28px;
            background-color: #8AD1F2;
            border-color: #BBBBBB;
            border-width: 1px;
            border-radius: 10px;
            box-shadow: 0 0 0 0;
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
        <div>
            <a href="recommendinsurance.jsp"><img class="back" src="img/forgotpassword/back/back.png" alt="back"></a>

        </div>
        <div class="insurance">
            <img class="insuranceimg" src="img/healthinsurance/insurance/insurance.png" alt="insurance">
        </div>
        <div class="word">
            Fonded in 1853 in Hartford, CT, Aetna is committed to providing individuals, employers, health care professionals,
            producers and others with innovative benefits, products and services. Aetna is now a subsidiary company of CVS 
            Health Corporation.
        </div>
        <div class=website>
            <ul class="button">
                <button class="appoint" onclick="{location.href='https://www.aetna.com/'}">
                    Go to the website </button>
            </ul>
        </div>
    </div>
</body>

</html>