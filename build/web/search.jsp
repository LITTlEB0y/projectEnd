<%-- 
    Document   : search
    Created on : Sep 21, 2022, 2:45:23 PM
    Author     : user
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <table border="1">
            <tr>
                <th>name</th>
                <th>information</th>
            </tr>
            <%
                Connection con = null;
                try{
                    //databast connection
                    Class.forName("com.mysql.jdbc.Driver");
                    con =DriverManager.getConnection("jdbc:mysql://localhost:3306/jspt"+"?user=root&password=");
                    
                    if(con !=null){
                        out.println("Database con");
                        
                    }else {
                        out.println("Database con failed");
                    }
                       // above statement 
                    Statement st = con.createStatement();
                    //get iput form user
                    
                    String user = request.getParameter("user");
                    String sqlStr ="select * from user where name='"+user+"'";
                    ResultSet rs = st.executeQuery(sqlStr);
                    while(rs.next()){
                        %>
                        <tr>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("information")%></td>
                        </tr>
                        <%}
                 
            }catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
            }
             
                
                %>
        </table>
    </center>
    </body>
</html>
