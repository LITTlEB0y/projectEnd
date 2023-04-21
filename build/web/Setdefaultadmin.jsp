<%-- 
    Document   : Setdefaultadmin
    Created on : Apr 3, 2023, 3:48:56 PM
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
  // Construct the SQL UPDATE statement
  String sql = "UPDATE config SET `default` = 0";

  // Execute the statement using a JDBC connection
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/converterdb?user=root&password=");
  Statement stmt = conn.createStatement();
  stmt.executeUpdate(sql);
  
  
%>

<%
  // Get the id value from the request parameters
  int id = Integer.parseInt(request.getParameter("id"));

  // Construct the SQL UPDATE statement
  String sql2 = "UPDATE config SET `default` = CASE WHEN id = ? THEN 1 ELSE 0 END WHERE id = ?";

  // Execute the statement using a JDBC connection
  Connection conn2 = DriverManager.getConnection("jdbc:mysql://localhost/converterdb?user=root&password=");
  PreparedStatement pstmt = conn2.prepareStatement(sql2);
  pstmt.setInt(1, id);
  pstmt.setInt(2, id);
  pstmt.executeUpdate();
  
  String path = "./adminBest.jsp";
  response.sendRedirect(path);
%>



<p>Data updated successfully.</p>
    </body>
</html>
