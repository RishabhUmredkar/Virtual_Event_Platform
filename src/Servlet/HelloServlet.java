package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.Online_Event_Ticket_Dao;
import Model.OnlineOrderDetails;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve user and event details from the session
            HttpSession session = request.getSession();
            String email = (String) session.getAttribute("email");

            // Retrieve additional details from the request parameters
            String address = request.getParameter("address");
            String country = request.getParameter("country");
            String state = request.getParameter("state");
            String city = request.getParameter("city");

            // Assuming you have access to an instance of OnlineOrderDetails
            OnlineOrderDetails ticket = new OnlineOrderDetails();
            ticket.setAddress(address);
          
            // Insert data into the database using your Online_Event_Ticket_Dao
            Online_Event_Ticket_Dao dao = new Online_Event_Ticket_Dao();
            int rowsAffected = dao.insertnew(ticket, email);

            if (rowsAffected > 0) {
                System.out.println("Data inserted successfully.");
                // Add any additional logic or response handling if needed
            } else {
                System.out.println("Failed to insert data. No rows affected.");
                // Handle failure scenario if needed
            }
        } catch (ClassNotFoundException | SQLException | NumberFormatException e) {
            e.printStackTrace();
            System.out.println("Failed to insert data. Exception: " + e.getMessage());
            // Handle exceptions appropriately
        }
    }
}
