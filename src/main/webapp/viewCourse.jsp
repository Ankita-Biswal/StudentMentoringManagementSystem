<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.List" %>
<%@ page import="SMMS.user.TodoDtls" %>
<%@ page import="SMMS.dao.todoDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
		<a class="navbar-brand" href=""><img src="images/Logo.png" height="50" width="80"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
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
				<li class="nav-item active"><a class="nav-link" href="design.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="Login.jsp">Login</a>
				</li>
			</ul>
			 <form action="logout" method="post">
            <button type="submit" class="btn btn-danger">Logout</button>
        </form>
		</div>
	</nav>
	<!-- End navbar -->
	<% 
String message=(String)session.getAttribute("message");
if(message!=null)
	{%>
	<div class="alert alert-success" role="alert">
    <%=message %>
    </div>
	<% 
	session.removeAttribute("message");
	}
%>
	
	<div class="container mt-5">
    <h1 class="text-center text-success mb-4">STUDENT DETAILS</h1>
    <div class="table-responsive">
        <table class="table table-striped table-dark">
            <thead class ="bg-success">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>TODO</th>
                    <th>COURSE</th>
                    <th>ASSIGNMENT</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            
            <% todoDao dao= new todoDao();
            List<TodoDtls>list=dao.getTodo();
            for(TodoDtls t:list){
            %>	
                <tr>
                    <td><%out.print(t.getId());%></td>
                    <td><%out.print(t.getName());%></td>
                    <td><%out.print(t.getTodo());%></td>
                    <td><%out.print(t.getCourse());%></td>
                    <td><%out.print(t.getAssignment());%></td>
                    <td>
                        <a href="editCourse.jsp?id=<%=t.getId()%>" class="btn btn-sm btn-success mr-2">Edit</a>
                        <a href="deleteCourse?id=<%=t.getId()%>" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                </tr>
            
            <% }
            
            %>
        
            
        </table>
    </div>
</div>
	
	
	
	<script
		src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
