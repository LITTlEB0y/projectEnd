<%-- 
    Document   : databasedelete
    Created on : Feb 23, 2023, 12:53:46 AM
    Author     : user
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.mongodb.util.JSON"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="org.json.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <%
            request.setCharacterEncoding("UTF-8");
             String list1 = request.getParameter("list1");
    String list2 = request.getParameter("table");
            
    String data = request.getParameter("data");
    if(data != null) {
    data = data.replaceAll("(?i)null", "ว่าง");
    
}

    
 
  JSONObject jsonObject = new JSONObject(data);
  String sqlQuery = "DELETE FROM " + list2 + " WHERE ";
  
int i = 0;
  for (String key : jsonObject.keySet()) {
     
      if(!jsonObject.get(key).toString().equals("ว่าง")&&!jsonObject.get(key).toString().equals("ไพลิน  ปัญญาทะ")){
      if(jsonObject.get(key).toString().length()<18){
  if (i > 0) {
    sqlQuery += " AND ";
  }
  
  
    sqlQuery += key + " = ?";
    
  
  i++;
  
      }}
      
  }

Connection connection = null;
PreparedStatement stmt = null;
    try {
    
       
Class.forName("com.mysql.cj.jdbc.Driver");

    
    connection = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
   
    stmt = connection.prepareStatement(sqlQuery);
    
    i = 1;
    for (Object value : jsonObject.toMap().values()) {
        if(!value.toString().equals("ว่าง")&&!value.toString().equals("ไพลิน  ปัญญาทะ")){
        if(value.toString().length()<18){
   if (value.toString() != null) {
    stmt.setString(i, value.toString());
  }else {
    stmt.setString(i, "null");
  } 
        
      i++;
      //out.print(i+"**=++"+value.toString().length()+"//");
        }}
        
    }
out.println(stmt);
        int rowsAffected = stmt.executeUpdate();
 String path = "http://localhost:8084/login/ViewSelect4.jsp?list1="+list1+"&listtable="+list2+"";
 response.sendRedirect(path);
  

// Close the database connection
  
 // out.println(rowsAffected + " rows deleted");
} catch (Exception e) {
        out.println(e);
    }finally {
    if (stmt != null) {
      stmt.close();
    }
    if (connection!= null) {
      connection.close();
    }
  }
%>
        
    </body>
</html>
