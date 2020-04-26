<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signup</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/body.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+SC:100,300,400,500,700,900">
    <style>
        .im>img {
            background-size: contain;
            width: 100%;
            height: auto;
            margin-bottom: -10px;
        }

        .blank {

            background-color: #DFE3E8;
            width: auto;
            height: 930px;
            padding: 0px;
            margin: 0px;


        }

        .signuptitle {
            padding-top: 84px;
            padding-left: 533px;
            font-size: 28px;
            padding-bottom: 12px;
            color: #0A0A0B;
        }

        .signupinfo {
            background-color: #FFFFFF;
            height: 705px;
            width: 628px;
            margin-left: auto;
            margin-right: auto;
            border-style: solid;
            border-width: 1px;
            border-color: #BBBBBB;
        }

        .signupinfo>* {
            color: #7D7B7B;
            display: block;
            font-size: 20px;


        }

 

        .star {
            color: red;
        }

        .input {
            margin-left: auto;
            margin-right: auto;
            width: 380px;
            height: 60px;
            margin-top: 18px;
            margin-bottom: 26px;
            font-size: 30px;

        }

        .signupinfo>div {
            margin-left: 56px;
            margin-top: 38px;
            height: 544px;
            width: 350px;
            padding-top: 20px;
            /*             border-style: solid;
            border-width: 1px;
            border-color: #BBBBBB; */
        }

        .register {
            display: inline-block;
            width: 380px;
            height: 60px;
            font-size: 20px;
            background-color: #0DA9F2;
        }

        .button {
            margin-left: 56px;

        }
    </style>
</head>

<body>
    <div class="title">Medical Resource Station</div>
    <div class="topright">
        
    </div>
    <div class="im">
        <img src="img/signup/background/background.png" alt="background">
    </div>
    <div class="blank">

        <div class="signup">
            <p class="signuptitle"> Create your account</p>
            <div class="signupinfo">
            <form method="post" action="DoctorRegister">
                <div>
                <br><br>
                    <ul>
                        Username
                        <span class="star">*</span>
                    </ul>
                    <input class="input" type="text" name="username">
                    <ul>
                        Email Address <span class="star">*</span>
                    </ul>
                    <input class="input" type="text" name="email">
                    <ul>
                        Password <span class="star">*</span>
                    </ul>
                    <input class="input" type="password" name="password">
                    <ul>
                        Password Confirmation <span class="star">*</span>
                    </ul>
                    <input class="input" type="password" name="confirmation">
                </div>
                <br><br>
                <ul class="button">                    
                    <input type="button" value="Back" onclick="window.location.href='login_.jsp'">
                    &nbsp &nbsp &nbsp &nbsp
                    <input type="submit" value="Register">
                    &nbsp &nbsp &nbsp &nbsp
                    <input type="reset" value="Reset">
                </ul>
			</form>
            </div>
        </div>
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
	if(error == 'username'){
		alert("Username cannot be empty !!!");
	}
	if(error == 'email'){
		alert("Email cannot be empty !!!");
	}
	if(error == 'password'){
		alert("Password cannot be empty !!!");
	}
	if(error == 'different'){
		alert("Passwords not match !!!");
	}
	if(error == 'exist'){
		alert("Username already exists !!!");
	}
</script>