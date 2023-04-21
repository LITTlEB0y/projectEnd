<%-- 
    Document   : databasedelete
    Created on : Feb 23, 2023, 12:53:46 AM
    Author     : user
--%>

<%@page import="com.mongodb.util.JSON"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="org.json.simple.JSONValue"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.ArrayList"%>
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
             String list1 = request.getParameter("databaseUpdate");
    String list2 = request.getParameter("table");
            
    
    
    String id = request.getParameter("idupdate");
    String longData = request.getParameter("longData");
   
   
 
   out.print(id); 
   out.print(longData); 
    try {
    Statement stmt1 = null;
    ResultSet rec1 = null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        con = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        stmt1 = con.createStatement();
        rec1=stmt1.executeQuery("SELECT * FROM " + list2 +" limit 0,150" );
        
  int columns1 = rec1.getMetaData().getColumnCount();
  String recordId1 = id;
  ArrayList<String> columnNames = new ArrayList<>();
 for (int i2 = 1; i2 <= columns1; i2++) {
     
 columnNames.add(rec1.getMetaData().getColumnName(i2));
     
 }
       
        Class.forName("com.mysql.cj.jdbc.Driver");
Connection condelete = null;

    condelete = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
    String sql = "DELETE FROM " + list2 + " WHERE " + columnNames.get(0) + " = ?";
    PreparedStatement stmt = condelete.prepareStatement(sql);
    stmt.setString(1, recordId1);
  int rowsAffected = stmt.executeUpdate();
// String path = "http://localhost:8084/login/databaseSelect3.jsp?list1="+list1+"&listtable="+list2+"";
//    response.sendRedirect(path);
  

// Close the database connection
  stmt.close();
  condelete.close();
    out.println();
} catch (Exception e) {
        out.println(e);
    }
%>
        
    </body>
</html>
