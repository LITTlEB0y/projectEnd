<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Retrieve Order by ID</title>
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
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 20%;
  background-color: #4CAF50;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input.delete{
    width: 20%;
  background-color: red;
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
}
label{
    color: black;
}
p{
    color: black;
}
button{
    width: 20%;
  background-color: #4CAF50;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
        </style>
        <h1>Retrieve Order by ID</h1>

  <%
      // Get the submitted username and password
  Connection con = null;
    // Connect to the MySQL database
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpend?user=root&password=");

    // Query the database for the list of IDs
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT id FROM tableorder");

    // Create a drop-down list with the list of IDs
    out.print("<form method=\"post\">");
    out.print("<select name=\"id\">");
    while (rs.next()) {
      out.print("<option value=\"" + rs.getString("id") + "\">" + rs.getString("id") + "</option>");
    }
    out.print("</select>");
    out.print("<input type=\"submit\" value=\"Retrieve Order\">");
    out.print("</form>");

    // If the form has been submitted, retrieve and display the order value
    if (request.getMethod().equals("POST")) {
      String id = request.getParameter("id");
      session.setAttribute("idadmin", new String(id));
      PreparedStatement ps = con.prepareStatement("SELECT `ordersql` FROM tableorder WHERE id=?");
      ps.setString(1, id);
      rs = ps.executeQuery();
      if (rs.next()) {
        out.print("<p>Order for ID " + id + ": " + rs.getString("ordersql") + "</p>");
        String inputupdateadmin = "<form action='updateadmin.jsp' method='post'>";
        inputupdateadmin +="<label>Order:</label>";
        inputupdateadmin +="<input type='text' name='ordersql' value='"+rs.getString("ordersql")+"'><br>";
        inputupdateadmin +="<input type='submit' value='Update'>";
        inputupdateadmin += "</form>";
        
        String buttonInsert="<form method='get' action='insertadmin.jsp'>";
        buttonInsert +="<button type='submit'>Insert</button>";
        buttonInsert +="</form>";
        
        String buttonDelete = "<form action='deleteadmin.jsp' method='post'>" +
                      "<input type='hidden' name='id' value='" + id + "'>" +
                      "<input type='submit' class='delete' value='Delete'>" +
                      "</form>";
        
        
        
        out.print(inputupdateadmin);
        out.print(buttonInsert);
        out.print(buttonDelete);
      } else {
        out.print("<p>Invalid ID</p>");
      }
      ps.close();
    }

    // Close the database connection
    rs.close();
    stmt.close();
    con.close();
  %>
    </body>
</html>