<%-- 
    Document   : testCon
    Created on : Sep 21, 2022, 4:01:20 PM
    Author     : user
--%>
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
        Connection con = null;
                try{
                    //databast connection
                    Class.forName("com.mysql.jdbc.Driver");
                    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/jspt"+"?user=root&password=12");
                    
                    if(con !=null){
                        out.println("Database con");
                        
                    }else {
                        out.println("Database con failed");
                    }
                }catch(Exception e){
           out.println(e.getMessage());
            e.printStackTrace();
            }
                    %>
    </body>
</html>
