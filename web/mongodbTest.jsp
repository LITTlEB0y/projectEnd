<%-- 
    Document   : mongodbTest
    Created on : Oct 5, 2022, 3:32:26 PM
    Author     : user
--%>

<%@page import="com.mongodb.*"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.Mongo"%>
<%@page import="com.mongodb.DBCursor"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
        
 
DB db;        
Mongo m=new MongoClient("localhost",27017);
db=m.getDB("testruntime");
String searchText="วัด";
DBCollection collection=db.getCollection("time");
DBObject searchCmd = new BasicDBObject();
searchCmd.put("text",collection);
searchCmd.put("search",searchText);    
    BasicDBObject whereQuery = new BasicDBObject();
    whereQuery.put("keyword", "วัด");

    BasicDBObject fields = new BasicDBObject();
    fields.put("UserName", 1);

    //DBCursor cursor = collection.find(whereQuery, fields).limit(100);

    DBCursor cursor = collection.find().limit(5);
    cursor.sort(new BasicDBObject("my_date", -1));              //1 = order by min to max, -1 order by max to min
    //DBCursor cursor = collection.find(whereQuery);           //where object
    //DBCursor cursor = collection.find(whereQuery, fields); //where object and column
    //DBCursor cursor = collection.find();                               //all select

    while(cursor.hasNext())
    {
      BasicDBObject obj = (BasicDBObject) cursor.next();
      //out.print(cursor.next()+""); 

//print all object
      out.print(obj.get("UserName")  +" | ");
      out.print(obj.get("my_date") +"");
    }


        %>
        <h1>Hello World!</h1>
    </body>
</html>
