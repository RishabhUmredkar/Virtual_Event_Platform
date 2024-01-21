<%@page import="Dao.UserDao"%>
<%@page import="Model.RegisterUser"%>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore Events</title>
</head>
<body>

<c:if test="${not empty cookie.email.value}">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 

int id = Integer.parseInt(request.getParameter("id"));
String email= request.getParameter("email");
String pass= request.getParameter("pass");

RegisterUser u =new RegisterUser(id);		
UserDao ud = new UserDao();


		ud.delete(id);
		

%>
Delete User

			
			<jsp:forward page="my_organisation_dashboard_my_user.jsp">
			<jsp:param value="<%=email%>" name="email"/>
			<jsp:param value="<%=pass%>" name="pass"/>
			</jsp:forward>	
				
		






</c:if>
	
<c:if test="${empty cookie.email.value}">
    <c:redirect url="sign_up.jsp" />
</c:if>

</body></html>


