<%@ page import="classes.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>healthinsurance</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        .blank {
            margin-top: 60px;
            margin-left: auto;
            margin-right: auto;
            width: 1160px;
        }

        .subtitle {
            font-size: 28px;
        }

        .currentplan {
            margin-top: 38px;
        }

        .insurance {
            width: 387px;
            height: 149px;
            float: left;
            border: 1px;
            border-style: solid;
            border-color: #BBBBBE;
            text-align: center;

        }

        .insurancedetail {
            display: inline-block;
            width: 500px;
            height: 363px;
            margin-left: 104px;

        }

        .insuranceimg {
            width: 331px;
            text-align: center;
            display: inline-block;
            margin-top: 18px;
        }

        .insurancedetail ul {
            font-size: 28px;
            margin-top: 15px;
        }

        .changemyplan {
            height: 77px;
            width: 323px;
            margin-left: 839px;
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
        
        <li class="username">
                
                	<%
    					User user = (User)request.getSession().getAttribute("user");
    					if(user != null)
    						out.write(user.getUsername());
    					else
    						response.sendRedirect("login.jsp?error=session");
    				%>

        </li>
            
            <li class="home">

                <img src="img/index/topright/fa-home.svg" style="vertical-align:-8px" alt="fa-home">
                <a href="index.jsp">Home</a>
            </li>

            <li class="usercenter">                
                    <img src="img/index/topright/mb-user.svg" style="vertical-align:-5px"alt="mb-user">                
                    <a href="usercenter.jsp">User Center</a>                                
            </li >
            
            <li class="logout">
                <img class="s" src="img/index/topright/s.png" style="height:30px;vertical-align:-10px" alt="s">
                <a href="login.jsp">Log out</a>
            </li>
 
        </ul>
    </div>
    <div class="blank">
        <div class="subtitle">
            My Current Plan
        </div>
        <div class="currentplan">
            <div class="insurance">
                <img class="insuranceimg" src="img/healthinsurance/insurance/insurance.png" alt="insurance">
            </div>
            <div class="insurancedetail">
                <ul>
                    SYRACUSE UNIVERSITY 19/20
                </ul>
                <ul>
                    OPEN CHOICE
                </ul>
                <ul>
                    GRP: 47000-00-000
                </ul>
                <ul>
                    Issuer: (80840) 00000000
                </ul>
                <ul>
                    ID: 00000000
                </ul>
                <ul>
                    01 Lucy
                </ul>
                <ul>
                    RX BIN# 610502
                </ul>
            </div>
        </div>
        <div class="changemyplan">
            <ul class="button">
                <button class="appoint" onclick="{location.href='recommendinsurance.jsp'}">
                    All Available Plans </button>
            </ul>
        </div>
    </div>

</body>

</html>