package Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            // Retrieve user and event details from the session
            HttpSession session = request.getSession();
            String email = (String) session.getAttribute("email");
            Integer orderId = (Integer) session.getAttribute("orderId");
            System.out.println("orderId: " + orderId);

            // Retrieve additional details from the request parameters
            String address = request.getParameter("address");
            String country = request.getParameter("country");
            String state = request.getParameter("state");
            String city = request.getParameter("city");
            int pinCode = Integer.parseInt(request.getParameter("pinCode"));

            // Retrieve card details from the request parameters
            String card_number = request.getParameter("card_number");
            String expiry_date = request.getParameter("Expiry_date");
            String cvv = request.getParameter("Cvv");

            // Assuming you have access to an instance of OnlineOrderDetails
            // Assuming you have access to an instance of OnlineOrderDetails
            OnlineOrderDetails ticket = new OnlineOrderDetails();
            ticket.setAddress(address);
            ticket.setCountry(country);
            ticket.setState(state);
            ticket.setCity(city);
            ticket.setPinCode(pinCode);

            // Set card details
            ticket.setEventCardNumber(card_number);
            // Parse and set expiry date
            try {
                java.sql.Date sqlExpiryDate = new java.sql.Date(new SimpleDateFormat("MM/yy").parse(expiry_date).getTime());
                ticket.setEventExpiryDate(sqlExpiryDate);

            } catch (ParseException e1) {
                e1.printStackTrace();
            }
            // Parse and set CVV
            ticket.setCvv(Integer.parseInt(cvv));
            
            // Insert data into the database using your Online_Event_Ticket_Dao
            Online_Event_Ticket_Dao dao = new Online_Event_Ticket_Dao();
            int rowsAffected = 0;
			try {
				rowsAffected = dao.insertnew(ticket, orderId);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

            if (rowsAffected > 0) {
                System.out.println("Data inserted successfully.");
                response.sendRedirect("booking_confirmed.jsp");

                // Add any additional logic or response handling if needed
            } else {
                System.out.println("Failed to insert data. No rows affected.");
                // Handle failure scenario if needed
            }
        } 
    }
