<%-- 
    Document   : update3test
    Created on : Feb 22, 2023, 10:20:08 PM
    Author     : user
--%>

<%@page import="org.json.JSONObject"%>
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

String data = request.getParameter("id");
String list1 = request.getParameter("list1");
String list2 = request.getParameter("tableName");

JSONObject jsonObject = new JSONObject(data);

ArrayList<String> dataList = (ArrayList<String>) session.getAttribute("dataListView");
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

StringBuilder sql = new StringBuilder("UPDATE "+list2+" SET ");
for (int i = 0; i < columnUpdates.length; i++) {
    sql.append(columnUpdates[i]).append(" = '").append(columnvalueUpdates[i]).append("'");
    if (i < columnUpdates.length - 1) {
        sql.append(", ");
    }
}
sql.append(" WHERE ");
String sqlString = sql.toString();
int i = 0;
  for (String key : jsonObject.keySet()) {
     
      if(!jsonObject.get(key).toString().equals("ว่าง")&&!jsonObject.get(key).toString().equals("ไพลิน  ปัญญาทะ")){
      if(jsonObject.get(key).toString().length()<18){
  if (i > 0) {
    sqlString += " AND ";
    
  }
  
  
    sqlString += key + " = ?";
   
  
  i++;
  
      }}
      
  }
Connection connection = null;
PreparedStatement stmt = null;
//ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost/"+list1+"?user=root&password=");
   
    stmt = connection.prepareStatement(sqlString);
        
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
     int rs = stmt.executeUpdate();
     
     out.println(stmt);
out.println(rs);
String path = "http://localhost:8084/login/ViewSelect4.jsp?list1="+list1+"&listtable="+list2+"";
    response.sendRedirect(path);
//    out.println(rowsUpdated + " rows updated");
    } catch (Exception e) {
        out.println(e);
    }
%>



        
    </body>
</html>
