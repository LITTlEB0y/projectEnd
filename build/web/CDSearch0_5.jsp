<%-- 
    Document   : CDSearch
    Created on : Nov 2, 2022, 10:39:22 AM
    Author     : user
--%>



<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
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
        <FORM action="CDSearch0_5.jsp" METHOD="POST">
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

            <% String strNew="";
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
                if (request.getParameter("user") != null) {
                    while (cursor.hasNext()) 
                    {
                        BasicDBObject obj = (BasicDBObject) cursor.next();
                        
                        String t =  obj.get("__hissite").toString(); //.replaceAll("[","").replaceAll("]","");
                        
                        
                        String tt[] = t.split("//");
                        String t2[] = tt[1].split(",");
                         strNew = t2[0].replaceAll("\"","");
                      strNew="http://"+strNew;
                        out.print(strNew);
                        
                        //JSONParser jsonParser = new JSONParser();
                        
                        //JSONObject json = (JSONObject) jsonParser.parse( obj.toString() );      
                         
                      
                       
                    }

                }
            %>

<img src='<%=strNew%>' alt="Girl in a jacket">
        </table>
    </center>
</body>
</html>
