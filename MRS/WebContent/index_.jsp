<%@ page import="classes.Doctor" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <link rel="stylesheet" href="css/reset.css">

    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    
    <style>



        .menu a {
            color: #3894FF;
        }

        .im>img {
            background-size: contain;
            width: 100%;
            height: auto;
        }


        .firstline,
        .secondline {
            float: left;
            position: relative;
            left: 50%;

        }



        .firstline li,
        .secondline li {
            float: left;
            height: 280px;
            width: 360px;
            border: 1px;
            border-style: solid;
            margin: 50px;
            position: relative;
            right: 50%;
            border-color: #AEAEAE;
            font-size: 24px;

        }


        .menu img {

            margin: 60px auto;

            display: block;
        }

        .menu {
            text-align: center;
        }

        .blank {
            flex: 1;
            background: white;
            width: auto;
            height: 800px;

        }

        .footer {
            flex: 1;
            background-color: #2D2D2D;
            width: auto;
            height: 414px;
        }

        .information {
            color: white;
            padding-top: 85px;
            float: left;
            padding-left: 112px
        }

        .company {
            font-size: 20px;
        }

        .contact {
            padding-top: 26px;
            font-size: 14px;
        }

        .contact>li {
            padding-bottom: 10px;
        }

        .other {
            float: right;
        }

        .other>ul {
            float: left;
            padding-top: 85px;
            padding-right: 265px;
        }

        .introduce,
        .servicescope {
            color: #AEAEAE;
            font-size: 16px;
        }

        .otherintro,
        .otherservice {
            padding-top: 36px;
        }

        .otherintro>li,
        .otherservice>li {
            padding-bottom: 18px;
            color: white;
            font-size: 14px;
        }

        .searchwrapper {
            float: right;
            width: 379px;
            height: 54px;
            padding: 10px;
            background-color: #EBEBEB;
            border-radius: 30px;
        }

        .searchwrapper>ul {
            float: left;

        }

        /*   .searchtable{
            padding-top:10px;
            line-height:40px;
            BACKGROUND-COLOR: transparent;
            height:40px;
        } */
        .searchinput {
            BACKGROUND-COLOR: transparent;
            border-style: hidden;
            color: #2D2D2D;
            padding-top: 15px;
            font-size: 25px;
            size: 40px;
        }

        .searchicon {
            padding-top: 10px;
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
    <div class="im">
        <img src="img/index/background/background.png" alt="background">

    </div>

    <div class="menu">
        <ul class="firstline">
            <li>
                <img src="img/index/menu/fa-user-md.svg" alt="fa-user-md">
                <a href="Confirmed.jsp">Confirmed Appointments</a>

            </li>
            <li>
                <img src="img/index/menu/fa-medkit.svg" alt="fa-medkit">
                <a href="Pending.jsp">Pending Appointments</a>

            </li>
            <li>
                <img src="img/index/menu/md-local_hospital.svg" alt="md-local_hospital">
                <a href="prescription_.jsp">Prescription</a>

            </li>
        </ul>
        <ul class="secondline">
        	<li>
                <img src="img/index/menu/fa-file-o.svg" alt="fa-file-o">
                <a href="medicalreport_.jsp">Medical Report</a>

            </li>
            <li>
            	<img src="img/index/menu/fa-h-square.svg" alt="fa-h-square">                
                <a href="Cancelled.jsp">Cancelled Appointments</a>

            </li>            
            <li>
                <img src="img/index/menu/fa-question-circle.svg" alt="fa-question-circle">
                <a href="https://www.syracuse.edu/">Customer Service</a>

            </li>
        </ul>

    </div>
    <div class="blank">

    </div>
    <div class="footer">
        <ul class="information">
            <ul class="company">
                <li>
                    XXXXXXXXXXXX Company
                </li>

            </ul>
            <ul class="contact">
                <li>
                    Address: Syracuse University
                </li>
                <li>
                    Phone: +1-3150000000
                </li>
                <li>
                    Email: ood@syr.edu
                </li>
            </ul>
        </ul>
        <ul class="other">
            <ul class="intro">
                <ul class="introduce">
                    <li>
                        Introduce
                    </li>
                </ul>
                <ul class="otherintro">
                    <li>
                        Company introduction
                    </li>
                    <li>
                        Team introduce
                    </li>
                    <li>
                        About us
                    </li>
                </ul>
            </ul>
            <ul class="service">
                <ul class="servicescope">
                    <li>
                        Service scope
                    </li>
                </ul>
                <ul class="otherservice">
                    <li>
                        Product introduction
                    </li>
                    <li>
                        News
                    </li>
                    <li>
                        Service
                    </li>
                </ul>

            </ul>
        </ul>
    </div>


</body>

</html>

<script> 
	var error = '<%= request.getParameter("error") %>';
	if(error == 'remind'){
		alert("Success ! Please wait for the doctor to confirm the appointment !!!");
	}
	if(error == 'search'){
		alert("Please input keywords to search !!!")
	}
</script>