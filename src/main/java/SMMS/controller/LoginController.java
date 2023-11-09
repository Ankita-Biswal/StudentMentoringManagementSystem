package SMMS.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SMMS.dao.*;
import SMMS.user.*;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginController() {
        super()
}
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String role = request.getParameter("role");
        String UserId = request.getParameter("UserId");
        String Password = request.getParameter("Password");
        HttpSession session = request.getSession();

        if (role != null) {
            if (role.equals("student")||role.equals("mentor")) {
                StudentLogin studentDao = new StudentLogin();
                Student student = null;
                MentorLogin mentorDao = new MentorLogin();
                Mentor mentor = null;
                try {
                    student = studentDao.checkLogin(UserId, Password);
                    mentor = mentorDao.checkLogin1(UserId, Password);
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }

                if (student != null) {
                    session.setAttribute("user", student);
                    response.sendRedirect("StudentHome.jsp");
                }
                    else if(mentor !=null) {
                    session.setAttribute("user", mentor);
                    response.sendRedirect("MentorHome.jsp");
                    
                } else {
                    out.println("<center><p style=color:red>Invalid  UserId or Password!!!....</p></center>");
                    RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
                    rd.include(request, response);
                }
            } 
        } else {
            
            out.println("<center><p style=color:red>Role Not Specified!!!....</p></center>");
            RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
            rd.include(request, response);
        }
    }
}
