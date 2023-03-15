<%-- 
    Document   : CDSearch0_8engin
    Created on : Jan 16, 2023, 1:06:15 PM
    Author     : user
--%>
<!--test-->
<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBCollection"%>
<%@page import="com.mongodb.DB"%>
<%@page import="com.mongodb.Mongo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.mongodb.MongoClient" %>
<%@ page import="com.mongodb.client.MongoDatabase" %>
<%@ page import="com.mongodb.client.MongoCollection" %>
<%@ page import="org.bson.Document" %>
<%@ page import="java.util.ArrayList" %>
<%
  Mongo mg = new Mongo("localhost", 27017);
  DB database = mg.getDB("testruntime2");
  DBCollection collection = database.getCollection("run");
  BasicDBObject whereQuery = new BasicDBObject();
//  ArrayList<Document> results = (ArrayList<Document>) collection.find(new Document("keyword", "")).into(new ArrayList<>());
  whereQuery.put("keyword", request.getParameter("user"));
//  ArrayList<Document> results = (ArrayList<Document>) collection.find(new Document("keyword", "")).into(new ArrayList<>());
%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
  <p><%= result.get("keyword") %></p>
<% } %>
    </body>
</html>
