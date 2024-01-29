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
import Dao.Online_Event_Ticket_Dao;
import Dao.UserDao;
import Model.OnlineEvent;
import Model.OnlineOrderDetails;
import Model.RegisterUser;
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
            int pinCode = Integer.parseInt(request.getParameter("pinCode"));

            // Assuming you have access to an instance of OnlineEventTicketBook
            OnlineOrderDetails ticket = new OnlineOrderDetails();
            ticket.setEmail(email);
            ticket.setAddress(address);
            ticket.setCountry(country);
            ticket.setState(state);
            ticket.setCity(city);
            ticket.setPinCode(pinCode);

            // Insert data into the database using your Online_Event_Ticket_Dao
            Online_Event_Ticket_Dao dao = new Online_Event_Ticket_Dao();
            int rowsAffected = dao.insert(ticket);

            if (rowsAffected > 0) {
                System.out.println("Data inserted successfully.");
                // Add any additional logic or response handling if needed
            } else {
                System.out.println("Failed to insert data.");
                // Handle failure scenario if needed
            }
        } catch (ClassNotFoundException | SQLException | NumberFormatException e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        }
    }
}
