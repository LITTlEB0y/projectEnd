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
        <form action="databaseSelect.jsp">
    <center>
        
        <select name="list1">
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
        </form>
<!--        table select-->
        
        
        
        <button type="submit">Submit</button>
    </center>
    <form action="databaseSelect.jsp">
    <select name="listtable">
            <option>Select</option>
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
        
        
        
<button type="submit">Submittable</button>    
        
   </form>    
<!--        เอาค่าdatabase -->

<%out.println(select[0]);%> 
<%out.println(select[0]);%> 
<%out.println(select[0]);%> 
<h1>Hello World! ${param.list1} ${param.listtable}</h1>
        
        

    </body>
</html>
