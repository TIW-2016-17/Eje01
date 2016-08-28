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
     
        <% vName = request.getParameter("name");
        String lastName = null;
        Object oLast = session.getAttribute("lastName");
        if (oLast != null) {
            lastName = (String) oLast;
        }
        %>
        Client information
        <h2>Name: <%=vName%></h2>
        <h2>eMail: <%=request.getParameter("email")%></h2>
        <h2>Forward: <%=request.getParameter("forward")%></h2>

        <% 
           if (lastName != null) {
                 if (lastName.toLowerCase().compareTo(vName) == 0) {%>
                    Hello <%= vName%>!
                 <% }
                else { %>
                    I don’t know you.
                 <% }
           } %>

        <% session.setAttribute("lastName", vName); %>



    </body>
</html>