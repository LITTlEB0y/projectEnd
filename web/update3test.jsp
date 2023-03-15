<%-- 
    Document   : update3test
    Created on : Feb 22, 2023, 10:20:08 PM
    Author     : user
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.catalina.tribes.util.Arrays"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
 
<%
 request.setCharacterEncoding("UTF-8");
 //get value
int idUpdate = Integer.parseInt(session.getAttribute("idUpdate").toString());
String list1 = session.getAttribute("list1").toString();
String list2 = session.getAttribute("list2").toString();



ArrayList<String> dataList = (ArrayList<String>) session.getAttribute("dataList");
ArrayList<String> columnsList = new ArrayList<>();
ArrayList<String> columnsvalueList = new ArrayList<>();
String[] columns;
String[] columnsvalue;
for(String item : dataList) {
//        out.println(item);
        columnsList.add(item);
//        out.println( request.getParameter(item));
        columnsvalueList.add(request.getParameter(item));
        
//        out.println("IDkampun:"+list1);
    }
columns = columnsList.toArray(new String[columnsList.size()]);
columnsvalue = columnsvalueList.toArray(new String[columnsvalueList.size()]);
String[] columnUpdates =columns;
String[] columnvalueUpdates =columnsvalue;
int id = idUpdate;
StringBuilder sql = new StringBuilder("UPDATE "+list2+" SET ");
for (int i = 0; i < columnUpdates.length; i++) {
    sql.append(columnUpdates[i]).append(" = '").append(columnvalueUpdates[i]).append("'");
    if (i < columnUpdates.length - 1) {
        sql.append(", ");
    }
}
sql.append(" WHERE "+columnUpdates[0]+" = ").append(id);
    try {
        Class.forName("com.mysql.jdbc.Driver");
        
        
        
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
     Statement statement = con.createStatement();
    int rowsUpdated = statement.executeUpdate(sql.toString());

String path = "http://localhost:8084/login/databaseSelect3.jsp?list1="+list1+"&listtable="+list2+"";
    response.sendRedirect(path);
//    out.println(rowsUpdated + " rows updated");
    } catch (Exception e) {
//        out.println(e);
    }
%>
<% for (String item : columns) { %>
    <li><%= item %></li>
  <% } %>
    <% for (String item : columnsvalue) { %>
    <li><%= item %></li>
  <% } %>
        
    </body>
</html>
