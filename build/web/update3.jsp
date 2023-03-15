<%-- 
    Document   : update3
    Created on : Feb 19, 2023, 7:04:44 PM
    Author     : user
--%>
<%@ page import="java.sql.*" %>
<%
   request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String age = request.getParameter("age");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/fineart3?user=root&password=");
        PreparedStatement ps = con.prepareStatement("UPDATE age_antique SET id=?, antique_age_name=? WHERE id=2");
        ps.setString(1, name);
        ps.setString(2, age);
        
        int result = ps.executeUpdate();
        if (result > 0) {
            out.println("Record updated successfully");
        } else {
            out.println("Record not found or update failed");
        }
        con.close();
    } catch (Exception e) {
        out.println(e);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
