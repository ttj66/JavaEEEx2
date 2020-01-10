<%-- 
    Document   : index
    Created on : 10-Jan-2020, 8:39:39 AM
    Author     : joe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String countList = ""; //li html
    String message = ""; // error message etc
    String start = ""; //hold querry string params start
    String countTo = ""; // hold query countto

    try {
        // get query string params with request object
        message="";
        if (request.getParameter("start") != null) {
            start = request.getParameter("start");

        }
        if (request.getParameter("countTo") != null) {
            countTo = request.getParameter("countTo");

        }
        if (!start.equals("") && !countTo.equals("")) {
            int startInt = Integer.parseInt(start);
            int countToInt = Integer.parseInt(countTo);
            // busssiness rule broken, throw an exception
             for( int i = startInt; i < countToInt ; i++){
                 countList += "<li>" + Integer.toString(i) +"</li>";
                }
        } else {
            message = "No query string parameter present";
        }
    } catch (Exception e) {
        message = "<p style='color:red;'> An error occured</p>";
        message = "<p style='color:red;'>" + e.getMessage() + "</p>";

    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p> <%= start %></p>
        <p> <%= countTo %></p>
        <% if(!message.equals("")){ %>
        <div style="background-color:pink; min-height:20px;"> <%= message %> </div>
        <% } else {%> <ul> <%= countList %></ul> <%}%>
    </body>
</html>
