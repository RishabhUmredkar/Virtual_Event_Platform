<%@ page import="Model.OnlineOrderDetails" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Head content -->
</head>
<body>
    <%
 

        OnlineOrderDetails orderDetails = (OnlineOrderDetails) request.getAttribute("orderDetails");
        if (orderDetails != null) {
    %>  </p>

    <h3>User Details:</h3>
    <p>First Name: <%= orderDetails.getFirstName() %></p>
    <p>Last Name: <%= orderDetails.getLastName() %></p>
    <p>Email: <%= orderDetails.getEmail() %></p>
    <!-- ... Other user details ... -->

    
    <% } else { %>
        <p>Order details are not available.</p>
    <% } %>
    
</body>
</html>
