<%-- 
    Document   : CDSearch
    Created on : Nov 2, 2022, 10:39:22 AM
    Author     : user
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.Mongo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <FORM action="CDSearch0_2.jsp" METHOD="POST">
        <input type="text" name="user"/>
        <input type="submit"/>
        </FORM>
        <%request.setCharacterEncoding("UTF-8");%>
    <center>
        <table border="1">
            <tr>
                <th>name</th>
                <th>image</th>
                <th>information</th>
            </tr>
           
            <%
       //connection to mongodb server 
  	Mongo mg = new Mongo("localhost", 27017);
  	DB db = mg.getDB("testruntime2");
	DBCollection collection = db.getCollection("run");
	//---------------------------
        //BasicDBObject me = new BasicDBObject();
	//me.put("name", "55");
	//collection.insert(me);
        //--------------------------
    BasicDBObject whereQuery = new BasicDBObject();
    
    whereQuery.put("keyword", request.getParameter("user"));
    //BasicDBObject fields = new BasicDBObject();
    //fields.put("employeeId", 1);
	DBCursor cursor = collection.find(whereQuery);
if(request.getParameter("user")!=null)  {      
while(cursor.hasNext())
{	DBObject o = cursor.next();
//String str = obj.get("__hissite").get();
//         String[] strArray = new String[] {obj.get("__hissite")};
            System.out.println(o.toString());
           %>
           
          


<%}}
%>
                      
             
        </table>
    </center>
    </body>
</html>
