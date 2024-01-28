<%@ page import="Model.RegisterUser" %>
<%@ page import="Model.OnlineEvent" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Head content -->
</head>
<body>
    <h3>User Details:</h3>
    <p>First Name: <%= request.getAttribute("firstName") %></p>
    <p>Last Name: <%= request.getAttribute("lastName") %></p>
    <!-- ... Other user details ... -->

    <h3>Event Details:</h3>
    <p>Event Name: <%= request.getAttribute("eventName") %></p>
    <p>Event Price: Rs.<%= request.getAttribute("eventPrice") %></p>
    <!-- ... Other event details ... -->

    <h3>Order Summary:</h3>
    <p>Total Ticket: <%= request.getAttribute("quantity") %></p>
    <p>Sub Total: Rs.<%= request.getAttribute("total") %></p>
    <p>Total: Rs.<%= request.getAttribute("total") %></p>

    <!-- Your form elements -->

</body>
</html>
