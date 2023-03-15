<%-- 
    Document   : databaseSelect3New
    Created on : Feb 15, 2023, 9:21:56 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String id = request.getParameter("idupdate");
    String list1 = request.getParameter("databaseUpdate");
    String list2 = request.getParameter("table");
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        
        
        PreparedStatement ps = con.prepareStatement("SELECT * FROM "+list2+" WHERE `" + "year_id" + "` = ?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
//            String name = rs.getString("id");
//            String age = rs.getString("antique_age_name");
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
        <p>Name: <%= request.getParameter("databaseUpdate") %></p>
        <p>NameID: <%= request.getParameter("idupdate") %></p>
        <p>Nametable: <%= request.getParameter("table") %></p>
    </head>
    <body>
        <h1>Hello World!</h1>
      <h1>Update Record</h1>
    <form action="update3.jsp" method="post">
                   
                    <label>Name:</label>
                    <input type="text" name="name" value=""><br><br>
                    <label>Age:</label>
                    <input type="text" name="age" value=""><br><br>
                    <input type="submit" value="Update">
                </form>
                    
                    
 <%
    Connection con2 = null;
    Statement stmt2 = null;
    ResultSet rec = null;
    
    
    //id
    Statement stmtID = null;
   ResultSet rsID = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con2 = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        stmt2 = con2.createStatement();
        rec=stmt2.executeQuery("SELECT * FROM " + list2 +" limit 0,150" );
        String table2 = "<table><tr>";
        
  int columns = rec.getMetaData().getColumnCount();
  for (int i = 1; i <= columns; i++) {
    table2 += "<th>" + rec.getMetaData().getColumnName(i) +"</th>";
    
  if(i==columns){table2 +="<th>" + "Update" + "</th>";}
  }
  table2 += "</tr>";
  while (rec.next()) {
    
    table2 += "<tr>";
    for (int i = 1; i <= columns; i++) {
      Object data = rec.getObject(i);
      table2 += "<td>" +data+ "</td>";
    
      if(i==columns){table2 +="<th></th>";}
    }
    table2 += "</tr>";
  }
  table2 += "</table>";
  
  
  
  String input2 = "<form action='update3.jsp' method='post'>";
  int columns2 = rec.getMetaData().getColumnCount();
  int columns3 = rec.getMetaData().getColumnCount();
  String strId = request.getParameter("idupdate");
  int idInt = Integer.parseInt(strId);
  
//  find id
ArrayList<String> columnNames = new ArrayList<>();
  int columns5 = rec.getMetaData().getColumnCount();
 for (int i2 = 1; i2 <= columns5; i2++) {
     
 columnNames.add(rec.getMetaData().getColumnName(i2));
     
 }
String sqlId = "SELECT * FROM "+ list2 +" WHERE year_id = " + 2;  
  stmtID = con2.createStatement();
    rsID = stmtID.executeQuery(sqlId);
    //ทดสอบ
 // Get a connection to the database
Connection contest = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
 

 String tableName = list2;
// String primaryKey = "id";
  
 out.println(columnNames+"55");
  int recordId = idInt;
  PreparedStatement stmt = contest.prepareStatement("SELECT * FROM " + tableName + " WHERE `" + columnNames.get(0) + "` = ?");
 stmt.setInt(1, recordId);
  ResultSet rsRecord = stmt.executeQuery();
 
  
  
  // Generate the HTML form
  String formHtml = "<form action='update.jsp' method='post'>";
  formHtml += "<input type='hidden' name='tableName' value='" + tableName + "'>";
  formHtml += "<input type='hidden' name='primaryKey' value='" + columnNames.get(0) + "'>";
  formHtml += "<input type='hidden' name='id' value='" + recordId + "'>";
  while (rsRecord.next()) {
    for (String columnName : columnNames) {
      String columnValue = rsRecord.getString(columnName);
      formHtml += "<label>" + columnName + ":</label>";
      formHtml += "<input type='text' name='" + columnName + "' value='" + columnValue + "'><br>";
    }
  }
  formHtml += "<input type='submit' value='Update'>";
  formHtml += "</form>";

  // Close the database connection
  rs.close();
  rsRecord.close();
  stmt.close();
  con.close();
  
  
  

  // Output the HTML form
  out.println(columnNames+"55"+formHtml);
 
 
 
 
 
 
 
 //ทดสอบ
  
  for (int i2 = 1; i2 <= columns2; i2++) {
     
  input2 +="<label>"+ rec.getMetaData().getColumnName(i2) +":</label>";
//  while (rec.next()) {
//      for (int i3 = 1; i3 <= columns3; i3++) {
//          if(i3==2){
//      Object data = rec.getObject(i3);
//  input2 +="<input type='text' value='"+data+"'><br>";
//          }
//      }
//  }
//  if(i2==columns2){input2 +="<input type='submit' value='Update'>";}
//  
  
  if (rsID.next()) {
  
  String column1 = rsID.getString(rec.getMetaData().getColumnName(i2));
  String column2 = rsID.getString(rec.getMetaData().getColumnName(i2+1));
  input2 +="<input type='text' value='"+column1+"'><br>";
  input2 +="<input type='text' value='"+column2+"'><br>";
  } else {
      out.println("No data found for ID ");
  }
  }
  input2 += "</form>";
 
 %>
  

  
  
  
  
  
  
  
  
    <%} catch (Exception e) {
        out.println(e.getMessage());
        e.printStackTrace();
    } 
%>
            </body>
            </html>
<%
        } else {
            out.println("Record not found");
        }
        con.close();
    } catch (Exception e) {
        out.println(e);
    }
%>
