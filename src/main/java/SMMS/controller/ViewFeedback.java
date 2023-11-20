package SMMS.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SMMS.dao.Feedback;
import SMMS.user.Feedbackuse;

/**
 * Servlet implementation class ViewFeedback
 */
@WebServlet("/ViewFeedback")
public class ViewFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewFeedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Feedback dao = new Feedback();
        List<Feedbackuse> list = dao.getFeedback();
        
        if (list != null && !list.isEmpty()) {
            request.setAttribute("FeedbackData", list);
       
        } else {
           
            String errorMessage = "No Feedback data available.";
            request.setAttribute("errorMessage", errorMessage);
        }
        RequestDispatcher rd = request.getRequestDispatcher("/ViewFeedback.jsp");
        rd.forward(request, response);

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
