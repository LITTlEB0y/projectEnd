<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.Mongo"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
  	Mongo mg = new Mongo("localhost", 27017);
  	DB db = mg.getDB("mydb");
	DBCollection collection = db.getCollection("movie");
	BasicDBObject me = new BasicDBObject();
	me.put("name", "pubate");
	collection.insert(me);
	DBCursor cursor = collection.find();
	System.out.println(cursor.next());
%>
        <form action="./search.jsp">
            <input type="text" name="user"/>
            <input type="submit"/>
            
        </form>
        <h1>Hello User!</h1>
    </body>
</html>