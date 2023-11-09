<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Password Reset</title>
</head>
<body>
    <form action="forgot" method="post">
        Enter UserId:<input type="text" name="UserId"><br>
        Enter Password:<input type="Password" name="Password"><br>
        Confirm Password:<input type="Password" name="cPassword"><br>
        <input type="submit" value="Reset Password">
    </form>
</body>
</html>
