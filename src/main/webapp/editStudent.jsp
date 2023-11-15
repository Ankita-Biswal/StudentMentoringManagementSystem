<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="SMMS.dao.StudentLogin" %>
<%@ page import="SMMS.user.Student" %>
<html>
<head>
    <title>Edit Student</title>
    <!-- Your CSS and other header elements -->
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
