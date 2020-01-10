<%-- 
    Document   : vehiclemakes
    Created on : 10-Jan-2020, 10:02:43 AM
    Author     : joe
--%>

<%@page import="com.nbcc.wmad.vehiculemakes.Make"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    Make make = null;
    Make queryMake = null;
    if (id != null) {
        make = new Make();
        queryMake = make.getMake(Integer.parseInt(id));
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            *{padding:20px;}
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <% if (queryMake != null) {%>
        <%= queryMake.getId()%><br/>
        <%= queryMake.getName()%><br/>
        <a href="vehiclemakes.jsp">Back to list </a>
        <% } else { %>
        No vehicle make found" 
        <% }%>
    </body>
</html>
