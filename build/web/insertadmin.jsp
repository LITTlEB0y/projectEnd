<%-- 
    Document   : update3
    Created on : Feb 19, 2023, 7:04:44 PM
    Author     : user
--%>
<%@ page import="java.sql.*" %>
<%
   request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("ordersql");
   
    String age = session.getAttribute("idadmin").toString();
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/loginpend?user=root&password=");
        if (request.getParameter("submit") != null) {
    String ordersql = request.getParameter("ordersql");
    
    String sql = "INSERT INTO tableorder (ordersql) VALUES (?)";
    PreparedStatement statement = con.prepareStatement(sql);
    statement.setString(1, ordersql);
    int rowsInserted = statement.executeUpdate();
    String path = "./adminBest.jsp";
    response.sendRedirect(path);
    statement.close();
}

con.close();
    } catch (Exception e) {
        out.println(e);
      
  
  

    }
%>
<html>
<head>
	<title>Insert Data into MySQL Table</title>
</head>
<body>
	<form method="post" action="insertadmin.jsp">
		<label for="ordersql">Order SQL:</label>
		<input type="text" name="ordersql" id="ordersql" required><br>
		<input type="submit" name="submit" value="Submit">
	</form>
</body>
</html>
