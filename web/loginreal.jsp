<%-- 
    Document   : loginreal
    Created on : Feb 25, 2023, 8:50:44 PM
    Author     : user
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
  // Get the submitted username and password
  Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
String username = request.getParameter("username");
String password = request.getParameter("password");

session.setAttribute("usernamein", username);
session.setAttribute("passwordin", password);
try {
Class.forName("com.mysql.jdbc.Driver");
  

  // Connect to the MySQL database
   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpend?user=root&password=");

  // Query the database for the user credentials
   ps = con.prepareStatement("SELECT * FROM users WHERE username=? AND password=?");
  ps.setString(1, username);
  ps.setString(2, password);
   rs = ps.executeQuery();

  
  if (rs.next()) {
    // Get the user's role
    String role = rs.getString("role");

    // Redirect to the appropriate page based on the user's role
    if (role.equals("admin")) {
      response.sendRedirect("adminBest.jsp");
    } else if (role.equals("officer")) {
      response.sendRedirect("ViewSelect4.jsp");
    } else {
      // Invalid role, redirect to the failure page
      response.sendRedirect("failure.jsp");
    }
  } else {
    // Redirect to the failure page
    response.sendRedirect("failure.jsp");
}} catch (SQLException | ClassNotFoundException e) {
e.printStackTrace();
} finally {
// Close the database connection
if (rs != null) {
try {
rs.close();
} catch (SQLException e) {
e.printStackTrace();
}
}
if (ps != null) {
try {
ps.close();
} catch (SQLException e) {
e.printStackTrace();
}
}
if (con != null) {
try {
con.close();
} catch (SQLException e) {
e.printStackTrace();
}
}
}
%>
    </body>
</html>
