<%@ page import="classes.User" %>
<%@ page import="database.DB" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>prescriptiondetail</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        .blank{
            color:#101010;
        }
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
            padding-top: 25px;
            font-size: 28px;
            text-align: center;
        }

        .infor {
            height: 142px;
            /*             border-style: solid;
            border-width: 1px;
            border-color: black; */
            width: 1082px;
            margin: 0px;
            padding: 0px;

        }

        .address {
            text-align: center;
            font-size: 28px;
            margin-top: 10px;
        }

        .contactinfo {
            height: 37px;
            padding-top: 20px;
            font-size: 25px;
        }

        .phoneinfo {
            width: 541px;
            height: 37px;
            float: left;
            margin-left: -40px;
        }

        .emailinfo {
            width: 541px;
            height: 37px;
            float: right;
            margin-right: -40px;
        }

        .phoneinfo1 {
            float: right;

        }

        .emailinfo1 {
            float: left;
        }

        .patient {
            padding-top: 90px;
            width: 650px;
            height: 34px;
        }

        .patientname {
            width: 325px;
            float: left;
        }

        .patientdate {
            width: 325px;
            float: right;
        }

        .prescription {
            height: 291px;
            margin-top: 36px;
        }

        .prescriptionicon {
            width: 223px;
            height: 291px;
            float: left;
        }

        .prescriptioniconimg {
            width: 223px;
        }

        .prescriptiondetail {
            width: 859px;
            height: 291px;
            float: right;
        }

        .prescriptiondetailtake {
            width: 500px;
            height: 109px;
            padding-top: 36px;
            padding-left: 124px;
            font-size:28px;
        }
        .prescriptiondetailtake ul{
            padding-bottom:5px;
        }
        .doctor{
            margin-top:79px;
            margin-left:842px;
            font-size:28px;
        }
        .list {
        	padding-top:25px;
            padding-bottom:75px;
            border-radius:0px;
            border:1px solid grey;
            border-right-style: hidden;
            border-left-style: hidden;
        }
        .list img{
            float:left;
            width:50px;
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
    <div>
        <HR class="titleh" align=center width=1082px SIZE=1>
    </div>
    <div class="blank">

		<%
			String aID = request.getParameter("appointment");
			int ID = 0;
			if(aID != null)
				ID = Integer.parseInt(aID);
			try {
		    	Connection conn = DB.getConnection();
				Statement stmt = conn.createStatement();
				String sql = "SELECT * FROM prescription WHERE appointmentID = '"+ ID +"'";
				ResultSet rs = stmt.executeQuery(sql);
				while(rs.next()) {					
		%>

	        <div class="list">
		        <ul>
		            <li><img src="img/prescriptiondetail/icon/icon.png" alt="icon"></li>
		            <li>
		                <p>Prescription: <%= rs.getString(3) %></p>
		                <br>
		                <p>Time: <%= rs.getString(4) %></p>           
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

<script> 
	var error = '<%= request.getParameter("error") %>';
	if(error == 'no'){
		alert("The doctor has not given prescription yet !!!");
	}
</script>