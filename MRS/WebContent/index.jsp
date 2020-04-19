<%@ page import="classes.User" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/body.css">
    <style>
        body {
            width: 1440px;
            margin-right: auto;
            margin-left: auto;
        }


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
            <li class="home">
                
                    <img src="img/index/topright/fa-home.svg" style="vertical-align:-8px"alt="fa-home">
               
                
                    <a href="index.jsp">Home</a>
                
                
            </li>
            <li class="service">
                
                    <img src="img/index/topright/mb-book.svg" style="vertical-align:-5px"alt="mb-book">
               
                    <a href="">Service</a>
                
                
            </li>
            <li class="usercenter">
                
                    <img src="img/index/topright/mb-user.svg" style="vertical-align:-5px"alt="mb-user">
                
                    <a href="usercenter.jsp">User Center</a>
                
                
            </li >
            <li class="username">
                <img class="s"src="img/index/topright/s.png" style="height:30px;vertical-align:-10px" alt="s">
                
                	<%
    					User user = (User)request.getSession().getAttribute("user");
    					if(user != null)
    						out.write(user.getUsername());
    					else
    						response.sendRedirect("login.jsp?error=session");
    				%>
                
            </li>
            
        </ul>
    </div>
    <div class="im">
        <img src="images/2/1/v2_q6llpz.png" alt="Doctor2">
    </div>
    <div class="searchwrapper">
        <ul>
            <img class="searchicon" src="img/index/search/md-search.svg" alt="search">
        </ul>
        <form method="post" action="SearchDoctor">
        <ul>			
            	<input class="searchinput" type="text" name="keyword" aria-label="Search" placeholder="Search Doctor">
            	<br>
            	Search by 
            	<select name="criteria">
            		<option value="name">name</option>
            		<option value="address">address</option>
            		<option value="expertise">expertise</option>
            	</select>
            	&nbsp &nbsp &nbsp
            	<input type="submit" value="Search">            
        </ul>
        </form>


    </div>
    <div class="menu">
        <ul class="firstline">
            <li>
                <img src="img/index/menu/fa-user-md.svg" alt="fa-user-md">
                <a href="RecommendDoctor.jsp">Make An Appointment</a>

            </li>
            <li>
                <img src="img/index/menu/fa-medkit.svg" alt="fa-medkit">
                <a href="">Prescription</a>

            </li>
            <li>
                <img src="img/index/menu/md-local_hospital.svg" alt="md-local_hospital">
                <a href="">Online Inquiry</a>

            </li>
        </ul>
        <ul class="secondline">
            <li>
                <img src="img/index/menu/fa-file-o.svg" alt="fa-file-o">
                <a href="">Medical Report</a>

            </li>
            <li>
                <img src="img/index/menu/fa-h-square.svg" alt="fa-h-square">
                <a href="">Health Insurance</a>

            </li>
            <li>
                <img src="img/index/menu/fa-question-circle.svg" alt="fa-question-circle">
                <a href="">Customer Service</a>

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