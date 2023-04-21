<%-- 
    Document   : ViewUpdate2
    Created on : Apr 14, 2023, 2:13:59 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.mongodb.util.JSON"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="org.json.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
  /* Style the form container */
  .form-container {
    width: 50%;
    margin: 0 auto;
    padding: 20px;
    background-color: #f2f2f2;
    border-radius: 10px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.75);
  }
  
  /* Style the form inputs */
  label, textarea {
    display: block;
    margin-bottom: 10px;
    font-size: 18px;
    font-weight: bold;
    color: #333;
  }
  
  textarea {
    width: 97%;
    max-width: 100%;
    height: 100px;
    padding: 10px;
    font-size: 16px;
    border-radius: 5px;
    border: 2px solid #ccc;
  }
  
  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 18px;
  }
  
  input[type="submit"]:hover {
    background-color: #3e8e41;
  }
</style>
    <h1>Update Record</h1>
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
  String sqlQuery = "SELECT * FROM " + list2 + " WHERE ";
  
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
  
  sqlQuery += " LIMIT 1";
 
Connection connection = null;
PreparedStatement stmt = null;
ResultSet rs = null;
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
    rs = stmt.executeQuery();
    ResultSetMetaData rsmd = rs.getMetaData();
    int columnCount = rsmd.getColumnCount();
    ArrayList<String> columnNames = new ArrayList<>();
    for (int c = 1; c <= columnCount; c++) {
        String columnName = rsmd.getColumnName(c);
        columnNames.add(columnName);
        
    }
    session.setAttribute("dataListView", columnNames);
//out.println(stmt);
// Generate the HTML form
  String formHtml = "<div class='form-container'><form action='ViewUpdate3test.jsp' method='post'>";
  formHtml += "<input type='hidden' name='tableName' value='" + list2 + "'>";
formHtml += "<input type='hidden' name='list1' value='" + list1 + "'>";
  formHtml += "<input type='hidden' name='id' value='" + data + "'>";
  while (rs.next()) {
    for (String columnName : columnNames) {
      String columnValue = rs.getString(columnName);
      formHtml += "<label>" + columnName + ":</label>";
      
      formHtml += "<textarea name='" + columnName + "'>" + columnValue + "</textarea><br>";
      
    }
  }
  formHtml += "<input type='submit' value='Update'>";
  formHtml += "</form></div>";

rs.close();

  out.println(formHtml);
//        int rowsAffected = stmt.executeUpdate();
 //String path = "http://localhost:8084/login/ViewSelect4.jsp?list1="+list1+"&listtable="+list2+"";
 //response.sendRedirect(path);
  

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