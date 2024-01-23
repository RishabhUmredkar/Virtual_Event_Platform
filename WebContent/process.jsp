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
   <% String selectedCategories = request.getParameter("event_category");
        String eventName = request.getParameter("event_name");
    %>

    <h2>Event Name: <%= eventName %></h2>

    <h2>Selected Categories: <%= selectedCategories != null ? selectedCategories : "No categories selected" %></h2>
</body>
</html>
