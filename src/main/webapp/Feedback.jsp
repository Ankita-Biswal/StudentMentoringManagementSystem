<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Feedback Page</title>
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
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <!-- Navbar content -->
    <!-- Update the href="#" to link it to the appropriate page -->
</nav>
<!-- End navbar -->

<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header text-center">
                    <i class="fa fa-commenting-o fa-3x"></i>
                    <h4 class="card-title mt-2">Feedback Form</h4>
                </div>
                <div class="card-body">
                   
    <form action="FeedbackController" method="post">
       <label for="inputEmail">Enter UserId:</label>
        <input type="email" class="form-control" id="inputEmail" name="UserId" required >

        <div class="form-group">
            <label for="inputName">Enter Mobile no:</label>
            <input type="text" class="form-control" id="phone_no" name="phone_no" required>
        </div>
        <div class="form-group">
            <label for="inputEmail">Enter Email</label>
            <input type="email" class="form-control" id="inputEmail" name="email" required>
        </div>
        <div class="form-group">
            <label for="inputFeedback">Your Feedback</label>
            <textarea class="form-control" id="inputFeedback" rows="5" name="description" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Submit Feedback</button>
    </form>


                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
