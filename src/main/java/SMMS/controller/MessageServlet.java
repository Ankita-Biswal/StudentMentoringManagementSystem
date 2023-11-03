package SMMS.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import SMMS.dao.*;
import SMMS.user.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import SMMS.user.Message;

/**
 * Servlet implementation class MessageServlet
 */
@WebServlet("/Message")
public class MessageServlet extends HttpServlet {
    private MessageDAO messageDAO;

    public void init() {
        messageDAO = new MessageDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        int userId = 1; 
//        String sender_id=request.getParameter("senderId");
//        String receiver_id=request.getParameter("receiverId");
//        List<Message> messages = messageDAO.getMessagesForUser(userId,sender_id,receiver_id);
//        request.getRequestDispatcher("messages.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 int userId = 1; 
//         String senderId=request.getParameter("senderId");
//         String receiverId=request.getParameter("receiverId");
          String content = request.getParameter("content");
         List<Message> messages = messageDAO.getMessagesForUser(userId);
         System.out.println("messages");
         request.setAttribute("messages",messages);
         request.getRequestDispatcher("/messages.jsp").forward(request, response);
    	response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Message message = new Message();
        message.setContent(content);   
        if (message!=null) {
        messageDAO.sendMessage(message);
        request.getRequestDispatcher("/success.jsp");
    }
        else   {
            out.println("<center><p style=color:red>can't send message sorry!!!....</p></center>");
        	response.sendRedirect("/messages.jsp");
        }
}
}

