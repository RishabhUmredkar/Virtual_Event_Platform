<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>


<%@ page import="Dao.UserDao" %>
<%@ page import="Model.RegisterUser" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>User Registration</title>
</head>
<body>

<%
    // Check if the required parameters are present
    if (!request.getParameterMap().containsKey("first_name") ||
        !request.getParameterMap().containsKey("last_name") ||
        !request.getParameterMap().containsKey("email") ||
        !request.getParameterMap().containsKey("password")) {
        response.sendRedirect("sign_up.jsp");
    } else {
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
      
        System.out.println("hello login");


    	session.setAttribute("email", email);

        RegisterUser user = new RegisterUser(first_name, last_name, email, password);
        UserDao ud = new UserDao();

        if (!ud.checkUser(user)) {
            // Insert the user into the database
            ud.insert(user);
           
            // Set the email cookie
             Cookie c = new Cookie("email", email);
        	 response.addCookie(c);
       
            // Redirect to the explore_events.jsp page
            response.sendRedirect("explore_events.jsp");
        } else {
            // User already exists, redirect to sign_in.jsp with a warning message
            response.sendRedirect("sign_in.jsp?warning=Passwords did not match. Please fill in the details again.");
        }
    }
%>
	
</body></html>