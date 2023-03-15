<%-- 
    Document   : deleteadmin
    Created on : Mar 1, 2023, 6:14:14 PM
    Author     : user
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
  // Get the id value from the request parameters
  int id = Integer.parseInt(request.getParameter("id"));

  // Construct the SQL DELETE statement
  String sql = "DELETE FROM tableorder WHERE id = " + id;

  // Execute the statement using a JDBC connection
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/loginpend?user=root&password=");
  Statement stmt = conn.createStatement();
  stmt.executeUpdate(sql);
  String path = "./adminBest.jsp";
    response.sendRedirect(path);
%>

<p>Data deleted successfully.</p>
    </body>
</html>
