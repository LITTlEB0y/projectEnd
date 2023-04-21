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
    
//    String list1 = request.getParameter("databaseUpdate");
//    String list2 = request.getParameter("table");
    String list1 = request.getParameter("list1");
   String list2 = request.getParameter("table");
 
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
<!--        <p>Name: <%= request.getParameter("databaseUpdate") %></p>
        <p>NameID: <%= request.getParameter("idupdate") %></p>
        <p>Nametable: <%= request.getParameter("table") %></p>-->
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

    </head>
    <body>
         
        
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
      
        


  
  
//  find id
ArrayList<String> columnNames = new ArrayList<>();
  int columns5 = rec.getMetaData().getColumnCount();
  
 for (int i2 = 1; i2 <= columns5; i2++) {
     
 columnNames.add(rec.getMetaData().getColumnName(i2));
 //ใส่array
     session.setAttribute("ViewdataListinsert", columnNames);
 }



  

  

 

  // HTML form
  String formHtml = "<div class='form-container'><form action='ViewInsert3test.jsp' method='post'>";
  
  
  formHtml += "<input type='hidden' name='tableName' value='" + list2 + "'>";
formHtml += "<input type='hidden' name='list1' value='" + list1 + "'>";
  
    for (String columnName : columnNames) {
      
      
      formHtml += "<label>" + columnName + "</label>";
      
      
      formHtml += "<textarea name='" + columnName + "'>"+"</textarea><br>";
      
    }
  
  formHtml += "<input type='submit' value='Insert'>";
  formHtml += "</form></div>";
 

  // Close the database connection
 
  rec.close();
  stmt2.close();

  
  
  

  // Output the HTML form
  out.println(formHtml);
 
 
 
 
 
 
 
 
 
 %>
  


  
  
  
  
  
  
  
  
    <%} catch (Exception e) {
//        out.println(e.getMessage());
        e.printStackTrace();
    } 
%>
            </body>
            </html>

