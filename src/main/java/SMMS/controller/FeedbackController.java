package SMMS.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SMMS.dao.Feedback;
import SMMS.user.Feedbackuse;

@WebServlet("/FeedbackController")
public class FeedbackController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public FeedbackController() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String phone_no = request.getParameter("phone_no");
        String email = request.getParameter("email");
        String description = request.getParameter("description");
        String UserId=request.getParameter("UserId");
        Feedbackuse feedback = new Feedbackuse();
        feedback.setPhone_no(phone_no);
        feedback.setEmail(email);
        feedback.setDescription(description);
        feedback.setUserId(UserId);
        Feedback feedbackDao = new Feedback();
        boolean isFeedbackSubmitted;
		try {
			isFeedbackSubmitted = feedbackDao.submitFeedback(feedback);
			 if (isFeedbackSubmitted) {
		            out.println("<center><p style='color:green'>Feedback Submitted successfully!</p></center>");
		            RequestDispatcher rd = request.getRequestDispatcher("/Feedback.jsp");
		            rd.include(request, response);
		        } else {
		            out.println("<center><p style='color:red'>Error in Submitting Feedback</p></center>");
		            RequestDispatcher rd = request.getRequestDispatcher("/Feedback.jsp");
		            rd.include(request, response);
		        }
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}

    }
}
