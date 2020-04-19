<%@ page import="classes.User" %>

<%--
  Created by IntelliJ IDEA.
  User: liyx1
  Date: 4/9/2020
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
    <style>
        .cle{clear:both;}
        body {
            margin-left: auto;
            margin-right: auto;
            width: 1440px;
            height: 1024px;
        }
        .title1{
            /*padding-top:0px;*/
            padding-bottom:65px;
            padding-left: 5em;
            border-radius:0px;
            border:1px hidden grey;
        }
        .title1 a{
            text-decoration: none;
            /*target:_blank;*/
        }
        .title1 ul,li{
            display:block;
            position:relative;
        }
        .title1 li{
            float:left;
            margin:auto 10px;
            list-style:none;
        }
        .title1 img{
            width:23px;
            height:23px;
        }
        .list {
            padding-bottom:140px;
            border-radius:0px;
            border:1px solid grey;
            border-right-style: hidden;
            border-left-style: hidden;
        }
        .list img{
            float:left;
            width:120px;
            height:auto;
        }
        .list a{
            text-decoration: none;
        }
        .list ul,li{
            display:block;
            position:relative;
        }
        .list li{
            float:left;
            margin:auto 10px;
            list-style:none;
        }
        .WordInList{
            font-size: 120%;
            align:top;
        }
    </style>
    <title>RecommendDoctor</title>
</head>
<body>
    <div class="title1">
        <ul >
            <li><h1 style="color:grey"> Medical Resource Station</h1></li>
            
            
            <li style="float:right;">
                <p><img src="image/appointment/UserCenter.svg" alt="UserCenter" >
                    <a href="usercenter.jsp"> UserCenter</a></p>
            </li>

            <li style="float:right;">
                <p><img src="image/appointment/Home.svg" alt="Home" >
                    <a href="index.jsp"> Home</a></p>
            </li>
            
            <li style="float:right;">
                <p>  |  <img src="image/appointment/User.png" >
                	<%
    					User user = (User)request.getSession().getAttribute("user");
    					if(user != null)
    						out.write(user.getUsername());
    					else
    						response.sendRedirect("login.jsp?error=session");
    				%>
                </p>
            </li>
            
        </ul>
    </div>
    <!--The message about the doctor-->
    <div class="list">
        <ul>
            <li><img src="image/appointment/Doctor1.png" alt="Doctor2" ></li>
            <li>
                <a href="RecommendDoctor.jsp" ><p class="WordInList"><strong>Cold</strong></p></a>
                <p ><small>Headache, sneezing, sore throat, cough, fever, etc.</small></p>
            </li>
        </ul>
    </div>
    <div class="list">
        <ul>
            <li><img src="image/appointment/Doctor1.png" alt="Doctor2" ></li>
            <li>
                <a href="RecommendDoctor.jsp" ><p class="WordInList"><strong>Stomachache</strong></p></a>
                <p ><small>Stomachache, flatulence, gastroenteritis, etc.</small></p>
            </li>
        </ul>
    </div>
    <div class="list">
        <ul>
            <li><img src="image/appointment/Doctor1.png" alt="Doctor3" ></li>
            <li>
                <a href="RecommendDoctor.jsp" ><p class="WordInList"><strong>Pharmacy</strong></p></a>
                <p ><small>Pregnancy, pregnancy physical examination, childbirth, etc.</small></p>
            </li>
        </ul>

    </div>
    <div class="list">
        <ul>
            <li><img src="image/appointment/Doctor2.png" alt="Doctor4" ></li>
            <li>
                <a href="RecommendDoctor.jsp" ><p class="WordInList"><strong>Specialist</strong></p></a>
                <p ><small>Orthopedics, neurology, brain surgery, cardiothoracic surgery and other specialties.</small></p>
            </li>
        </ul>
    </div>
</body>
</html>