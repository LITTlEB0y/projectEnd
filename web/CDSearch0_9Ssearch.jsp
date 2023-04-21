<%-- 
    Document   : CDSearch0_9Ssearch
    Created on : Apr 1, 2023, 2:27:46 PM
    Author     : user
--%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Scanner"%>
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
        <%request.setCharacterEncoding("UTF-8");
         
         %>
        <h1>Hello World!<%=request.getParameter("q")%></h1>
    
<% 
   
            String strNew="";
            String strNew2="";
            String strNew3="";
            String strNew4="";
            String strNewin="";
           String strNewin2="";
                //connection to mongodb server 
                Mongo mg = new Mongo("localhost", 27017);
                DB db = mg.getDB("search");
                DBCollection collection = db.getCollection("mongo2");
                
                //---------------------------
                //BasicDBObject me = new BasicDBObject();
                //me.put("name", "55");
                //collection.insert(me);
                //--------------------------
//                BasicDBObject whereQuery = new BasicDBObject();
                String searchTerm = request.getParameter("q");

BasicDBObject whereQuery = new BasicDBObject();
whereQuery.put("$or", Arrays.asList(
    new BasicDBObject("PIC_DESC", new BasicDBObject("$regex", ".*" + searchTerm + ".*").append("$options", "i")),
    new BasicDBObject("POS_NAME_T", new BasicDBObject("$regex", ".*" + searchTerm + ".*").append("$options", "i")),
    new BasicDBObject("REG_HISTORY", new BasicDBObject("$regex", ".*" + searchTerm + ".*").append("$options", "i")),
    new BasicDBObject("POS_ROAD", new BasicDBObject("$regex", ".*" + searchTerm + ".*").append("$options", "i"))
    // add additional columns as needed
));

//                whereQuery.put("keyword", request.getParameter("user"));
                //BasicDBObject fields = new BasicDBObject();
                //fields.put("employeeId", 1);
                String strNumber = "10";
                int number = 0;
                if (strNumber != null) {
                    number = Integer.parseInt(strNumber);
                }
                if(number != 0){
//                out.print("Number of rows"+number);
                }
                DBCursor cursor = collection.find(whereQuery).limit(number);
                
                //เมื่อหาไม่เจอ-------------------
                DBCursor cursorNotfind = collection.find(whereQuery);
                while (cursorNotfind.hasNext()) {
                        BasicDBObject obj2 = (BasicDBObject) cursorNotfind.next();
                strNew4 =  obj2.toString();
                        //out.print(strNew4);
                }
                if(strNew4==""){
                    out.print("");
                   
                }
                //--------------------------
                
                
                if (request.getParameter("q") != null) {
                    while (cursor.hasNext()) {
                        BasicDBObject obj = (BasicDBObject) cursor.next();
                         //.replaceAll("[","").replaceAll("]","");
                        
                        try{
                        String t =  obj.get("PIC_NAME").toString(); 
                        
                      strNew="http://58.181.189.35/DATAFILE/PICTURE/HISSITE/PICTURE/"+t;
                        //out.print(strNew);
                        
                        String tt2[] = t.split("//");
                        }catch(Exception e){
                            strNew=null;
                            
                        }
                    try{
                        String t =  obj.get("__hissite").toString(); 
                        String tt[] = t.split(",");
                        String ttt = tt[7].replaceAll("\"","");
                        String tt2[] = ttt.split(":");
                        strNew2 = tt2[1];
                    }catch(Exception e){
                            strNew2=null;
                            
                        }  
                      
                        
                        try{
                        String t =  obj.get("REG_HISTORY").toString(); 
                        String t2 =  obj.get("REG_PRESENT").toString();
                        String t3 =  obj.get("POS_ROAD").toString();
                        strNew3 = t;
                        strNewin = t2;
                        strNewin2 = t3;
                        //out.print(strNew3);
                        //out.print(tt[7]);
                    }catch(Exception e){
                            strNew3=null;
                            
                        } 
                        
                       
                      
                        
//            String temp = "";
//            JSONParser parser = new JSONParser();
//            JSONObject jb = (JSONObject) parser.parse(temp);
//            String a1 = (String) jb.get("b1");
//            String a2 = (String) jb.get("b2"); 
//            String a3 = (String) jb.get("b3");
//            String a4 = (String) jb.get("b4"); 
                        
                        
//String str = obj.get("__hissite").get();
//         String[] strArray = new String[] {obj.get("__hissite")};


            
            %>
            
            
           <% if( strNew4 == null || request.getParameter("q") == null  ) { //ไม่แสดงตาราง%>
            
            <%}%><%else {%>
            <table border="1" style="width:80%;margin:auto">
            <tr>
            <br>
            <th style="width:20%;margin:auto">Name</th>
                <th>Image</th>
                <th>Information</th>
                
            </tr>
<%}%> 
            
            
            
            
            <td><%out.print(obj.get("PIC_DESC"));%></td>
            <%
                if( strNew != null) { %>
            <%--<td><%out.print(obj.get("__hissite").getClass());%></td>--%>
            <td><img src='<%=strNew%>'width="250" 
     height="260" ></td>
            
            <%} 
          %>
          
       
          
          <%
                if( strNew == null) { %>
            <%--<td><%out.print(obj.get("__hissite").getClass());%></td>--%>
            <td><img src='<%=strNew%>'width="80" 
     height="90" ></td>
            
            <%} 
          %>
          
          
          
          <% if( strNew2 != null) { %>
            <td><%out.print(strNew2);%></td>
            <%}
          %> 
          <% if( strNew3 != null) { %>
            <td><%out.print(strNew3+"<br><br>รายละเอียดสถานที่ : "+strNewin+"<br><br>ถนน : "+strNewin2);%></td>
            <%}
          %> 
        
          

          
          
          
          

            <%}
                }
            %>


        </table>
    </center>
</body>
</html>