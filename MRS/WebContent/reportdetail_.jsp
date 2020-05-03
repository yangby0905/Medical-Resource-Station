<%@ page import="classes.Doctor" %>
<%@ page import="database.DB" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>prescription</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
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
            width: 1164px;
            margin-left: 186px;


        }

        .currentorderdetail {
            width: 1082px;
            height: 442px;
            margin-left: auto;
            margin-right: auto;
            font-size: 20px;

        }

        .subtitle {
            font-size: 28px;
            padding-bottom: 5px;
        }

        .infor {
            height: 150px;
            /*             border-style: solid;
            border-width: 1px;
            border-color: black; */
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



        .inforight {
            height: 124px;
            width: 300px;


            float: right;
        }

		.id {
            padding-top: 10px;
            color: #101010;
            font-size: 18px;
        }

        .date {
            padding-top: 10px;
            color: #101010;
            font-size: 18px;
        }

		.name {
            padding-top: 10px;
            color: #101010;
            font-size: 18px;
        }

        .address {
            padding-top: 10px;
            color: #101010;
            font-size: 18px;
        }

        .viewmore {
            text-align: right;
            padding-top: 73px;

        }

        .pagination-bar {
            font-size: 0px;
            padding-top: 273px;
            text-align: center;
        }

        .pagination-bar a {
            display: inline-block;
            padding: 5px 7.5px;
            text-decoration: none;
            width: 20px;
            height: 20px;
            font-size: 14px;
            border-radius: 8px;
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

        .viewdetailbutton {
            background-color: #8AD1F2;
            width: 208px;
            height: 48px;
            font-size: 20px;
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
    					Doctor doctor = (Doctor)request.getSession().getAttribute("doctor");
    					if(doctor != null)
    						out.write(doctor.getUsername());
    					else
    						response.sendRedirect("login_.jsp?error=session");
    				%>

        </li>
            
            <li class="home">

                <img src="img/index/topright/fa-home.svg" style="vertical-align:-8px" alt="fa-home">
                <a href="index_.jsp">Home</a>
            </li>

            <li class="usercenter">                
                    <img src="img/index/topright/mb-user.svg" style="vertical-align:-5px"alt="mb-user">                
                    <a href="usercenter_.jsp">User Center</a>                                
            </li >
            
            <li class="logout">
                <img class="s" src="img/index/topright/s.png" style="height:30px;vertical-align:-10px" alt="s">
                <a href="login_.jsp">Log out</a>
            </li>
 
        </ul>
    </div>
    <div>
        <HR class="titleh" align=center width=1082px SIZE=1>
    </div>
    <div class="blank">
    		<%
			String aID = request.getParameter("report_");
			int ID = 0;
			if(aID != null)
				ID = Integer.parseInt(aID);
		%>	
        <div>
            <a href="medicalreport_.jsp"><img class="back" src="img/currentorder/back/back.png" alt="back"></a>
        </div>

        <div class="currentorder">
		<%
			String un = doctor.getUsername();
        	try {
        		Connection conn = DB.getConnection();
    			Statement stmt = conn.createStatement();
    			System.out.println(ID);
    			String sql = "SELECT clinic.name, clinic.address, clinic.phone, clinic.email, patient.name, time, item, status, report FROM record INNER JOIN patient ON record.patientID = patient.ID INNER JOIN doctor ON record.doctorID = doctor.ID INNER JOIN clinic ON record.doctorID = clinic.doctorID WHERE record.ID = '"+ ID +"'";
    			ResultSet rs = stmt.executeQuery(sql);
    			System.out.println(rs.getString(1));
    			//clinic.name, clinic.address, clinic.phone, clinic.email,
    	%>
    	            <div class="currentorderdetail">
                <div>
                    <p class="subtitle">
                        <%= rs.getString(1) %>
                    </p>
                    <p class="address">
                        <%= rs.getString(2) %>
                    </p>
                    <div class="contactinfo">
                        <ul class="phoneinfo">
                            <ul class="phoneinfo1">
                                Phone: <%= rs.getString(3) %>
                            </ul>

                        </ul>
                        <ul class="emailinfo">
                            <ul class="emailinfo1">
                                Email: <%= rs.getString(4) %>
                            </ul>
                        </ul>
                    </div>
                </div>
                <div class="infor">

                    <div class="patient">
                        <ul class="patientname">
                            <ul class="patientname1">
                                Patient Name: <%= rs.getString(5) %>
                            </ul>
                        </ul>
                        <ul class="patientdate">
                            <ul class="patientdate1">
                                Time: <%= rs.getString(6) %>
                            </ul>
                        </ul>
                        <ul class="items">
                            Item: <%= rs.getString(7) %>
                        </ul>
                    </div>

                </div>
                <div>
                    <HR class="h" align=center width=1082px SIZE=1>
                </div>
                <div class="report">
                    <img id="img" class="reportimg" src="img/reportdetail/report/report.png" alt="report"><%= rs.getBinaryStream(1) %></img>
                </div>
        </div>
		<%
    			stmt.close();
    			conn.close();
        	}
        	catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}
        %>

            </div>
        </div>

    </div>
</body>

</html>