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
String[] columns = {"column1", "column2", "column3"}; // replace with your actual column names
String[] values = {"value1", "value2", "value3"}; // replace with the new values for each column
int id = 1; // replace with the ID of the row you want to update

StringBuilder sql = new StringBuilder("UPDATE table_name SET ");
for (int i = 0; i < columns.length; i++) {
    sql.append(columns[i]).append(" = '").append(values[i]).append("'");
    if (i < columns.length - 1) {
        sql.append(", ");
    }
}
sql.append(" WHERE id = ").append(id);
    try {
        Class.forName("com.mysql.jdbc.Driver");
        
        
        
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost/fineart3?user=root&password=");
     Statement statement = con.createStatement();
    int rowsUpdated = statement.executeUpdate(sql.toString());
    System.out.println(rowsUpdated + " rows updated");
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
