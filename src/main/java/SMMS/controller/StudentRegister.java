package SMMS.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import SMMS.dao.StudentRegisterdao;
import SMMS.user.Student;

@WebServlet("/StudentRegister")
public class StudentRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        RequestDispatcher rd = null;

        String userId = request.getParameter("UserId");
        String password = request.getParameter("Password");
        String name = request.getParameter("Name");
        Student student = new Student();
        student.setUserId(userId);
        student.setPassword(password);
        student.setName(name);

        StudentRegisterdao dao = new StudentRegisterdao();

        try {
            boolean isRegistered = dao.AddStudent(student);

            if (isRegistered) {
                out.println("<center><p style=color:black>Registration Successful!!!!</p></center>");
                rd = request.getRequestDispatcher("/Login.jsp");
                rd.forward(request, response);
            } else {
                out.println("<center><p style=color:red>Invalid data!!!....Register again</p></center>");
                rd = request.getRequestDispatcher("/Register.jsp");
                rd.include(request, response);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
