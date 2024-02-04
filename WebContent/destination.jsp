<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="Dao.Venue_Event_Dao" %>
<%@ page import="Model.VenueEvent" %>
<%@ page import="Model.OnlineEvent" %>
<%@ page import="Model.Online_Event_Ticket" %>
<%@ page import="Dao.Online_Event_Dao" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.sql.Time" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page errorPage="Error.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>

<%
    // Retrieve the quantity parameter from the request
    String quantity = request.getParameter("quantity");

    // Display the quantity
    out.println("Quantity: " + quantity);

    // Assuming session is of type HttpSession
    HttpSession session1 = request.getSession();

    // Retrieve the attribute "id" from the session
    Integer id = (Integer) session1.getAttribute("id");
    String email = (String) session.getAttribute("email");
  	System.out.println("User login ho gya1 Last.........."+email);   
  	
  	
  	
  	out.print(email);

    // Check if the attribute is present before using it
    if (id != null) {
        // Use the id variable
        out.println("User ID: " + id);
        
        // Retrieve event details based on the user's ID
        Online_Event_Dao OD = new Online_Event_Dao();
        OnlineEvent event = OD.getOneEvent(id);
        System.out.println(event);
    } else {
        // Handle the case when the attribute is not present
        out.println("User ID not found in the session");
    }
%>

</body>
</html>
