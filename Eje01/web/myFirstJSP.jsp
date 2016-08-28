<%@ page language="java" contentType="text/html; charset=UTF-8" 
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h2>
        Client Information:<br>
        Name: <%= request.getParameter("name")%><br>
        eMail: <%= request.getParameter("email")%><br>
        Forward: <%= request.getParameter("send")%>
        </h2>
    </body>
</html>