package Servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/OnlineEventServlet")
@MultipartConfig
public class OnlineEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String eventName = request.getParameter("event_name");
        String selectedCategories = request.getParameter("event_category");
        String eventDate = request.getParameter("event_date");
        String eventTime = request.getParameter("event_time");
        int event_duration = Integer.parseInt(request.getParameter("event_duration"));
        String eventDescription = request.getParameter("event_description");

        // Retrieve selected event type
        String selectedEventType = request.getParameter("event_type");
        // Use the selectedEventType value as needed in your application logic

        // Continue with the rest of the code
        String standard_webinar = request.getParameter("standard_webinar");
        String traning_workshop = request.getParameter("traning_workshop");
        String online_classes = request.getParameter("online_classes");
        String talk_show = request.getParameter("talk_show");

        int event_price = Integer.parseInt(request.getParameter("event_price"));
        int event_total_tickets = Integer.parseInt(request.getParameter("event_total_tickets"));
        System.out.println("Event Name: " + eventName);
        System.out.println("Selected Categories: " + selectedCategories);
        System.out.println("Event Date: " + eventDate);
        System.out.println("Event Time: " + eventTime);
        System.out.println("Event Duration: " + event_duration);
        System.out.println("Event Description: " + eventDescription);
        System.out.println("Selected Event Type: " + selectedEventType);
        System.out.println("Standard Webinar: " + standard_webinar);
        System.out.println("Training Workshop: " + traning_workshop);
        System.out.println("Online Classes: " + online_classes);
        System.out.println("Talk Show: " + talk_show);
        System.out.println("Event Price: " + event_price);
        System.out.println("Event Total Tickets: " + event_total_tickets);

        // Retrieve image file
        // Add your logic to handle the image file based on your application requirements

        Part filePart = request.getPart("event_image");
        String originalFileName = getFileName(filePart);
        String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
        String fileName = eventName + "_" + UUID.randomUUID().toString() + fileExtension;
        String uploadPath = "E:/Coding/new java demo/Virtual_Event_Platform/WebContent/Online_Event_Image/" + fileName;
        try (FileOutputStream fos = new FileOutputStream(uploadPath);
             InputStream is = filePart.getInputStream()) {

            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Convert the date string to the MySQL-compatible format
        SimpleDateFormat inputDateFormat = new SimpleDateFormat("MM/dd/yyyy");
        SimpleDateFormat outputDateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            Date parsedDate = inputDateFormat.parse(eventDate);
            eventDate = outputDateFormat.format(parsedDate);
        } catch (ParseException e) {
            e.printStackTrace();
            // Handle the exception or provide feedback to the user
            response.sendRedirect("error.jsp");
            return;
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

                String query = "INSERT INTO Online_Event (event_name, event_category, event_date, event_time, event_duration, event_image, event_description, event_hosting, event_price, event_total_tickets) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

                try (PreparedStatement stmt = connection.prepareStatement(query)) {
                    stmt.setString(1, eventName);
                    stmt.setString(2, selectedCategories);
                    stmt.setString(3, eventDate);
                    stmt.setString(4, eventTime);
                    stmt.setInt(5, event_duration);
                    stmt.setString(6, fileName);
                    stmt.setString(7, eventDescription);
                    stmt.setString(8, selectedEventType); // Assuming selectedEventType corresponds to event_hosting
                    stmt.setInt(9, event_price);
                    stmt.setInt(10, event_total_tickets);

                    // Execute the query
                    int rowsAffected = stmt.executeUpdate();
                    if (rowsAffected > 0) {
                        System.out.println("Event data inserted successfully!");
                        response.sendRedirect("success.jsp");
                    } else {
                        System.out.println("Failed to insert event data.");
                        // Provide feedback to the user about database insertion failure
                        out.println("<p style=\"color: red;\">Failed to add data into the database.</p>");
                    }
                } catch (SQLException e) {
                    e.printStackTrace(); // Handle the exception appropriately in your application
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
