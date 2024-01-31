<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello Page</title>
</head>
<body>

<%
    Integer insertedId = (Integer) request.getAttribute("insertedId");

    if (insertedId != null) {
        out.print("Inserted ID: " + insertedId);
    } else {
        out.print("No ID available.");
    }
%>

</body>
</html>
