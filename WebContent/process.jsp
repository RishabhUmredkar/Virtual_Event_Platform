<%@ page import="java.io.InputStream" %>
<%@ page import="java.nio.file.Files" %>
<%@ page import="java.nio.file.Paths" %>
<%@ page import="java.nio.file.StandardCopyOption" %>
<%@ page import="java.nio.file.Paths" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Process Event</title>
</head>
<body>
    <h1>Event Details</h1>

    <%-- Retrieve form data from the request --%>
    <% 
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
        String event_image = request.getParameter("event_image");
    %>

    <h2>Event Name: <%= eventName %></h2>
    <h2>Selected Categories: <%= selectedCategories != null ? selectedCategories : "No categories selected" %></h2>
    <h2>Event Date: <%= eventDate != null ? eventDate : "No date selected" %></h2>
    <h2>Selected Time: <%= selectedTime != null ? selectedTime : "No time selected" %></h2>
    <h2>Event Duration: <%= eventDuration != null ? eventDuration + " minutes" : "No duration selected" %></h2>
    <h2>Event Description: <%= eventDescription != null ? eventDescription : "No description provided" %></h2>
    <h2>Event Venue: <%= eventVenue != null ? eventVenue : "No venue provided" %></h2>
    <h2>Event Address: <%= eventAddress1 != null ? eventAddress1 : "" %>, <%= eventAddress2 != null ? eventAddress2 : "" %></h2>
    <h2>Event Country: <%= eventCountry != null ? eventCountry : "No country provided" %></h2>
    <h2>Event State: <%= eventState != null ? eventState : "No state provided" %></h2>
    <h2>Event City: <%= eventCity != null ? eventCity : "No city provided" %></h2>
    <h2>Event Pin Code: <%= eventPinCode %></h2>
    <h2>Event Price: <%= eventPrice %></h2>
    <h2>Total Tickets: <%= eventTotalTickets %></h2>
    <h2>Total event_image: <%= event_image %></h2>
    
    
    
    
    
    
    
   <%--   Part filePart = request.getPart("event_image");
    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String uploadDir = "/WebContent/images/"; // Specify the directory where you want to store the uploaded images

        // Save the uploaded file
        try (InputStream input = filePart.getInputStream()) {
            Files.copy(input, Paths.get(uploadDir, fileName), StandardCopyOption.REPLACE_EXISTING);
        }
    %>

    <!-- Rest of your code to display event details -->
    <h2>Event Image: <%= fileName != null ? fileName : "No image uploaded" %></h2>
     --%>
</body>
</html>
