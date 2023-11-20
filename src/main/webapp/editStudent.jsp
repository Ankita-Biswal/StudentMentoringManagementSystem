<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="SMMS.dao.StudentLogin" %>
<%@ page import="SMMS.user.Student" %>
<html>
<head>
    <title>Edit Student</title>
    <!-- Your CSS and other header elements -->
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Custom Styles -->
    <link rel="stylesheet" href="css/style.css">
    <style>
    	body {
		background-image: linear-gradient(to right top, #052137, #243162, #623781, #a82e8a, #eb127a);
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-size: cover;
		color: #fff;
		font-family: Arial, sans-serif;
	}

	.navbar {
		background-color: #272727;
	}

	.navbar a {
		color: #fff;
	}

	.navbar-toggler-icon {
		background-color: #fff;
	}

	.container {
		margin-top: 20px;
	}

	.card {
		border: none;
	}

	.card-header {
		background-color: #272727;
		color: #fff;
	}

	.card-body {
		background-color: #363636;
	}

	.card-title {
		font-size: 24px;
	}

	.form-group {
		margin-bottom: 20px;
	}

	label {
		color: #fff;
	}

	.form-control {
		background-color: #4a4a4a;
		color: #fff;
	}

	.btn-primary {
		background-color: #007BFF;
		border: none;
	}

	.btn-primary:hover {
		background-color: #0056b3;
	}

	.btn-block {
		border: none;
	}

	.fa-user-circle {
		font-size: 36px;
		color: #007BFF;
	}

	.c-head {
		background-color: #272727;
	}
</style>
</head>
<body>
    <h1>Edit Student Details</h1>

    <form action="updateStudent" method="post">
        Enter UserId:<input type="text" name="UserId"><br>
        Update Password:<input type="Password" name="Password"><br>
        Update Name:<input type="Name" name="Name"><br>
        <input type="submit" value="Update">
    </form>
 <button onclick="goBack()">Go back</button>

   <script>
    function goBack() {
    window.history.back();
     }
     </script>
    
</body>
</html>
