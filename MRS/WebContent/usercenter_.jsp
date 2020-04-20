<%@ page import="classes.Doctor" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">

    <style>
        .information {
            height: 300px;

        }
        .headnickname {
            float: left;

            height: 600px;
            width: 400px;

            font-size: 30px;
            text-align: center;

        }
        .headimg {
            display: block;
            margin: 60px auto;

        }
        .word {
            float: right;
            height: 300px;
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
        .edit {
            font-size: 20px;
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

        .icon {
            float: right;
            height: 500px;
        }
        .icon div {
            float: left;
            position: relative;
            right: 8%;
            margin: 50px;
            height: 400px;
            width: 200px;
        }

        .icon img {
            margin: auto;

            display: block;
        }

        .icon ul {
            text-align: center;
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
                <a href="login.jsp_">Log out</a>
            </li>
            
        </ul>
    </div>
    
  <form method="post" action="DoctorUpdate">
    <div class="information">
        <div class="headnickname">
            <img class="headimg" src="img/usercenter/head/head.jpeg" alt="head">
            <%= doctor.getName() %>
        </div>
        <div class="word">
            <div>
                <span class="personalinformation">Personal Information</span>
				<br>
                <HR class="h" align=center width=250 color=black SIZE=1>
                <input class="edit" type="submit" value="edit">
                <input type="reset" value="clear">
            </div>
            <div>
                <span class="pi realname">Real Name</span>
                <%= doctor.getName() %>
                &nbsp &nbsp &nbsp &nbsp &nbsp
                <input type="text" name="realname">
            </div>
            <div>
                <span class="pi age">Age</span>
                <%= doctor.getAge() %>
                &nbsp &nbsp &nbsp &nbsp &nbsp
                <input type="text" name="age">
            </div>
            <div>
                <span class="pi gender">Gender</span>
                <%= doctor.getGender() %>
                &nbsp &nbsp &nbsp &nbsp &nbsp
                <input type="radio" name="gender" value="Male">Male
                <input type="radio" name="gender" value="Female">Female
            </div>
            <div>
                <span class="pi address">Address</span>
                <%= doctor.getAddress() %>
                &nbsp &nbsp &nbsp &nbsp &nbsp
                <input type="text" name="address">
            </div>
            <div>
                <span class="pi phone">Phone</span>
                <%= doctor.getPhone() %>
                &nbsp &nbsp &nbsp &nbsp &nbsp
                <input type="text" name="phone">
            </div>
            <div>
                <span class="pi email">Email</span>
                <%= doctor.getEmail() %>
                &nbsp &nbsp &nbsp &nbsp &nbsp
                <input type="text" name="email">
            </div>
            <div>
                <span class="pi expertise">Expertise</span>
                <%= doctor.getExpertise() %>
                &nbsp &nbsp &nbsp &nbsp &nbsp
                <input type="text" name="expertise">
            </div>
        </div>
    </div>
  </form>
  <br><br><br><br><br><br><br><br><br><br>
  <HR class="h" align=center width=500 color=black SIZE=1>

</body>

</html>

<script> 
	var error = '<%= request.getParameter("error") %>';
	if(error == 'age'){
		alert("Invalid age !!!");
	}
</script>