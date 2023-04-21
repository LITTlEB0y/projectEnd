<%-- 
    Document   : insert3test
    Created on : Feb 23, 2023, 9:01:54 AM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
// Get the form data
request.setCharacterEncoding("UTF-8");
String list1 = request.getParameter("list1");
String list2 = request.getParameter("tableName");
ArrayList<String> columnNames = (ArrayList<String>) session.getAttribute("ViewdataListinsert");
String[] columnValues = new String[columnNames.size()];
String[] columnNameID = new String[columnNames.size()];
// Get the column values from the form inputs
for (int i = 0; i < columnNames.size(); i++) {
    String columnName = columnNames.get(i);
    columnNameID[i] = columnName;
    String columnValue = request.getParameter(columnName);
    out.println(columnValue);
    columnValues[i] = columnValue;
}
//check
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");

String sqlcheckId = "SELECT * FROM " + list2 + " WHERE ";

int c=0;
  for (int i = 0; i < columnNames.size(); i++) {
     
      if(!columnValues[i].equals("ว่าง")&&!columnValues[i].equals("ไพลิน  ปัญญาทะ")){
      if(columnValues[i].length()<18){
  if (c > 0) {
    sqlcheckId += " AND ";
  }
  
  
    sqlcheckId += columnNameID[i] + " = ?";
    
  
  c++;
  
      }}
      
  }

PreparedStatement stmtCheck = con.prepareStatement(sqlcheckId);
int c2 = 1;
    for (int i = 0; i < columnNames.size(); i++) {
        if(!columnValues[i].equals("ว่าง")&&!columnValues[i].equals("ไพลิน  ปัญญาทะ")){
      if(columnValues[i].length()<18){
   if (columnValues[i] != null) {
    stmtCheck.setString(c2, columnValues[i]);
  }else {
    stmtCheck.setString(c2, "null");
  } 
        
      c2++;
      //out.print(i+"**=++"+value.toString().length()+"//");
        }}
        
    }

ResultSet rs = stmtCheck.executeQuery();

// Check if id already exists in the table



if (rs.next()) {
 out.println("Error: ID already exists.");
}
else {
// Construct the SQL INSERT statement
String sql = "INSERT INTO " + list2 + " (";
for (int i = 0; i < columnNames.size(); i++) {
    sql += columnNames.get(i);
    if (i < columnNames.size() - 1) {
        sql += ", ";
    }
}
sql += ") VALUES (";
for (int i = 0; i < columnValues.length; i++) {
    sql += "?";
    if (i < columnValues.length - 1) {
        sql += ", ";
    }
}
sql += ")";

// Insert the data into the database
Connection conn = null;
PreparedStatement stmt = null;
try {
    conn = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
    stmt = conn.prepareStatement(sql);
    for (int i = 0; i < columnValues.length; i++) {
        stmt.setString(i + 1, columnValues[i]);
    }
    int numRowsAffected = stmt.executeUpdate();
    String path = "http://localhost:8084/login/ViewSelect4.jsp?list1="+list1+"&listtable="+list2+"";
    response.sendRedirect(path);
    
//    out.println(numRowsAffected + " rows inserted successfully.");
} catch (SQLException ex) {
    out.println(list2);
    out.println("Error: " + ex.getMessage());
    
} finally {
    
   stmt.close();
  conn.close();
}
}
%>
       
    </body>
</html>
