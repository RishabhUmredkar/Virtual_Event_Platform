package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.Online_Event_Dao;
import Dao.UserDao;
import Model.OnlineEvent;
import Model.RegisterUser;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve user and event details from the session
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        Integer id = (Integer) session.getAttribute("id");

        // Check if email and id are not null
        if (email != null && id != null) {
            RegisterUser user = null;
            OnlineEvent event = null;

            
                try {
					user = new UserDao().getOneUserByEmail(email);
				} catch (ClassNotFoundException | SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
                try {
					event = new Online_Event_Dao().getOneEvent(id);
				} catch (ClassNotFoundException | SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
         

            // Calculate total
            String quantityParam = request.getParameter("quantity");
            int quantity = 0; // Default value or handle it as needed

            if (quantityParam != null && !quantityParam.isEmpty()) {
                try {
                    quantity = Integer.parseInt(quantityParam);
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                    // Handle the case when the quantity parameter is not a valid integer
                }
            }

            int total = quantity * event.getEvent_price();

            // Set attributes in the request scope
            request.setAttribute("firstName", user.getFirst_name());
            request.setAttribute("lastName", user.getLast_name());
            request.setAttribute("eventName", event.getEvent_name());
            request.setAttribute("eventPrice", event.getEvent_price());
            request.setAttribute("quantity", quantity);
            request.setAttribute("total", total);

            // Forward to the hello.jsp page
            RequestDispatcher dispatcher = request.getRequestDispatcher("hello.jsp");
            dispatcher.forward(request, response);
        } else {
            // Handle the case when email or id is null
            response.sendRedirect("login.jsp"); // Redirect to login page or handle it as needed
        }
    }
}
