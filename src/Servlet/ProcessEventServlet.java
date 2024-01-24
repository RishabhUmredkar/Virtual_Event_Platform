package Servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;
import java.util.UUID;

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
        // Retrieve form data
        String eventName = request.getParameter("event_name");
        String selectedCategories = request.getParameter("event_category");
      
        
        /*  Date eventDate = Date.valueOf(request.getParameter("event_date")); // Assuming the date is in "yyyy-MM-dd" format
        Time eventTime = Time.valueOf(request.getParameter("event_time")); // Assuming the time is in "HH:mm:ss" format
       */ 
        
        String eventDescription = request.getParameter("event_description");
        String eventVenue = request.getParameter("event_venue");
        String eventAddress1 = request.getParameter("event_address1");
        String eventAddress2 = request.getParameter("event_address2");
        String eventCountry = request.getParameter("event_country");
        String eventState = request.getParameter("event_state");
        String eventCity = request.getParameter("event_city");
        int event_duration = Integer.parseInt(request.getParameter("event_duration"));
        int event_pin_code = Integer.parseInt(request.getParameter("event_pin_code"));
        int event_price = Integer.parseInt(request.getParameter("event_price"));
        int event_total_tickets = Integer.parseInt(request.getParameter("event_total_tickets"));

        // Retrieve image file
        Part filePart = request.getPart("event_image");
        String originalFileName = getFileName(filePart);
        String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
        String fileName = eventName + "_" + UUID.randomUUID().toString() + fileExtension;
        String uploadPath = "E:/Coding/new java demo/Virtual_Event_Platform/WebContent/Venue_Event_Image/" + fileName;
        try (FileOutputStream fos = new FileOutputStream(uploadPath);
             InputStream is = filePart.getInputStream()) {

            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Set response content type
        response.setContentType("text/html");
        // Get PrintWriter
        PrintWriter out = response.getWriter();

       
        // Store data in the database
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Virtual_Event_platform",
                    "root", "abc123")) {

                String query = "INSERT INTO Venue_Event_ticket (event_name, event_category, event_duration, event_image, event_description, event_venue, event_address1, event_address2, event_country, event_state, event_city, event_pin_code, event_price, event_total_tickets) VALUES (?, ?, ?, ?,  ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

                try (PreparedStatement stmt = connection.prepareStatement(query)) {
                    stmt.setString(1, eventName);
                    stmt.setString(2, selectedCategories);
                    /*stmt.setDate(3, eventDate);
                    stmt.setTime(4, eventTime);
                    */stmt.setInt(3, event_duration);
                    stmt.setString(4, fileName);
                    stmt.setString(5, eventDescription);
                    stmt.setString(6, eventVenue);
                    stmt.setString(7, eventAddress1);
                    stmt.setString(8, eventAddress2);
                    stmt.setString(9, eventCountry);
                    stmt.setString(10, eventState);
                    stmt.setString(11, eventCity);
                    stmt.setInt(12, event_pin_code);
                    stmt.setInt(13, event_price);
                    stmt.setInt(14, event_total_tickets);

                    int row = stmt.executeUpdate();

                    if (row > 0) {
                        System.out.println("Data added into the database successfully.");
                        response.sendRedirect("success.jsp");
                    } else {
                        System.out.println("Failed to add data into the database.");
                        // Provide feedback to the user about database insertion failure
                        out.println("<p style=\"color: red;\">Failed to add data into the database.</p>");
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle database-related exceptions, e.g., provide feedback to the user
            response.sendRedirect("error.jsp");
        }

       
    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        for (String content : partHeader.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
