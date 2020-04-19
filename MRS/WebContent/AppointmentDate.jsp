<%@ page import="classes.User" %>
<%@ page import="classes.Doctor" %>
<%@ page import="java.text.Format" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>

<%--
  Created by IntelliJ IDEA.
  User: liyx1
  Date: 4/14/2020
  Time: 10:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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
        .back1 img{
            width:25px;
            height:auto;
            margin-top: 2%;
            float:left;
        }
        .list1 {
            border:1px hidden #000000;
            /*padding-bottom: 60px;*/
            margin-left: 10%;
            margin-right: 5%;
            margin-top: 5%;
            width: 700px;
        }
        .list1 ul,li{
            display:block;
            position:relative;
            /*margin-left: 10%;*/
        }
        .list1 li{
            list-style:none;
            margin-bottom: 50px;
        }
        .list1 pre{
            font-size: 140%;
        }
        .list1 p{
            font-size: 120%;
        }
        .button1{
            border:1px solid #000000;
            background-color: aqua;
            padding:1em;
            width:9em;
            position: center;
            float:right;
            top:5%;
        }
        .button1 a{
            text-decoration: none;
        }
        .img1 img{
            float:left;
            width:130px;
            height:auto;
        }
    </style>
    <title>AppointmentDate</title>
</head>
<body>
    <div class="title1">
        <ul >
            <li><h1 style="color:grey"> Medical Resource Station</h1></li>
            <li style="float:right;">
                <p>  |  <img src="image/appointment/User.png" >
                	<%
    					User user = (User)request.getSession().getAttribute("user");
    					if(user != null)
    						out.write(user.getUsername());
    					else
    						response.sendRedirect("login.jsp?error=session");
    					Doctor doctor = (Doctor)request.getSession().getAttribute("choice");
    				%>
                </p>
            </li>
            <li style="float:right;">
                <p><img src="image/appointment/UserCenter.svg" alt="UserCenter" >
                    <a href="usercenter.jsp"> UserCenter</a></p>
            </li>
            <li style="float:right;">
                <p><img src="image/appointment/Service.svg" alt="Service" >
                    <a href=""> Service</a></p>
            </li>
            <li style="float:right;">
                <p><img src="image/appointment/Home.svg" alt="Home" >
                    <a href="index.jsp"> Home</a></p>
            </li>
        </ul>
    </div>
    <%--    back_img    --%>
    <div class="back1">
        <ul>
            <a href="DoctorHomePage.jsp">
                <img src="image/appointment/back_img.png" alt="back_img" >
            </a>
        </ul>
    </div>
    <div class="list1" >
        <ul style="margin-bottom: 10%">
            <li class="img1">
                <img src="image/appointment/MaleDoctor1.png" alt="RDoctor1" >
                <img src="image/DoctorHomePage/Heart.png" alt="Heart"
                     style="float: right;width:70px;height:70px;">
            </li>
            <li style="padding-left:160px">
                <p><br><br><strong><%= doctor.getName() %></strong><br>Specialist physician
                    <br><%= doctor.getAddress() %></p>
            </li>
        </ul>
<%--     title:Outpatient service time   --%>
        <ul>
            <li>
                <pre><strong>Choose Appointment Time</strong><hr /></pre>
            </li>
        </ul>
<%--    details    --%>
	<form method="post" action="MakeAppointment">
        <ul>
            <ul style="float:left; width:21em;">
				<li>
					Date: 
					<select name="date">
					<%
						Format f = new SimpleDateFormat("MM/dd/yyyy");					 
			        	Date today = new Date();			 
			        	Calendar c = Calendar.getInstance();
			        	c.setTime(today);
			        	for(int i = 1; i < 15; i++){
			        		c.add(Calendar.DAY_OF_MONTH, 1);		 
			        		Date day = c.getTime();
			        		String choice = f.format(day);
			        %>
			        		<option value="<%= choice %>"><%= choice %></option>
			        <%
			        	}
					%>
					</select>
				</li>
				<li>
					Time: 
					<select name="time">
						<option value="09:00-10:00">09:00-10:00</option>
						<option value="10:00-11:00">10:00-11:00</option>
						<option value="11:00-12:00">11:00-12:00</option>
						<option value="12:00-13:00">12:00-13:00</option>
						<option value="13:00-14:00">13:00-14:00</option>
						<option value="14:00-15:00">14:00-15:00</option>
						<option value="15:00-16:00">15:00-16:00</option>
						<option value="16:00-17:00">16:00-17:00</option>
					</select>
				</li>
            </ul>
            <ul style="float:right; width:11em;">
                <li>
                    <input type="submit" value="Confirm">
                </li>
            </ul>
        </ul>
	</form>
    </div>
</body>
</html>
