<%-- 
    Document   : mongobdSearch
    Created on : Oct 5, 2022, 10:06:57 AM
    Author     : user
--%>







<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mongodb.client.MongoCursor"%>
<%@page import="com.mongodb.*"%>


import com.mongodb.*;

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            






        try{
            DBCollection table;
DB db;
            Mongo m=new MongoClient("localhost",27017);
db=m.getDB("mydb");
String searchText="kampun";
DBCollection collection=db.getCollection("movie");
DBObject searchCmd = new BasicDBObject();
searchCmd.put("text",collection);
searchCmd.put("search",searchText);

//DBCursor cursor = collection.find(searchCmd);
DBCursor cursor = collection.find().limit(5);

while(cursor.hasNext())
{   
    BasicDBObject obj = (BasicDBObject) cursor.next();
      //out.print(cursor.next()+""); //print all object
      System.out.print("tefsdj");
      
    //System.out.println(cursor.next());
}
        }catch(Exception e){
            out.println("Error"+e.getMessage());
        }


        %>

                
        <h1>Hello Worlddafsdfew!</h1>
    
    </body>
</html>
