<%@ page import="classes.Doctor" %>
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
    <title>Cancelled Appointments</title>
</head>
<body>
    <div class="title1">
        <ul >
            <li><h1 style="color:grey"> Medical Resource Station</h1></li>
            
            
            <li style="float:right;">
                <p><img src="image/appointment/UserCenter.svg" alt="UserCenter" >
                    <a href="usercenter_.jsp"> UserCenter</a></p>
            </li>

            <li style="float:right;">
                <p><img src="image/appointment/Home.svg" alt="Home" >
                    <a href="index_.jsp"> Home</a></p>
            </li>
            
            <li style="float:right;">
                <p>  |  <img src="image/appointment/User.png" >
                	<%
    					Doctor doctor = (Doctor)request.getSession().getAttribute("doctor");
    					if(doctor != null)
    						out.write(doctor.getUsername());
    					else
    						response.sendRedirect("login_.jsp?error=session");
    				%>
                </p>
            </li>
            
        </ul>
    </div>
    <!--The details about the appointments-->
    
    	<% 
    		String un = doctor.getUsername();
        	try {
        		Connection conn = DB.getConnection();
    			Statement stmt = conn.createStatement();
    			String sql = "SELECT appointment.ID, description, patient.name, patient.email, time, status FROM patient INNER JOIN appointment "
    		+ "ON patient.ID = appointment.patientID INNER JOIN doctor ON appointment.doctorID = doctor.ID WHERE doctor.username = '"+ un +"' AND status = 'Cancelled'";
    			ResultSet rs = stmt.executeQuery(sql);
    			while(rs.next()){
    	%>
    	
    <div class="list">
        <ul>
            <li><img src="image/appointment/Doctor1.png" alt="Doctor2" ></li>
 
            <li>
                <p><small>Appointment ID Number: <%= rs.getInt(1) %></small></p>
                <p><small>Appointment Purpose: <%= rs.getString(2) %></small></p>
                <p><small>Patient Name: <%= rs.getString(3) %></small></p>
                <p><small>Patient Email: <%= rs.getString(4) %></small></p>
                <p><small>Appointment Time: <%= rs.getString(5) %></small></p>
                <p>
                	<small>Appointment Status: <%= rs.getString(6) %></small>					               	
                </p>            
            </li>

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