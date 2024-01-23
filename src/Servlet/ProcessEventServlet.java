package Servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/ProcessEventServlet")
@MultipartConfig
public class ProcessEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("rishabh");

        // Retrieve form data
        String eventName = request.getParameter("event_name");
        String selectedCategories = request.getParameter("event_category");
        String eventDate = request.getParameter("event_date");
        String selectedTime = request.getParameter("event_time");
        String eventDuration = request.getParameter("event_duration");
        String eventDescription = request.getParameter("event_description");
        String eventVenue = request.getParameter("event_venue");
        String eventAddress1 = request.getParameter("event_address1");
        String eventAddress2 = request.getParameter("event_address2");
        String eventCountry = request.getParameter("event_country");
        String eventState = request.getParameter("event_state");
        String eventCity = request.getParameter("event_city");
        String eventPinCode = request.getParameter("event_pin_code");
        String eventPrice = request.getParameter("event_price");
        String eventTotalTickets = request.getParameter("event_total_tickets");

        // Retrieve image file
        Part file = request.getPart("event_image");

        String imageFileName = null;
        String contentDisposition = file.getHeader("content-disposition");
        if (contentDisposition != null) {
            String[] elements = contentDisposition.split(";");
            for (String element : elements) {
                if (element.trim().startsWith("filename")) {
                    imageFileName = element.substring(element.indexOf("=") + 1).trim().replace("\"", "");
                    break;
                }
            }
        }

        String uploadPath = "E:/Coding/new java demo/Virtual_Event_Platform/WebContent/images" + imageFileName;

        try {
            FileOutputStream fos = new FileOutputStream(uploadPath);
            InputStream is = file.getInputStream();

            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Store data in the database
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Virtual_Event_platform",
                    "root", "abc123")) {

                String query = "INSERT INTO Venue_Event_ticket (event_name, event_category, event_date, event_time, event_duration, event_image, event_description, event_venue, event_address1, event_address2, event_country, event_state, event_city, event_pin_code, event_price, event_total_tickets) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

                try (PreparedStatement stmt = connection.prepareStatement(query)) {
                    stmt.setString(1, eventName);
                    stmt.setString(2, selectedCategories);
                    stmt.setDate(3, Date.valueOf(eventDate));
                    stmt.setTime(4, Time.valueOf(selectedTime + ":00")); // Assuming time is in HH:mm format
                    stmt.setInt(5, Integer.parseInt(eventDuration));
                    stmt.setString(6, imageFileName);
                    stmt.setString(7, eventDescription);
                    stmt.setString(8, eventVenue);
                    stmt.setString(9, eventAddress1);
                    stmt.setString(10, eventAddress2);
                    stmt.setString(11, eventCountry);
                    stmt.setString(12, eventState);
                    stmt.setString(13, eventCity);
                    stmt.setInt(14, Integer.parseInt(eventPinCode));
                    stmt.setInt(15, Integer.parseInt(eventPrice));
                    stmt.setInt(16, Integer.parseInt(eventTotalTickets));

                    int row = stmt.executeUpdate(); // it returns no of rows affected.

                    if (row > 0) {
                        System.out.println("Data added into the database successfully.");
                        response.sendRedirect("success.jsp");
                    } else {
                        System.out.println("Failed to add data into the database.");
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    private String extractFileName(Part file) {
        String contentDisposition = file.getHeader("content-disposition");
        if (contentDisposition != null) {
            String[] elements = contentDisposition.split(";");
            for (String element : elements) {
                if (element.trim().startsWith("filename")) {
                    return element.substring(element.indexOf("=") + 1).trim().replace("\"", "");
                }
            }
        }
        return "";
    }
}
