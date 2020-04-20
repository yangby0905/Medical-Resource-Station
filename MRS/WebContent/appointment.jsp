<%@ page import="classes.User" %>
<%@ page import="database.DB" %>
<%@ page import="java.sql.*" %>

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
            padding-bottom:200px;
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
    <title>Appointments</title>
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
    <!--The details about the appointments-->
    
    	<% 
    		String un = user.getUsername();
        	try {
        		Connection conn = DB.getConnection();
    			Statement stmt = conn.createStatement();
    			String sql = "SELECT appointment.ID, description, doctor.name, doctor.address, time, status FROM patient INNER JOIN appointment "
    		+ "ON patient.ID = appointment.patientID INNER JOIN doctor ON appointment.doctorID = doctor.ID WHERE patient.username = '"+ un +"'";
    			ResultSet rs = stmt.executeQuery(sql);
    			while(rs.next()){
    	%>
    	
    <div class="list">
        <ul>
            <li><img src="image/appointment/Doctor1.png" alt="Doctor2" ></li>
            <form method="post" action="CancelAppointment">
            <li>
                <p><small>Appointment ID Number: <%= rs.getInt(1) %></small></p>
                <p><small>Appointment Purpose: <%= rs.getString(2) %></small></p>
                <p><small>Doctor Name: <%= rs.getString(3) %></small></p>
                <p><small>Doctor Address: <%= rs.getString(4) %></small></p>
                <p><small>Appointment Time: <%= rs.getString(5) %></small></p>
                <p>
                	<small>Appointment Status: <%= rs.getString(6) %></small>
                	&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                	<%
                		if(rs.getString(6).contentEquals("To be confirmed")){
                	%>
	                	<input type="hidden" name="cancel" value="<%= rs.getInt(1) %>">
	                	<input type="submit" value="Cancel">                	
                	<%
                		}
                	%>                	
                </p>            
            </li>
            </form>
        </ul>
    </div>
    
		<%
    			}
    			stmt.close();
    			conn.close();
        	}
        	catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
        %>
        
</body>
</html>