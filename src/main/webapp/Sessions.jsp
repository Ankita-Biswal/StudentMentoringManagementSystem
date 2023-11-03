<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List"%>
<%@ page import="SMMS.user.Message"%>
<%@ page import="SMMS.user.Mentor" %>
<!DOCTYPE html>
<html>
<head>
    <title>Messages</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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

        .message-table {
            width: 100%;
            margin: 20px auto;
        }

        .message-table th, .message-table td {
            text-align: center;
        }

        .message-content {
            padding: 10px;
            border: 1px solid #007BFF;
            background-color: #007BFF;
            color: #fff;
            border-radius: 5px;
        }

        .message-form {
            margin-top: 20px;
        }
    </style>
</head>
<body>
   <div align="center">
<h1>Student Details</h1>
<table border="1">
<% 
List<Message> messages= (List)request.getAttribute("messages");
%>
<tr>
<th>UserId</th>
<th>Content</th>
</tr>
<% 
if (messages != null) {
    for (Message message :messages) {
%>
    <tr>
        <td><% out.print(message.getContent()); %></td>
    </tr>
<%
    }
}
%>
</table>
</div>

        <!-- Add a form for sending messages -->
        <div class="message-form">
            <form action="/ViewMessage" method="post">
                <div class="form-group">
                    <label for="content">Message:</label>
                    <input type="text" class="form-control" id="content" name="content" required>
                </div>
                <button type="submit" class="btn btn-primary">Send Message</button>
            </form>
        </div>
    </div>
</body>
</html>
