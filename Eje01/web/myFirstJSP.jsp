<%@ page language="java" contentType="text/html; charset=UTF-8" 
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Register</title>
    </head>
    <body>
        <%! String vName;%>
        <% vName = request.getParameter("name");%>
        Client information
        <h2>Name: <%= vName%></h2>
        <h2>eMail: <%= request.getParameter("email")%></h2>
        <h2>Forward: <%= request.getParameter("forward")%></h2>
        <% if (vName.toLowerCase().compareTo("tessier") == 0) { %>
            Hello Tessier!
        <%} else { %>
            I don’t know you.
        <%}%>
    </body>
</html>