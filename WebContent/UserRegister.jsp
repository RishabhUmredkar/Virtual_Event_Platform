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

<c:if test="${not empty param.first_name and not empty param.last_name and not empty param.email and not empty param.password}">
    <%
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        RegisterUser user = new RegisterUser(first_name, last_name, email, password);

        UserDao ud = new UserDao();

        if (!ud.checkUser(user)) {
            ud.insert(user);
            Cookie c = new Cookie("email", email);
        	response.addCookie(c);
            response.sendRedirect("explore_events.jsp");

        } else {
    %>
            <jsp:include page="sign_in.jsp"/>
            <script>alert("Warning: Passwords did not match!! Please fill details again.");</script>
    <%
        }
    %>
</c:if>

	
<c:if test="${empty cookie.email.value}">
    <c:redirect url="sign_up.jsp" />
</c:if>

</body></html>