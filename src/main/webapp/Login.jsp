<!DOCTYPE html>
<html>
<head>
	<title>Animated Login Form</title>
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<img class="wave" src="css/wave.png">
	<div class="container">
		<div class="img">
			<img src="css/Ementor.png">
		</div>
		<div class="login-content">
			<form action="LoginController" Method="post">
				<img src="css/Login.png">
				<h2 class="title">Login_Here</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   
           		   <select class="form-control" id="role" name="role" style="display:none;" >
                                <option value="student">Student</option>
                                <option value="mentor">Mentor</option>
                            </select>
           		   
           		   <div class="div">
           		   		<h5>Enter Id</h5>
           		   		<input type="email" class="form-control" id="exampleInputEmaill" name= "UserId">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Password</h5>
           		    	<input type="password" class="form-control" id="exampleInputPasswordl" name="Password">
            	   </div>
            	</div>
            	<a href="forgotPassword.jsp">Forgot Password?</a>
            	<input type="submit" class="btn" value="Login">
            	 <a href="Register.jsp">Signup Here</a>
            	
            </form>
        </div>
    </div>
    <script type="text/javascript" src="Scripts/main.js"></script>
</body>
</html>
