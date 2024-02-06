<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.OnlineOrderDetails" %>
<%@ page import="Dao.Online_Event_Ticket_Dao" %>

<html>
<head>
    <title>Hello Page</title>
</head>
<body>

<%
    String email = (String) session.getAttribute("email");

    if (email != null && !email.isEmpty()) {
        Online_Event_Ticket_Dao dao = new Online_Event_Ticket_Dao();
        List<OnlineOrderDetails> orderDetailsList;

            orderDetailsList = dao.getOneUser(email);
      
        out.println("<h2>Order Details</h2>");

        for (OnlineOrderDetails orderDetails : orderDetailsList) {
            out.println("<p>Order ID: " + orderDetails.getId() + "</p>");
            out.println("<p>First Name: " + orderDetails.getFirstName() + "</p>");
            out.println("<p>Last Name: " + orderDetails.getLastName() + "</p>");
            out.println("<p>Email: " + orderDetails.getEmail() + "</p>");
            out.println("<p>Address: " + orderDetails.getAddress() + "</p>");
            // Add other properties as needed
            out.println("<p>Card Number: " + orderDetails.getEventCardNumber() + "</p>");
            out.println("<p>Expiry Date: " + orderDetails.getEventExpiryDate() + "</p>");
            out.println("<p>CVV: " + orderDetails.getCvv() + "</p>");
            out.println("<hr/>");
        }
    } else {
        response.sendRedirect("sign_up.jsp");
    }
%>

</body>
</html>
