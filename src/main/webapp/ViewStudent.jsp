<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="SMMS.user.Mentor" %>
<%@ page import="SMMS.user.Student" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Education Portal</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            background-image: linear-gradient(to right top, #e4e7d6, #b8af93, #937758, #6f402a, #480508);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            color: #fff;
        }

        .navbar {
            background-color: #007BFF;
        }

        .container {
            margin-top: 20px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        table, th, td {
            border: 1px solid #fff;
            text-align: center;
        }

        th, td {
            padding: 10px;
        }

        th {
            background-color: #007BFF;
        }

        h1 {
            margin-top: 30px;
        }
    </style>
    
    <script>
        <% 
        String message = (String) request.getAttribute("message");
        if (message != null && !message.isEmpty()) {
        %>
            window.onload = function() {
                alert("<%= message %>");
            }
        <% } %>
    </script>
    
</head>

<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#"><img src="images/Logo.png" height="40" weight="40"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Courses</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Reports</a>
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
<h1>Student Details</h1>
<table border="1">
<% 
List<Student> list = (List)request.getAttribute("StudentData");
%>
<tr>
<th>UserId</th>
<th>Password</th>
<th>Name</th>
<th>Action</th>
<th>Action</th>
</tr>
</center>
<% 
if (list != null) {
    for (Student student : list) {
%>
    <tr>
        <td><% out.print(student.getUserId()); %></td>
        <td><% out.print(student.getPassword()); %></td>
        <td><% out.print(student.getName()); %></td>
             <!-- Update button -->
        <td>
            <a href="editStudent.jsp"class="btn btn-primary">Edit</a>
        </td>
        <td>
            <form action="EditStudent" method="post">
                <input type="hidden" name="UserId" value="<% out.print(student.getUserId()); %>">
                <button type="submit" class="btn btn-danger">Delete</button>
            </form>
        </td>
    </tr>
<%
    }
}
%>

</table>
</div>
</div>
</body>
</html>
