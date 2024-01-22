<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>

<%@page import="Dao.UserDao"%>
<%@page import="Model.RegisterUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:if test="${not empty param.email and not empty param.password}">
    <%
        System.out.println("hello login");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        
        
        // Check for admin login
        if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
        	  Cookie c = new Cookie("email", email);
              response.addCookie(c);
              
              // Redirect to the explore_events.jsp page
              response.sendRedirect("create.jsp");
            
        } else {
            // Regular user login check
            RegisterUser user = new RegisterUser(email, password);
            System.out.println("user data: " + user);

            boolean isValidUser = new UserDao().checkUser(user);

            if (isValidUser) {
                // Set the email cookie
                Cookie c = new Cookie("email", email);
                response.addCookie(c);
                
                // Redirect to the explore_events.jsp page
                response.sendRedirect("explore_events.jsp");
            } else {
                System.out.println("Wrong Email and Password!");
                response.sendRedirect("sign_in.jsp");
            }
        }
    %>
</c:if>

</body></html>
