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
    
    String list1 = request.getParameter("databaseUpdate");
    String list2 = request.getParameter("table");
    
    try {
    Statement stmt1 = null;
    ResultSet rec1 = null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        con = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        stmt1 = con.createStatement();
        rec1=stmt1.executeQuery("SELECT * FROM " + list2 +" limit 0,150" );
        ArrayList<String> columnNamesnew = new ArrayList<>();
  int columns1 = rec1.getMetaData().getColumnCount();
  
 for (int i2 = 1; i2 <= columns1; i2++) {
     
 columnNamesnew.add(rec1.getMetaData().getColumnName(i2));
     
 }
        PreparedStatement ps = con.prepareStatement("SELECT * FROM "+list2);
        
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
//            String name = rs.getString("id");
//            String age = rs.getString("antique_age_name");
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
<!--        <p>Name: <%= request.getParameter("databaseUpdate") %></p>
        <p>NameID: <%= request.getParameter("idupdate") %></p>
        <p>Nametable: <%= request.getParameter("table") %></p>-->
    </head>
    <body>
        <style>
            
            body{
    color: white;
    background-color: #DAF7FF;
    padding: 20px;
    top:0;
    left:0;
    right:0;
    z-index: 10;
    background: #4261cf;
  background: -moz-linear-gradient(45deg, #9ca0a6 0%, #bac2cc 100%);
  background: -webkit-gradient(linear, left bottom, right top, color-stop(0%, #9ca0a6), color-stop(100%, #bac2cc));
  background: -webkit-linear-gradient(45deg, #9ca0a6 0%, #bac2cc 100%);
  background: -o-linear-gradient(45deg, #9ca0a6 0%, #bac2cc 100%);
  background: -ms-linear-gradient(45deg, #9ca0a6 0%, #bac2cc 100%);
  background: linear-gradient(45deg, #9ca0a6 0%, #bac2cc 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='$gradient-start', endColorstr='$gradient-end',GradientType=1 );
  color: white;
}
input[type=text], select {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 85%;
  background-color: #4CAF50;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  display: flex;
    justify-content: center;
    align-items: center;
    max-width: 100%;
    max-height: 100%;
    
}
label{
    color: black;
}
        </style>
      <h1>Insert Record</h1>
 
                    
                    
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
  
  
//  find id
ArrayList<String> columnNames = new ArrayList<>();
  int columns5 = rec.getMetaData().getColumnCount();
  
 for (int i2 = 1; i2 <= columns5; i2++) {
     
 columnNames.add(rec.getMetaData().getColumnName(i2));
 //ใส่array
     session.setAttribute("dataListinsert", columnNames);
 }
String sqlId = "SELECT * FROM "+ list2 ;  
  stmtID = con2.createStatement();
    rsID = stmtID.executeQuery(sqlId);
    //ทดสอบ
 // Get a connection to the database
Connection contest = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
 

 String tableName = list2;
// String primaryKey = "id";
  

  
  PreparedStatement stmt = contest.prepareStatement("SELECT * FROM " + tableName );
 
  ResultSet rsRecord = stmt.executeQuery();
 

  // Generate the HTML form
  String formHtml = "<div><form action='insert3test.jsp' method='post'>";
  
  
  
  
    for (String columnName : columnNames) {
      
      
      formHtml += "<label>" + columnName + "</label>";
      
      formHtml += "<br><input type='text' name='" + columnName + "'>";
      
      
    }
  
  formHtml += "<input type='submit' value='Insert'>";
  formHtml += "</form></div>";
  //sent data

session.setAttribute("list1", new String(list1));
session.setAttribute("list2", new String(list2));
  // Close the database connection
  rs.close();
  rsRecord.close();
  stmt.close();
  con.close();
  
  
  

  // Output the HTML form
  out.println(formHtml);
 
 
 
 
 
 
 
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
//      out.println("No data found for ID ");
  }
  }
  input2 += "</form>";
 
 %>
  

  
  
  
  
  
  
  
  
    <%} catch (Exception e) {
//        out.println(e.getMessage());
        e.printStackTrace();
    } 
%>
            </body>
            </html>
<%
        } else {
//            out.println("Record not found");
        }
        con.close();
    } catch (Exception e) {
//        out.println(e);
    }
%>
