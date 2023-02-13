<%-- 
    Document   : databaseSelect
    Created on : Jan 14, 2023, 9:39:17 PM
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
    <%String[] select=new String[1];%>  
    <body>
        <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
</style>
        <form action="databaseSelect2.jsp">
    <center>
        
        <select name="list1" id="list1">
            <option>Select</option>
            <%
   
   Connection conn = null;
   Statement stmt = null;
   
   

   try{
      Class.forName("com.mysql.jdbc.Driver");

//     out.println("Connecting to database...");
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+"?user=root&password=");

//      out.println("Creating statement...");
      stmt = conn.createStatement();
      String sql;
      sql = "SHOW DATABASES";
      ResultSet rs = stmt.executeQuery(sql);

      while(rs.next()){
         String dbname = rs.getString("Database");
         %>
    <option><%=rs.getString("Database")%></option> 
   
<%
//         out.println("dbname: " + dbname);
         
      }
      select[0]=request.getParameter("list1");

      rs.close();
      stmt.close();
      conn.close();
   }catch(SQLException se){
      se.printStackTrace();
   }catch(Exception e){
      e.printStackTrace();
   }finally{
      try{
         if(stmt!=null)
            stmt.close();
      }catch(SQLException se2){
      }
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }
   }






            %>
        </select>
     
<!--        table select-->
        
        
        
        <button type="submit">Submit</button>
    </center>
          </form> 
        
        
        
        
        
<%
        ////////////////////
        String list1 = request.getParameter("list1");
        
        out.print("<script> document.getElementById('list1').value = '"+list1+"'; </script>");
        ////////////////////
%>


<script>
function myFunction ()
{
    var listtable = document.getElementById('listtable').value;
    var current_page = window.location.href;
    var new_page = current_page+"&listtable="+listtable;
    alert(new_page+'');
    //document.getElementById('listtable').value = '"+listtable+"';
    window.location.href = new_page;
    
}
</script>
    <%
        String list2 = request.getParameter("listtable");
    out.print(list2);
    
    %>
        <script> document.getElementById('listtable').value = list2;</script>
    
    <!--<form action="databaseSelect2.jsp">-->
    <select name="listtable" id="listtable" value="list2">
            <option value=list2>Select</option>
    <%
        

        
        
        
                
  
        //   table
   Connection conntable = null;
   Statement stmttable = null;
ResultSet rstable=null;
String database="";
String table="";
try {

conntable = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+select[0]+"?user=root&password=");
database=request.getParameter("list1");
stmttable = conntable.createStatement();
      String querytable = "SHOW TABLES";
      rstable = stmttable.executeQuery(querytable);
      
      
      while(rstable.next()) { 
         String tablename = rstable.getString(1);
         out.println("tablename: " + tablename);
      
%>
<option><%=rstable.getString(1)%></option>

<%
  }  
} catch (Exception e) {
        e.printStackTrace();
        
    }%></select>
       
<!--        table select-->
        
        
        <button onclick="myFunction()">Click me</button>
<!--<button type="submit">Submittable</button>-->    
        
   <!--</form>-->    


<%out.println(select[0]);%> 
<%out.println(select[0]);%> 
<%out.println(select[0]);%> 
<h1>Hello World! ${param.list1} ${param.listtable}</h1>
        
    <%
    Connection con2 = null;
    Statement stmt2 = null;
    ResultSet rec = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con2 = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
        stmt2 = con2.createStatement();
        rec=stmt2.executeQuery("SELECT * FROM " + list2 +" limit 0,150" );
        String table2 = "<table><tr>";
  int columns = rec.getMetaData().getColumnCount();
  for (int i = 1; i <= columns; i++) {
    table2 += "<th>" + rec.getMetaData().getColumnName(i) + "</th>";
  }
  table2 += "</tr>";
  while (rec.next()) {
    table2 += "<tr>";
    for (int i = 1; i <= columns; i++) {
      Object data = rec.getObject(i);
      table2 += "<td>" + data + "</td>";
    }
    table2 += "</tr>";
  }
  table2 += "</table>";%>
  <%= table2 %>
    <%} catch (Exception e) {
        out.println(e.getMessage());
        e.printStackTrace();
    } 
%>
       


    </body>
</html>
