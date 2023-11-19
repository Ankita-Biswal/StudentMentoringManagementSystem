<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%@ page import="SMMS.user.Mentor" %>
<%@ page import="SMMS.user.Student" %>
<%@ page import="SMMS.dao.Filedao" %>
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
         form label {
    color: black;
    font-size:18px;
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
                <a class="nav-link" href="ViewStudent">ViewStudent <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
<<<<<<< HEAD
                <a class="nav-link" href="#">Student</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="messages.jsp">Messages</a>
=======
                <a class="nav-link" href="viewCourse.jsp">Courses</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Report.jsp">Reports</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ViewFeedback">View<span class="sr-only">(current)</span></a>
>>>>>>> d8b1e76682934d02db26ac66f8c1918e1c97195d
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
    <div class="col-md-12">
        <%
        Mentor mentor = (Mentor) session.getAttribute("user");
        if (mentor != null) {
        %>
        <h1>Welcome <%= mentor.getName()%></h1>
        <%
   
        } %>
<<<<<<< HEAD
    </div>
<!--    <div align="center">
<h1>Student Details</h1>
<table border="1">
<% 
List<Student> list = (List)request.getAttribute("StudentData");
%>
<tr>
<th>UserId</th>
<th>Password</th>
<th>Name</th>
</tr>
<% 
if (list != null) {
    for (Student student : list) {
%>
    <tr>
        <td><% out.print(student.getUserId()); %></td>
        <td><% out.print(student.getPassword()); %></td>
        <td><% out.print(student.getName()); %></td>
    </tr>
<%
    }
}
%>
</table>
</div>-->
=======
   
   </div>     
<div class="container mt-4 style="margin-top: 20px;">
  <div class="row">
    <div class="col-md-12">
      <div class="card"> 
        <div class="card-body"> 
          <p class="text-center fs-3">Image Upload</p>
          <%String message=(String)session.getAttribute("message");
          if(message!=null){%>
        	<h4 class="text-center text-success"><%=message%></h4>  
          <% 
          session.removeAttribute("message");
          }
          %>
          
          <form action="UploadFile" method="post" enctype="multipart/form-data">
            <div class="mb-3">
              <label for="imageInput">Image</label>
              <input type="file" id="imageInput" name="files" class="form-control"> 
            </div>
            <div class="mb-3">
              <label for="taskInput">Task</label>
              <input type="text" id="taskInput" name="task" class="form-control"> 
            </div>
            <div class="text-center">
              <button class="btn btn-primary">Upload</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <table class="table">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">Image</th>
        <th scope="col">Task</th>
        <th scope="col">Action</th>
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
        <td>
         <a href="DeleteFile?id=<%=rs.getInt("id")%>" class="btn btn-sm btn-danger">Delete</a>
        </td>
      </tr>
    <% }%>
      
    </tbody>
  </table>
>>>>>>> d8b1e76682934d02db26ac66f8c1918e1c97195d
</div>

     
     
     
     </div>
     
     </div>
</body>
</html>
