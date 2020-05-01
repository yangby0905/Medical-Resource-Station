<%@ page import="classes.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>recommendinsurance</title>
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
            float: left;
        }

        .subtitle {
            display: inline-block;
            margin-top: 70px;
            font-size: 28px;
            margin-left: 26px;
        }

        .insurance {
            margin-left: 167px;
            margin-right: 167px;
            height: 411px;
            margin-top: 34px;
        }

        .line {
            height: 177px;
            margin-bottom: 57px;
            ;
        }

        .left {
            width: 475px;
            height: 177px;
            float: left;
            border: 1px;
            border-style: solid;
            border-color: #BBBBBE;
            text-align: center;
        }

        .right {
            width: 475px;
            height: 177px;
            float: right;
            border: 1px;
            border-style: solid;
            border-color: #BBBBBE;
            text-align: center;
        }

        .insuranceimg {
            width: 406px;
            margin-top: 18px;
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
        <div>
            <a href="healthinsurance.jsp"><img class="back" src="img/forgotpassword/back/back.png" alt="back"></a>

        </div>
        <div class="subtitle">
            Recommended Insurances
        </div>
        <div class="insurance">
            <div class="line">
                <div class="left">
                    <a href="recommendinsuranceintro.jsp"><img class="insuranceimg"
                            src="img/recommendinsurance/insurance/1.png" alt="insurance"></a>

                </div>
                <div class="right">
                    <a href="recommendinsuranceintro.jsp"><img class="insuranceimg"
                            src="img/recommendinsurance/insurance/2.png" alt="insurance"></a>

                </div>
            </div>
            <div class="line">
                <div class="left">
                    <a href="recommendinsuranceintro.jsp"><img class="insuranceimg"
                            src="img/recommendinsurance/insurance/3.png" alt="insurance"></a>

                </div>
                <div class="right">
                    <a href="recommendinsuranceintro.jsp"><img class="insuranceimg"
                            src="img/recommendinsurance/insurance/4.png" alt="insurance"></a>

                </div>
            </div>
        </div>
    </div>
</body>

</html>