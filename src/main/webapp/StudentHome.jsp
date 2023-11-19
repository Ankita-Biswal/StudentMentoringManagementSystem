<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="SMMS.user.Student" %>
<%@ page import="java.sql.*" %>
<%@ page import="SMMS.dao.Filedao" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Education Portal</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
    
    <%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0"); // Proxies.
%>
    
    
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
                <a class="nav-link" href="messages.jsp">Messages</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Feedback</a>
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
<div class="container">
    <div align="center">
        <%
    Student student = (Student) session.getAttribute("user");
    if (student!= null) {
    %>
    <h1>Welcome <%= student.getName()%></h1>
    <%
    } %>
    </div>
</div>
<div align="center">
<h1> STUDENT TASKS TO BE DONE</h1>
<table class="table">
    <thead style="background-color: pink;">
      <tr>
        <th scope="col">#</th>
        <th scope="col">Image</th>
        <th scope="col">Task</th>
      </tr>
    </thead>
    <tbody>
   <%Connection con=Filedao.getCon();
      
   PreparedStatement ps=con.prepareStatement("select * from task");
         ResultSet rs=ps.executeQuery();
         
       while(rs.next()){
   %> 
   
     <tr>
        <th scope="row"><%=rs.getInt("id")%></th>
        <%if(rs.getString("files").endsWith(".pdf"))
        	
        	{%>
        	 <td><img alt="" src="images/pdf.png" width="100px" height="100px"></td>
        	<%}
        	else if(rs.getString("files").endsWith(".xls")){%>
        		 <td><img alt="" src="images/xls.png" width="100px" height="100px"></td>
        	<% }
        	else{%>
        		 <td><img alt="" src="images/<%=rs.getString("files")%>" width="100px" height="100px"></td>	
        	<% }
        	%>
       
        <td> <%=rs.getString("task")%></td>
      </tr>
    <% }%>
      
    </tbody>
  </table>
</div>
</body>
</html>
