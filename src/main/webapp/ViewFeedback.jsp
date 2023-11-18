<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="SMMS.user.Feedbackuse" %>
<%@ page import="SMMS.dao.Feedback" %>
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
<div class="collapse navbar-collapse" id="navbarSupportedContent">
             <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="ViewStudent">ViewStudent <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="viewCourse.jsp">Courses</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Report.jsp">Reports</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ViewFeedback">View<span class="sr-only">(current)</span></a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
        </form>
        <form action="logout" method="post">
            <button type="submit" class="btn btn-danger">Logout</button>
        </form>
    </div>
</nav>
<!-- End navbar -->

 <div>
    <div align="center">
<h1>Feedback Details</h1>
<table border="1">
<% 
List<Feedbackuse> list = (List)request.getAttribute("FeedbackData");
%>
<tr>
<th>FeedBack ID</th>
<th>Phone no</th>
<th>Email</th>
<th>Message</th>
<th>UserId</th>
</tr>
</center>
<% 
if (list != null) {
    for (Feedbackuse feedback : list) {
%>
    <tr>
        <td><% out.print(feedback.getF_id()); %></td>
        <td><% out.print(feedback.getPhone_no()); %></td>
        <td><% out.print(feedback.getEmail()); %></td>
        <td><% out.print(feedback.getDescription()); %></td>
        <td><% out.print(feedback.getUserId()); %></td>
         
        </tr>
         <%
    }
}
%>

</table>
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
