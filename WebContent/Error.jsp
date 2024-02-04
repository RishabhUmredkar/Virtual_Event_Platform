<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Error Page</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            background-color: #f7f7f7; /* Light gray background color */
            text-align: center; /* Center-align the text */
        }
        img {
            max-width: 10%; /* Ensure the image doesn't exceed the width of its container */
        }
        h1 {
            display: inline-block; /* Make each letter a block to apply color individually */
        }
        h1 span {
            /* Initial color applied through inline style */
            color: rgb(
                <%= Math.floor(Math.random() * 256) %>,
                <%= Math.floor(Math.random() * 256) %>,
                <%= Math.floor(Math.random() * 256) %>
            );
        }
    </style>
    <script>
        // JavaScript function to update colors periodically
        function updateColors() {
            var spans = document.querySelectorAll('h1 span');
            spans.forEach(function (span) {
                span.style.color = 'rgb(' +
                    Math.floor(Math.random() * 256) + ',' +
                    Math.floor(Math.random() * 256) + ',' +
                    Math.floor(Math.random() * 256) + ')';
            });
        }

        // Call the updateColors function every 1000 milliseconds (1 second)
        setInterval(updateColors, 1000);
    </script>
</head>
<body>
    <img src="Error/error.png" alt="Error Image">
    
    <h1>
        <span>Error</span>
        
        <span> </span>
        <span>aaya</span>
       
        <span> </span>
        <span>hai</span>
        
        <span> </span>
        <span>re</span>
        <span>...........</span>
    </h1>
</body>
</html>
